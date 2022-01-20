local GameSettings = require("modules/utils/GameSettings")
local GameUI = require("modules/utils/GameUI")

local STRINGS = require("data/Strings")

local Localization = {
    text = {},
    language = ""
}

function Localization.Initialize()
    Localization.language = NameToString(GameSettings.Get("/language/OnScreen"))
    Localization.text = STRINGS[Localization.language]
    LiNC.menu.Create()

    GameUI.Listen("MenuNav", function(state)
        if state.lastSubmenu ~= nil and state.lastSubmenu == "Settings" then
            local new = NameToString(GameSettings.Get("/language/OnScreen"))
            if new ~= Localization.language then
                Localization.language = new
                Localization.text = STRINGS[Localization.language]
                LiNC.menu.Create()
            end
            LiNC.menu.Save()
        end
    end)
end

return Localization
