local Default = {
    game = {
        difficulty = {default = 3, type = "Selector"},
        gamepad = {default = true, type = "Switch"}
    },
    thirst = {
        dayPool = {default = 3, type = "RangeInt"},
        regenMultiplier = {default = 1.0, type = "RangeFloat"},
        costMultiplier = {default = 1.0, type = "RangeFloat"}
    },
    hunger = {
        dayPool = {default = 30, type = "RangeInt"},
        regenMultiplier = {default = 1.0, type = "RangeFloat"},
        costMultiplier = {default = 1.0, type = "RangeFloat"}
    },
    fatigue = {
        dayPool = {default = 14, type = "RangeInt"},
        regenMultiplier = {default = 1.0, type = "RangeFloat"},
        costMultiplier = {default = 1.0, type = "RangeFloat"}
    },
    display = {
        warning = {default = true, type = "Switch"},
        notif = {default = true, type = "Switch"}
    }
}

return Default