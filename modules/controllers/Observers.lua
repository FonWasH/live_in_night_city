local gameUI = require("modules/utils/GameUI")
local dao = require("modules/utils/DAO")

local Observers = {}

local function saveObserver()
    local saves = {}

    Observe("LoadGameMenuGameController", "OnSaveMetadataReady", function(self, saveInfo)
        saves[saveInfo.saveIndex] = {
            timestamp = tostring(saveInfo.timestamp):gsub("ULL$", "")
        }
    end)

    Observe("gameuiInGameMenuGameController", "OnSavingComplete", function(self, success)
        if success then
            for need, needData in pairs(Player.needs) do
                dao.save(need, needData.state)
            end
        end
    end)

    Observe("LoadGameMenuGameController", "LoadSaveInGame", function(_, saveIndex)
        if saves[saveIndex] ~= nil then
            for need, _ in pairs(Player.needs) do
                local needData = dao.load(need, saves[saveIndex].timestamp)
                if needData ~= nil then
                    for state, _ in pairs(Player.needs[need].state) do
                        if needData[state] ~= nil then
                            Player.needs[need].state[state] = needData[state]
                        end
                    end
                end
            end
        else
            Player:reset()
        end
        saves = {}
    end)
end

local function playerActionObserver()
    Observe('PlayerPuppet', 'OnAction', function(_, action)
        local actionName = Game.NameToString(ListenerAction.GetName(action))
        local actionType = ListenerAction.GetType(action).value
        local actionValue = ListenerAction.GetValue(action)

        if not Player.state.vehicle and Player.state.enable then
            if actionName == 'Forward' or actionName == 'Back' or actionName == 'Left' or actionName == 'Right' then
                if actionType == 'BUTTON_PRESSED' then
                    Player.actionCost.move = true
                end
                if actionType == 'BUTTON_RELEASED' then
                    Player.actionCost.move = false
                end
            elseif actionName == 'MoveY' or actionName == 'MoveX' then
                if actionValue ~= 0 then
                    Player.actionCost.move = true
                end
                if actionValue == 0 then
                    Player.actionCost.move = false
                end
            end

            if actionName == "ToggleSprint" then
                if actionType == 'BUTTON_PRESSED' and Player.move then
                    Player.actionCost.sprint = true
                end
                if actionType == 'BUTTON_RELEASED' then
                    Player.actionCost.sprint = false
                end
            end

            if actionName == "QuickMelee" then
                Player.actionCost.melee = true
            end
        end

        if Player.state.enable and User.settings.gamepad then
            if actionName == "dpad_left" and actionType == "BUTTON_PRESSED" then
                Notif.show()
            end
        end
    end)
end

function Observers.init()
    saveObserver()
    playerActionObserver()
    gameUI.Observe(function(state)
        if state.isDefault and not state.isJohnny then
            Player.state.enable = true
            Player.actionRegen.rest = false
            Player.actionRegen.shower = false
        else
            Player.state.enable = false
        end
        Player.state.vehicule = state.isVehicule
        if state.isScene then Player:getScenePos() end
    end)
end

return Observers
