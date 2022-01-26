local STRINGS = require("constants/Strings")
local CONFIG = require("config/Config")

local gameUI = require("modules/utils/GameUI")
local gameSettings = require("modules/utils/GameSettings")

local Listeners = {}

function Listeners.init()
    LiNC.config = CONFIG[User.settings.game.difficulty]

    User.language = NameToString(gameSettings.Get("/language/OnScreen"))
    LiNC.strings = STRINGS[User.language]
    User:menu()

    gameUI.Listen("MenuNav", function(state)
        if state.lastSubmenu ~= nil and state.lastSubmenu == "Settings" then

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
end

return Listeners
