local STRINGS = require("constants/Strings")
local CONFIG = require("config/Config")

local gameUI = require("modules/utils/GameUI")
local GameSession = require("modules/utils/GameSession")
local gameSettings = require("modules/utils/GameSettings")
local dao = require("modules/utils/DAO")

local Listeners = {}

function Listeners.init()
    LiNC.config = CONFIG[User.settings.game.difficulty]

    User.language = NameToString(gameSettings.Get("/language/OnScreen"))
    LiNC.strings = STRINGS[User.language]
    User:menu()

    gameUI.Listen(gameUI.Event.MenuNav, function(state)
        if state.lastSubmenu ~= nil and state.lastSubmenu == "Settings" then
			print("[Live in Night City] MenuNav")

            local new = NameToString(gameSettings.Get("/language/OnScreen"))
            if new ~= User.language then
                User.language = new
                LiNC.strings = STRINGS[User.language]
            end

            User:menu()

            LiNC.config = CONFIG[User.settings.game.difficulty]
            User:save()

            Player.state.refresh = true
        end
    end)

    GameSession.Listen(GameSession.Event.Load, function(state)
		print("[Live in Night City] Game Loading with sessionKey " .. tostring(state.sessionKey))
		for need, _ in pairs(Player.needs) do
			local needData = dao.load(need, state.sessionKey)
			if needData ~= nil then
				for state, _ in pairs(Player.needs[need].state) do
					if needData[state] ~= nil then
						Player.needs[need].state[state] = needData[state]
					else
						Player.needs[need]:reset()
					end
				end
			end
		end
        Player.state.refresh = true
    end)

    GameSession.Listen(GameSession.Event.Save, function(state)
		print("[Live in Night City] Saving with sessionKey " .. tostring(state.sessionKey))
		for need, needData in pairs(Player.needs) do
			dao.save(need, needData.state, state.sessionKey)
		end
    end)
end

return Listeners
