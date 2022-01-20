local Locale = require("modules/utils/Localization")

local UserMenu = {}

function UserMenu.Load()
    local file = io.open("settings.json", "r")
    if file ~= nil then
        local success, data = pcall(function()
            return json.decode(file:read("*a"))
        end)
        file:close()
        if success then
            for k, _ in pairs(LiNC.settings) do
                if data[k] ~= nil then
                    LiNC.settings[k] = data[k]
                end
            end
        end
    end
end

function UserMenu.Save()
    local success, data = pcall(function()
        return json.encode(LiNC.settings)
    end)
    if success and data ~= nil then
        local file = io.open("settings.json", "w+")
        file:write(data)
        file:close()
    end
end

function UserMenu.Create()
    local nativeSettings = GetMod("nativeSettings")
    if not nativeSettings.pathExists("/LiNC") then
        nativeSettings.addTab("/LiNC", "Live in Night City")
    end

    if nativeSettings.pathExists("/LiNC/game") then
        nativeSettings.removeSubcategory("/LiNC/game")
    end
    nativeSettings.addSubcategory("/LiNC/game", Locale.text.settings.category.game)

    if nativeSettings.pathExists("/LiNC/display") then
        nativeSettings.removeSubcategory("/LiNC/display")
    end
    nativeSettings.addSubcategory("/LiNC/display", Locale.text.settings.category.display)

    nativeSettings.addSelectorString("/LiNC/game",
        Locale.text.settings.options.difficulty.label,
        Locale.text.settings.options.difficulty.description,
        Locale.text.settings.difficulty,
        LiNC.settings.difficulty, 3,
        function(value)
            LiNC.settings.difficulty = value
        end
    )

    nativeSettings.addRangeFloat("/LiNC/game",
        Locale.text.settings.options.decay.label,
        Locale.text.settings.options.decay.description,
        0.25, 2.0, 0.25, "%.2f", LiNC.settings.decayRate, 1.0,
        function(value)
            LiNC.settings.decayRate = value
        end
    )

    nativeSettings.addSwitch("/LiNC/display",
        Locale.text.settings.options.effect.label,
        Locale.text.settings.options.effect.description,
        LiNC.settings.visualEffect, true,
        function(state)
            LiNC.settings.visualEffect = state
        end
    )

    nativeSettings.addSwitch("/LiNC/display",
        Locale.text.settings.options.notif.label,
        Locale.text.settings.options.notif.description,
        LiNC.settings.notif, true,
        function(state)
            LiNC.settings.notif = state
        end
    )

    nativeSettings.addSwitch("/LiNC/display",
        Locale.text.settings.options.warning.label,
        Locale.text.settings.options.warning.description,
        LiNC.settings.warningMsg, true,
        function(state)
            LiNC.settings.warningMsg = state
        end
    )

    nativeSettings.refresh()
end

return UserMenu
