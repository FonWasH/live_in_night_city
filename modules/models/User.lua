User = {}

function User:new()
    local o = {}

    setmetatable(o, {__index = self})

    o.settings = {
        difficulty = 3,
        gamepad = true,
        decayRate = {
            thirst = 1.0,
            hunger = 1.0,
            fatigue = 1.0
        },
        warningMsg = true,
        notif = true
    }
    o.language = ""

    return o
end

function User:menu()
    local nativeSettings = GetMod("nativeSettings")
    if not nativeSettings.pathExists("/LiNC") then
        nativeSettings.addTab("/LiNC", "Live in Night City")
    end

    if nativeSettings.pathExists("/LiNC/game") then
        nativeSettings.removeSubcategory("/LiNC/game")
    end
    nativeSettings.addSubcategory("/LiNC/game", LiNC.strings.settings.category.game)

    if nativeSettings.pathExists("/LiNC/display") then
        nativeSettings.removeSubcategory("/LiNC/display")
    end
    nativeSettings.addSubcategory("/LiNC/display", LiNC.strings.settings.category.display)

    nativeSettings.addSwitch("/LiNC/game",
        LiNC.strings.settings.options.gamepad.label,
        LiNC.strings.settings.options.gamepad.description,
        self.settings.gamepad, true,
        function(state)
            self.settings.gamepad = state
        end
    )

    nativeSettings.addSelectorString("/LiNC/game",
        LiNC.strings.settings.options.difficulty.label,
        LiNC.strings.settings.options.difficulty.description,
        LiNC.strings.settings.difficulty,
        self.settings.difficulty, 3,
        function(value)
            self.settings.difficulty = value
        end
    )

    nativeSettings.addRangeFloat("/LiNC/game",
        LiNC.strings.settings.options.decay.thirst.label,
        LiNC.strings.settings.options.decay.thirst.description,
        0.25, 4.0, 0.25, "%.2f", self.settings.decayRate.thirst, 1.0,
        function(value)
            self.settings.decayRate.thirst = value
        end
    )

    nativeSettings.addRangeFloat("/LiNC/game",
        LiNC.strings.settings.options.decay.hunger.label,
        LiNC.strings.settings.options.decay.hunger.description,
        0.25, 4.0, 0.25, "%.2f", self.settings.decayRate.hunger, 1.0,
        function(value)
            self.settings.decayRate.hunger = value
        end
    )

    nativeSettings.addRangeFloat("/LiNC/game",
        LiNC.strings.settings.options.decay.fatigue.label,
        LiNC.strings.settings.options.decay.fatigue.description,
        0.25, 4.0, 0.25, "%.2f", self.settings.decayRate.fatigue, 1.0,
        function(value)
            self.settings.decayRate.fatigue = value
        end
    )

    nativeSettings.addSwitch("/LiNC/display",
        LiNC.strings.settings.options.notif.label,
        LiNC.strings.settings.options.notif.description,
        self.settings.notif, true,
        function(state)
            self.settings.notif = state
        end
    )

    nativeSettings.addSwitch("/LiNC/display",
        LiNC.strings.settings.options.warning.label,
        LiNC.strings.settings.options.warning.description,
        self.settings.warningMsg, true,
        function(state)
            self.settings.warningMsg = state
        end
    )

    nativeSettings.refresh()
end

function User:load()
    local file = io.open("settings.json", "r")
    if file ~= nil then
        local success, data = pcall(function()
            return json.decode(file:read("*a"))
        end)
        file:close()
        if success then
            for k, _ in pairs(self.settings) do
                if data[k] ~= nil then
                    self.settings[k] = data[k]
                end
            end
        end
    end
end

function User:save()
    local success, data = pcall(function()
        return json.encode(self.settings)
    end)
    if success and data ~= nil then
        local file = io.open("settings.json", "w+")
        file:write(data)
        file:close()
    end
end

return User
