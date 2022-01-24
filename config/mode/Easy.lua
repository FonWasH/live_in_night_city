local Easy = {
    thirst = {
        totalMax = 100,
        poolMax = 324,
        sleepTotalCost = 10,
        actionCost = {
            alcohol = 162,
            move = 0,
            sprint = 3,
            melee = 16
            --drug = 0, --wip
        },
        actionRegen = {
            drink = -600,
            eat = -60,
            shower = -600,
            rest = 0
            --sex = 0, --wip
        },
        step = {
            range = {
                {min = -1, max = 1},
                {min = 50, max = 75},
                {min = 74, max = 100},
                {min = 99, max = 101}
            },
            stats = {
                {
                    name = "Stamina",
                    type = "Multiplier",
                    step = {1.0, 0.75, 0.5, 0.25}
                },
                {
                    name = "Memory",
                    type = "Additive",
                    step = {0, 0, -1, -2}
                }
            },
            effects = {
                persistent = {
                    {name = "BaseStatusEffect.NetwatcherGeneral", step = {false, false, false, true}}
                },
                random = nil
            }
        }
    },
    hunger = {
        totalMax = 100,
        poolMax = 3024,
        sleepTotalCost = 10,
        actionCost = {
            alcohol = 15,
            move = 5,
            sprint = 50,
            melee = 90
            --drug = 0, --wip
        },
        actionRegen = {
            drink = 0,
            eat = -800,
            shower = 0,
            rest = 0
            --sex = 0, --wip
        },
        step = {
            range = {
                {min = -1, max = 1},
                {min = 30, max = 60},
                {min = 59, max = 100},
                {min = 99, max = 101}
            },
            stats = {
                {
                    name = "Health",
                    type = "Multiplier",
                    step = {1.0, 0.75, 0.5, 0.25}
                }
            },
            effects = {
                persistent = {
                    {name = "BaseStatusEffect.NetwatcherGeneral", step = {false, false, false, true}}
                },
                random = nil
            }
        }
    },
    fatigue = {
        totalMax = 100,
        poolMax = 756,
        actionCost = {
            alcohol = -300,
            move = 1,
            sprint = 2,
            melee = 25
            --drug = 0, --wip
        },
        actionRegen = {
            drink = 0,
            eat = 0.25,
            shower = -400,
            rest = -800
            --sex = 0, --wip
        },
        step = {
            range = {
                {min = -1, max = 1},
                {min = 50, max = 75},
                {min = 74, max = 100},
                {min = 99, max = 101}
            },
            stats = {
                {
                    name = "StaminaRegenRate",
                    type = "Multiplier",
                    step = {1.0, 0.75, 0.5, 0.25}
                }
            },
            effects = {
                persistent = nil,
                random = {
                    {
                        name = "BaseStatusEffect.Blind",
                        probability = 1,
                        probabilityStepMultiplier = {0, 0, 1, 2}
                    },
                    {
                        name = "BaseStatusEffect.Overload",
                        probability = 1,
                        probabilityStepMultiplier = {0, 0, 1, 2}
                    }
                }
            }
        }
    }
}

return Easy
