local user = require("modules/models/User")
local player = require("modules/models/Player")
local cron = require("modules/utils/Cron")
local observers = require("modules/controllers/Observers")
local listeners = require("modules/controllers/Listeners")

LiNC = {
    description = "Live in Night City (a.k.a. survival mode)",
    version = "0.3",
    strings = {},
    config = {}
}

Notif = require("modules/views/Notification")
User = user:new()
Player = player:new()

function LiNC:new()
    registerForEvent("onInit", function()
        User:load()

        observers.init()
        listeners.init()

        cron.Every(1.0, {tick = 1}, function(_)
            if Player.state.enable then
                Player:getConsumption()
                Player:updateMetabolism()
            end
        end)

        print("[Live in Night City] is initialized (v" .. LiNC.version .. ")")
    end)

    registerForEvent("onUpdate", function(delta)
        cron.Update(delta)
    end)

    registerHotkey("LiveInNightCity", "Show Needs", function()
        Notif.show()
    end)
end

return LiNC:new()
