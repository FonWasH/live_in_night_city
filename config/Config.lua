local EASY = require("config/mode/Easy")
local NORMAL = require("config/mode/Easy")
local HARD = require("config/mode/Hard")

local Config = {
    systemSleep = 1.0,
    warningDuration = 5.0,
    totalMax = 100,
    action = {
        sleep = 1.0,
        drunk = 18,
        moving = 8,
        sprinting = 40,
        melee = 24,
    },
    stack = {
        thirst = 72,
        hunger = 108,
        fatigue = 90,
    },
    regen = {
        thirst = 1,
        hunger = 1,
        fatigue = 1,
    },
    step = {
        [1] = EASY,
        [2] = NORMAL,
        [3] = HARD
    }
}

return Config
