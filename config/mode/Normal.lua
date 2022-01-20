local Normal= {
    thirst = {
        visualStep = 3,
        visualEffects = "BaseStatusEffect.NetwatcherGeneral",
        stats = {
            {
                name = "Stamina",
                type = "Multiplier",
                step = {1.0, 0.5, 0.25, 0.1},
            },
            {
                name = "Memory",
                type = "Additive",
                step = {0, -1, -2, -4},
            },
        },
        range = {
            {min = 99, max = 100},
            {min = 25, max = 50},
            {min = 0, max = 25},
            {min = -1, max = 0},
        },
    },
    hunger = {
        visualStep = 3,
        visualEffects = "BaseStatusEffect.NetwatcherGeneral",
        stats = {
            {
                name = "Health",
                type = "Multiplier",
                step = {1.0, 0.5, 0.25, 0.1},
            }
        },
        range = {
            {min = 99, max = 100},
            {min = 25, max = 50},
            {min = 0, max = 25},
            {min = -1, max = 0},
        },
    },
    fatigue = {
        visualStep = 3,
        visualEffects = "BaseStatusEffect.NetwatcherGeneral",
        stats = {
            {
                name = "CritChance",
                type = "Multiplier",
                step = {1.0, 0.5, 0.25, 0.1},
            },
            {
                name = "StaminaRegenRate",
                type = "Multiplier",
                step = {1.0, 0.5, 0.25, 0.1},
            },
        },
        range = {
            {min = 99, max = 100},
            {min = 25, max = 50},
            {min = 0, max = 25},
            {min = -1, max = 0},
        }
    }
}

return Normal
