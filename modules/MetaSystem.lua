
local GameHUD = require("modules/utils/GameHUD")
local GameUI = require("modules/utils/GameUI")
local MockDB = require("modules/utils/MockDB")
local Locale = require("modules/utils/Localization")

local POS = require("data/Positions")
local EFFECTS = require("data/EffectsID")
local CONFIG = require("config/Config")

local MS = {
    enable = true, --false
    cleanEffects = false,
    stepChange = false,
    isVehicle = false,
    player = {
        total = {
            thirst = CONFIG.totalMax,
            hunger = CONFIG.totalMax,
            fatigue = 0--CONFIG.totalMax
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
        oldStep = {
            thirst = 0,
            hunger = 0,
            fatigue = 0
        },
        islow = {
            thirst = false,
            hunger = false,
            fatigue = false
        }
    },
    playerAction = {
        sleep = false,
        drunk = false,
        moving = false,
        sprinting = false,
        melee = false,
        --hasMadeLove = false -- wip
    }
}

local function createWarningMsg(text)
    local msg = ""
    local warning = false

    for need, stepLevel in pairs(MS.player.step) do
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
    MS.player.total[need] = MS.player.total[need] + value

    if MS.player.total[need] <= 0 then
        MS.player.total[need] = 0
    end

    if MS.player.total[need] >= CONFIG.totalMax then
        MS.player.total[need] = CONFIG.totalMax
    end
end

local function updateStep(need)
    local totalNeed = MS.player.total[need]

    MS.player.oldStep[need] = MS.player.step[need]
    MS.player.step[need] = 0
    for step, stepRange in pairs(CONFIG.step[LiNC.settings.difficulty][need].range) do
        if totalNeed > stepRange.min and totalNeed <= stepRange.max then
            MS.player.step[need] = step
        end
    end

    MS.player.islow[need] = (MS.player.step[need] >= CONFIG.step[LiNC.settings.difficulty][need].lowStep)

    if MS.player.oldStep[need] ~= MS.player.step[need] and MS.player.step[need] > 0 then
        MS.stepChange = true
    end
end

local function updateStack(need)
    local malus = 1

    if need == "thirst" and MS.playerAction.drunk then
        MS.playerAction.drunk = false
        malus = malus + (CONFIG.action.alcohol * (1 / LiNC.settings.decayRate))
    end
    if MS.playerAction.melee then
        MS.playerAction.melee = false
        malus = malus + (CONFIG.action.melee * (1 / LiNC.settings.decayRate))
    end
    if MS.playerAction.moving then
        malus = malus + (CONFIG.action.moving * (1 / LiNC.settings.decayRate))
    end
    if MS.playerAction.sprinting then
        malus = malus + (CONFIG.action.sprinting * (1 / LiNC.settings.decayRate))
    end
    MS.player.stack[need] = MS.player.stack[need] - (1 * malus)

    if MS.player.stack[need] <= 0 then
        addTotalNeed(need, -1)
        MS.player.stack[need] = CONFIG.stack[need] * LiNC.settings.decayRate
    end
end

local function updateRegen(need)
    local regen = false

    if MS.playerAction.sleep then
        MS.playerAction.sleep = false
        MS.player.total.fatigue = CONFIG.totalMax * CONFIG.action.sleep
        regen = true
    end

    if MS.player.regen[need] then
        if need ~= "fatigue" then
            MS.player.regen[need] = false
        end
        if (need ~= "thirst") or (need == "thirst" and not MS.playerAction.drunk) then
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
                        MS.player.regen.thirst = true
                    elseif effect == "nourishment" then
                        MS.player.regen.hunger = true
                    elseif effect == "drunk" then
                        MS.playerAction.drunk = true
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
                MS.playerAction.sleep = true
            else
                MS.enable = true
                MS.player.regen.fatigue = true
            end
        end
    end
end

local function saveObserver()
    local saves = {}

    Observe("LoadGameMenuGameController", "OnSaveMetadataReady", function(self, saveInfo)
        saves[saveInfo.saveIndex] = {
            timestamp = tostring(saveInfo.timestamp):gsub("ULL$", "")
        }
    end)
    Observe("gameuiInGameMenuGameController", "OnSavingComplete", function(self, success)
        if success then
            for stat, statValue in pairs(MS.player) do
                MockDB.save(stat, statValue)
            end
        end
    end)
    Observe("LoadGameMenuGameController", "LoadSaveInGame", function(_, saveIndex)
        for stat, _ in pairs(MS.player) do
            local playerData = MockDB.load(stat, saves[saveIndex].timestamp)
            if playerData and MS.player[stat].thirst ~= nil then
                if type(MS.player[stat].thirst) == "boolean" then
                    MS.player[stat].thirst = (playerData.thirst > 0 and true or false)
                    MS.player[stat].hunger = (playerData.hunger > 0 and true or false)
                    MS.player[stat].fatigue = (playerData.fatigue > 0 and true or false)
                else
                    MS.player[stat].thirst = playerData.thirst
                    MS.player[stat].hunger = playerData.hunger
                    MS.player[stat].fatigue = playerData.fatigue
                end
            end
        end
        saves = {}
    end)
end

local function playerActionObserver()
    Observe('PlayerPuppet', 'OnAction', function(_, action)
        local actionName = Game.NameToString(ListenerAction.GetName(action))
        local actionType = ListenerAction.GetType(action).value
        local actionValue = ListenerAction.GetValue(action)

        if MS.enable and not MS.isVehicle then
            if actionName == 'Forward' or actionName == 'Back' or actionName == 'Left' or actionName == 'Right' then
                if actionType == 'BUTTON_PRESSED' then MS.playerAction.moving = true end
                if actionType == 'BUTTON_RELEASED' then MS.playerAction.moving = false end
            elseif actionName == 'MoveY' or actionName == 'MoveX' then
                if actionValue ~= 0 then MS.playerAction.moving = true end
                if actionValue == 0 then MS.playerAction.moving = false end
            end

            if actionName == "ToggleSprint" then
                if actionType == 'BUTTON_PRESSED' and MS.playerAction.moving then MS.playerAction.sprinting = true end
                if actionType == 'BUTTON_RELEASED' then MS.playerAction.sprinting = false end
            end

            if actionName == "QuickMelee" then
                MS.playerAction.melee = true
            end
        end
    end)
end

local function initObserver()
    saveObserver()
    playerActionObserver()

    GameUI.Observe(function(state)
        if state.isDefault and not state.isJohnny then
            MS.enable = true
            MS.player.regen.fatigue = false
        else
            MS.enable = false
        end

        if state.isScene then
            isPlayerPosRestScene()
        end

        MS.isVehicule = state.isVehicule

        GameUI.PrintState(state)
    end)
end

local function refreshVisualEffects()
    if LiNC.settings.visualEffect then
        MS.cleanEffects = false
        for need, islow in pairs(MS.player.islow) do
            if CONFIG.step[LiNC.settings.difficulty][need].visualEffects ~= nil then
                Game.RemoveEffectPlayer(CONFIG.step[LiNC.settings.difficulty][need].visualEffects)
                if islow then Game.ApplyEffectOnPlayer(CONFIG.step[LiNC.settings.difficulty][need].visualEffects) end
            end
        end
    elseif not MS.cleanEffects then
        MS.cleanEffects = true
        for need, islow in pairs(MS.player.islow) do
            if CONFIG.step[LiNC.settings.difficulty][need].visualEffects ~= nil then
                if islow then Game.RemoveEffectPlayer(CONFIG.step[LiNC.settings.difficulty][need].visualEffects) end
            end
        end
    end
end

local function refreshStepStatModifier()
    for need, step in pairs(MS.player.step) do
        for _, stat in pairs(CONFIG.step[LiNC.settings.difficulty][need].stats) do
            if MS.player.oldStep[need] > 0 then
                local value = math.abs(stat.step[MS.player.oldStep[need]])
                if stat.type == "Multiplier" then
                    value = 1 / stat.step[MS.player.oldStep[need]]
                end
                Game.AddStatModifier(stat.name, value, stat.type)
            end
            if step > 0 then
                Game.AddStatModifier(stat.name, stat.step[step], stat.type)
            end
        end
    end
end

local function refreshStepEffects()
    math.randomseed(os.time())
    for need, islow in pairs(MS.player.islow) do
        if CONFIG.step[LiNC.settings.difficulty][need].effects ~= nil then
            for _, effect in pairs(CONFIG.step[LiNC.settings.difficulty][need].effects.persistent) do
                Game.RemoveEffectPlayer(effect)
                if islow then
                    Game.ApplyEffectOnPlayer(effect)
                end
            end
            if islow and CONFIG.step[LiNC.settings.difficulty][need].random ~= nil then
                for _, randomEffect in pairs(CONFIG.step[LiNC.settings.difficulty][need].effects.random) do
                    local dice = math.random() and math.random() and math.random() and math.random(100)
                    local probability = CONFIG.step[LiNC.settings.difficulty][need].effects.randomProbability
                    local multiplier = 1
                    if MS.player.step[need] > 0 then
                        multiplier = CONFIG.step[LiNC.settings.difficulty][need].effects.probabilityStepMultiplier[MS.player.step[need]]
                    end
                    probability = probability * multiplier
                    if dice <= probability then
                        Game.ApplyEffectOnPlayer(randomEffect)
                    end
                end
            end
        end
    end
end

function MS.Notif()
    if MS.enable then
        local text = Locale.text
        local currentNeeds =
        text.thirst .. " " .. (CONFIG.totalMax - MS.player.total.thirst) .. "%  |  " ..
        text.hunger .. " " .. (CONFIG.totalMax - MS.player.total.hunger) .. "%  |  " ..
        text.fatigue .. " " .. (CONFIG.totalMax - MS.player.total.fatigue) .. "%"

        GameHUD.ShowMessage(currentNeeds)
        if LiNC.settings.warningMsg then
            createWarningMsg(text)
        end
    end
end

function MS.UpdateNeeds()
    refreshVisualEffects()

    if MS.enable then
        refreshStepStatModifier()
        refreshStepEffects()
        getPlayerConsumption()
        for need, _ in pairs(MS.player.total) do
            if not updateRegen(need) then
                updateStack(need)
            end
            updateStep(need)
        end

        if MS.stepChange then
            MS.stepChange = false
            if LiNC.settings.notif then
                MS.Notif()
            end
        end
    end
end

function MS.Initialize()
    GameHUD.Initialize()
    Locale.Initialize()
    initObserver()
end

return MS
