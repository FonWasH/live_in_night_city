User = {}

function User:new()
    local o = {}

    setmetatable(o, {
        __index = self
    })

    o.settings = {
        game = {
            difficulty = 3,
            gamepad = true
        },
        thirst = {
            dayPool = 3,
            regenMultiplier = 1.0,
            costMultiplier = 1.0
        },
        hunger = {
            dayPool = 30,
            regenMultiplier = 1.0,
            costMultiplier = 1.0
        },
        fatigue = {
            dayPool = 14,
            regenMultiplier = 1.0,
            costMultiplier = 1.0
        },
        display = {
            warning = true,
            notif = true
        }
    }
    o.language = ""

    return o
end

function User:menu()
    local DEFAULT = require("constants/DefaultUser")
    local STRINGS = LiNC.strings.settings
    local menu = GetMod("nativeSettings")

    local name = "Live in Night City"
    local root = "/LiNC"
    local sep = "/"

    if not menu.pathExists(root) then
        menu.addTab(root, name)
    end

    for category, settings in pairs(DEFAULT) do
        local path = root .. sep .. category
        
        if menu.pathExists(path) then
            menu.removeSubcategory(path)
        end
        menu.addSubcategory(path, STRINGS.category[category])

        for setting, v in pairs(settings) do
            local strings = STRINGS.options[category][setting]

            if v.type == "Selector" then
                menu.addSelectorString(path, strings.label, strings.description, strings.mode,
                    self.settings[category][setting], v.default, function(value)
                        self.settings[category][setting] = value
                    end)
            elseif v.type == "Switch" then
                menu.addSwitch(path, strings.label, strings.description, self.settings[category][setting], v.default,
                    function(state)
                        self.settings[category][setting] = state
                    end)
            elseif v.type == "RangeInt" then
                menu.addRangeInt(path, strings.label, strings.description, 1, 90, 1, self.settings[category][setting],
                    v.default, function(value)
                        self.settings[category][setting] = value
                    end)
            elseif v.type == "RangeFloat" then
                menu.addRangeFloat(path, strings.label, strings.description, 0.25, 100.0, 0.25, "%.2f",
                    self.settings[category][setting], v.default, function(value)
                        self.settings[category][setting] = value
                    end)
            end
        end
    end

    menu.refresh()
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
