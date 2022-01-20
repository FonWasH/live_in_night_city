local Cron = require("modules/utils/Cron")
local MetaSystem = require("modules/MetaSystem")

local CONFIG = require("config/Config")

LiNC = {
    description = "'Live in Night City' a.k.a. survival mode",
    version = "0.1",
    menu = require("modules/utils/UserMenu"),
    settings = {
        difficulty = 3,
        decayRate = 1.0,
        visualEffect = true,
        warningMsg = true,
        notif = true,
    }
}

function LiNC:new()
    registerForEvent("onInit", function()
        LiNC.menu.Load()
        MetaSystem.Initialize()
        Cron.Every(CONFIG.systemSleep, {tick = 1}, function(timer)
            MetaSystem.UpdateNeeds()
        end)
        print("'Live in Night City' is ready (v" .. LiNC.version .. ")")
    end)

    registerForEvent("onUpdate", function(delta)
        Cron.Update(delta)
    end)

    registerHotkey("LiveInNightCity", "Show Needs", function()
        MetaSystem.Notif()
    end)
end

return LiNC:new()
