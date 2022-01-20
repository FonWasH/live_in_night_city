
local GameHUD = require("modules/utils/GameHUD")
local GameUI = require("modules/utils/GameUI")
local MockDB = require("modules/utils/MockDB")
local Locale = require("modules/utils/Localization")

local POS = require("data/Positions")
local EFFECTS = require("data/EffectsID")
local CONFIG = require("config/Config")

local MetaSystem = {
    enable = false,
    cleanEffects = false,
    player = {
        total = {
            thirst = CONFIG.totalMax,
            hunger = CONFIG.totalMax,
            fatigue = CONFIG.totalMax
        },
        stack = {
            thirst = 0,
            hunger = 0,
            fatigue = 0
        },
        regen = {
            thirst = false,
            hunger = false,
            fatigue = false
        },
        step = {
            thirst = 0,
            hunger = 0,
            fatigue = 0
        },
        visual = {
            thirst = false,
            hunger = false,
            fatigue = false
        }
    },
    state = {
        stepChange = false,
        hasSlept = false,
        hasDrunkAlcohol = false,
        sprinting = false,          -- wip
        hasMadeLove = false         -- wip
    }
}

local function createWarningMsg(text)
    local msg = ""
    local warning = false

    for need, stepLevel in pairs(MetaSystem.player.step) do
        if stepLevel > 0 then
            warning = true
            msg = msg .. text.step[need][stepLevel]
        end
    end

    if warning then
        msg = string.sub(msg, 1, string.len(msg) - 2)
        GameHUD.ShowWarning(msg, CONFIG.warningDuration)
    end
end

local function addTotalNeed(need, value)
    MetaSystem.player.total[need] = MetaSystem.player.total[need] + value

    if MetaSystem.player.total[need] <= 0 then
        MetaSystem.player.total[need] = 0
    end

    if MetaSystem.player.total[need] >= CONFIG.totalMax then
        MetaSystem.player.total[need] = CONFIG.totalMax
    end
end

local function addStepEffect(need, step)
    for _, stat in pairs(CONFIG.step[LiNC.settings.difficulty][need].stats) do
        Game.AddStatModifier(stat.name, stat.step[step], stat.type)
    end

    if step >= CONFIG.step[LiNC.settings.difficulty][need].visualStep and not MetaSystem.player.visual[need] then
        MetaSystem.player.visual[need] = true
    end
end

local function removeStepEffect(need, step)
    for _, stat in pairs(CONFIG.step[LiNC.settings.difficulty][need].stats) do
        local value = math.abs(stat.step[step])
        if stat.type == "Multiplier" then
            value = 1 / stat.step[step]
        end
        Game.AddStatModifier(stat.name, value, stat.type)
    end

    if MetaSystem.player.visual[need] then
        MetaSystem.player.visual[need] = false
    end
end

local function updateStep(need)
    local oldStep = MetaSystem.player.step[need]
    local totalNeed = MetaSystem.player.total[need]

    MetaSystem.player.step[need] = 0
    for step, stepRange in pairs(CONFIG.step[LiNC.settings.difficulty][need].range) do
        if totalNeed > stepRange.min and totalNeed <= stepRange.max then
            MetaSystem.player.step[need] = step
        end
    end

    if oldStep ~= MetaSystem.player.step[need] then
        if oldStep > 0 then removeStepEffect(need, oldStep) end

        if MetaSystem.player.step[need] > 0 then
            MetaSystem.state.stepChange = true
            addStepEffect(need, MetaSystem.player.step[need])
        end
    end
end

local function updateStack(need)
    if MetaSystem.player.stack[need] <= 0 then
        addTotalNeed(need, -1)
        MetaSystem.player.stack[need] = CONFIG.stack[need] * LiNC.settings.decayRate
    else
        local alcoholMalus = 1
        if need == "thirst" and MetaSystem.state.hasDrunkAlcohol then
            MetaSystem.state.hasDrunkAlcohol = false
            alcoholMalus = CONFIG.alcoholMalus
        end
        MetaSystem.player.stack[need] = MetaSystem.player.stack[need] - (1 * alcoholMalus)
    end
end

local function updateRegen(need)
    local regen = false

    if MetaSystem.state.hasSlept then
        MetaSystem.state.hasSlept = false
        MetaSystem.player.total.fatigue = CONFIG.totalMax * CONFIG.sleepRegenMultiplier
        regen = true
    end

    if MetaSystem.player.regen[need] then
        if need ~= "fatigue" then
            MetaSystem.player.regen[need] = false
        end
        if (need ~= "thirst") or (need == "thirst" and not MetaSystem.state.hasDrunkAlcohol) then
            addTotalNeed(need, CONFIG.regen[need])
            regen = true
        end
    end

    return regen
end

