local GameHUD = require("modules/utils/GameHUD")

local Notification = {
    duration = 5.0,
}

function Notification.show()
    if Player.state.enable then
        local notif = ""
        local status = ""
        local warning = false

        for need, needData in pairs(Player.needs) do
            notif = notif .. LiNC.strings[need] .. " " .. needData.state.total .. "%  |  "
            if needData.state.step > 0 then
                warning = true
                status = status .. LiNC.strings.step[need][needData.state.step]
            end
        end
        notif = string.sub(notif, 1, string.len(notif) - 5)

        GameHUD.ShowMessage(notif)
        if User.settings.display.warning and warning then
            status = string.sub(status, 1, string.len(status) - 2)
            GameHUD.ShowWarning(status, Notification.duration)
        end
    end
end

return Notification