local function getPlayerConsumption()
    local player = Game.GetPlayer()
    local playerID = player:GetEntityID()
    local playerEffects = Game.GetStatusEffectSystem():GetAppliedEffects(playerID)

    if (playerEffects) then
        for _, playerEffect in pairs(playerEffects) do
            local effectID = playerEffect:GetRecord():GetID().hash
            for effect, consumableEffectID in pairs(EFFECTS) do
                if (effectID == consumableEffectID) then
                    if effect == "hydration" then
                        MetaSystem.player.regen.thirst = true
                    elseif effect == "nourishment" then
                        MetaSystem.player.regen.hunger = true
                    elseif effect == "drunk" then
                        MetaSystem.state.hasDrunkAlcohol = true
                    end
                end
            end
        end
    end
end

local function isPlayerPosRestScene()
    local player = Game.GetPlayer()
    local playerPos = player:GetWorldPosition()

    for location, restPos in pairs(POS) do
        if (playerPos.x >= restPos.x) and (playerPos.x <= (restPos.x + restPos.xOffset)) and (playerPos.y >= restPos.y) and
            (playerPos.y <= (restPos.y + restPos.yOffset)) then
            if location == "homeBed" then
                MetaSystem.state.hasSlept = true
            elseif location == "homeCouch" then
                MetaSystem.enable = true
                MetaSystem.player.regen.fatigue = true
            end
        end
    end
end

local function initObserver()
    local saves = {}

    Observe("LoadGameMenuGameController", "OnSaveMetadataReady", function(self, saveInfo)
        saves[saveInfo.saveIndex] = {
            timestamp = tostring(saveInfo.timestamp):gsub("ULL$", "")
        }
    end)
    Observe("gameuiInGameMenuGameController", "OnSavingComplete", function(self, success)
        if success then
            for stat, statValue in pairs(MetaSystem.player) do
                MockDB.save(stat, statValue)
            end
        end
    end)
    Observe("LoadGameMenuGameController", "LoadSaveInGame", function(_, saveIndex)
        for stat, _ in pairs(MetaSystem.player) do
            local playerData = MockDB.load(stat, saves[saveIndex].timestamp)
            if playerData then
                if type(MetaSystem.player[stat].thirst) == "boolean" then
                    MetaSystem.player[stat].thirst = (playerData.thirst > 0 and true or false)
                    MetaSystem.player[stat].hunger = (playerData.hunger > 0 and true or false)
                    MetaSystem.player[stat].fatigue = (playerData.fatigue > 0 and true or false)
                else
                    MetaSystem.player[stat] = playerData
                end
            end
        end
        saves = {}
    end)

    GameUI.Observe(function(state)

        if state.isDefault and not state.isJohnny then
            MetaSystem.enable = true
            MetaSystem.player.regen.fatigue = false
        else
            MetaSystem.enable = false
        end

        if state.isScene then
            isPlayerPosRestScene()
        end
    end)
end

local function refreshVisualEffects()
    if LiNC.settings.visualEffect then
        MetaSystem.cleanEffects = false
        for need, effect in pairs(MetaSystem.player.visual) do
            if not effect then Game.RemoveEffectPlayer(CONFIG.step[LiNC.settings.difficulty][need].visualEffects) end
        end
        for need, effect in pairs(MetaSystem.player.visual) do
            if effect then Game.ApplyEffectOnPlayer(CONFIG.step[LiNC.settings.difficulty][need].visualEffects) end
        end
    elseif not MetaSystem.cleanEffects then
        MetaSystem.cleanEffects = true
        for need, effect in pairs(MetaSystem.player.visual) do
            if effect then Game.RemoveEffectPlayer(CONFIG.step[LiNC.settings.difficulty][need].visualEffects) end
        end
    end
end

function MetaSystem.Notif()
    if MetaSystem.enable then
        local text = Locale.text
        local currentNeeds =
        text.thirst .. " " .. (CONFIG.totalMax - MetaSystem.player.total.thirst) .. "%  |  " ..
        text.hunger .. " " .. (CONFIG.totalMax - MetaSystem.player.total.hunger) .. "%  |  " ..
        text.fatigue .. " " .. (CONFIG.totalMax - MetaSystem.player.total.fatigue) .. "%"

        GameHUD.ShowMessage(currentNeeds)
        if LiNC.settings.warningMsg then
            createWarningMsg(text)
        end
    end
end

function MetaSystem.UpdateNeeds()
    refreshVisualEffects()
    
    if MetaSystem.enable then
        getPlayerConsumption()
        for need, _ in pairs(MetaSystem.player.total) do
            if not updateRegen(need) then
                updateStack(need)
            end
            updateStep(need)
        end

        if MetaSystem.state.stepChange then
            MetaSystem.state.stepChange = false
            if LiNC.settings.notif then
                MetaSystem.Notif()
            end
        end
    end
end

function MetaSystem.Initialize()
    GameHUD.Initialize()
    Locale.Initialize()
    initObserver()
end

return MetaSystem
