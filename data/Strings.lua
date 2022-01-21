local Strings = {
    ["en-us"] = { -- English
        thirst = "Thirst",
        hunger = "Hunger",
        fatigue = "Fatigue",
        step = {
            thirst = {
                "You are hydrated, ",
                "Low Dehydration, ",
                "Dehydration, ",
                "Severe Dehydration, ",
            },
            hunger = {
                "You are fed, ",
                "Low Undernourishment, ",
                "Undernourishment, ",
                "Severe Undernourishment, ",
            },
            fatigue = {
                "You are rested, ",
                "Low Exhaustion, ",
                "Exhaustion, ",
                "Severe Exhaustion, ",
            }
        },
        settings = {
            category = {
                game = "Game Settings",
                display = "Display Settings"
            },
            options = {
                difficulty = {
                    label = "Difficulty",
                    description = "Defines the amount of debuffs applied when your needs are low."
                },
                decay = {
                    label = "Metabolism decay rate",
                    description = "Defines the needs degradation speed (value > 1 = slower degradation / value < 1 = faster degradation)."
                },
                effect = {
                    label = "Visual effects",
                    description = "Enable/Disable display of visual effects when needs are low."
                },
                notif = {
                    label = "Notifications",
                    description = "Enable/Disable the display of automatic needs level notifications."
                },
                warning = {
                    label = "Status warning",
                    description = "Enable/Disable display of detailed status warning during notifications."
                },
            },
            difficulty = {
                [1] = "Easy",
                [2] = "Normal",
                [3] = "Hard",
            }
        }
    },
    ["fr-fr"] = { -- French
        thirst = "Soif",
        hunger = "Faim",
        fatigue = "Fatigue",
        step = {
            thirst = {
                "Vous êtes hydraté, ",
                "Déshydratation Légère, ",
                "Déshydratation, ",
                "Déshydratation Grave, ",
            },
            hunger = {
                "Vous êtes nourris, ",
                "Sous-alimentation Légère, ",
                "Sous-alimentation, ",
                "Sous-alimentation Grave, ",
            },
            fatigue = {
                "Vous êtes reposé, ",
                "Épuisement Léger, ",
                "Épuisement, ",
                "Épuisement Grave, ",
            }
        },
        settings = {
            category = {
                game = "Paramètres de Jeu",
                display = "Paramètres d'Affichage"
            },
            options = {
                difficulty = {
                    label = "Difficulté",
                    description = "Définit la quantité de malus appliqués quand vos besoins sont bas."
                },
                decay = {
                    label = "Taux de dégradation du métabolisme",
                    description = "Définit la vitesse de dégradation des besoins (valeur > 1 = dégradation plus lente / valeur < 1 = dégradation plus rapide)."
                },
                effect = {
                    label = "Effets visuels",
                    description = "Activer/Désactiver l'affichage des effets visuels quand les besoins sont bas."
                },
                notif = {
                    label = "Notifications",
                    description = "Activer/Désactiver l'affichage des notifications automatiques du niveau des besoins."
                },
                warning = {
                    label = "Avertissement d'état",
                    description = "Activer/Désactiver l'affichage de l'avertissement d'état détaillé pendant les notifications."
                },
            },
            difficulty = {
                [1] = "Facile",
                [2] = "Normal",
                [3] = "Difficile",
            }
        }
    },
    ["de-de"] = { -- German
        thirst = "Durst",
        hunger = "Hunger",
        fatigue = "Ermüdung",
        step = {
            thirst = {
                "Sie sind hydratisiert, ",
                "Niedrige Austrocknung, ",
                "Austrocknung, ",
                "Schwere Austrocknung, ",
            },
            hunger = {
                "Du bist satt, ",
                "Niedrige Unterernährung, ",
                "Unterernährung, ",
                "Schwere Unterernährung, ",
            },
            fatigue = {
                "Sie sind ausgeruht, ",
                "Niedrige Erschöpfung, ",
                "Erschöpfung, ",
                "Schwere Erschöpfung, ",
            }
        },
        settings = {
            category = {
                game = "Spieleinstellungen",
                display = "Bildschirmeinstellungen"
            },
            options = {
                difficulty = {
                    label = "Schwierigkeit",
                    description = "Definiert die Menge an Debuffs, die angewendet werden, wenn Ihre Bedürfnisse gering sind."
                },
                decay = {
                    label = "Abbaurate des Stoffwechsels",
                    description = "Definiert die erforderliche Abbaugeschwindigkeit (Wert > 1 = langsamerer Abbau / Wert < 1 = schnellerer Abbau)."
                },
                effect = {
                    label = "Visuelle Effekte",
                    description = "Aktivieren/Deaktivieren der Anzeige von visuellen Effekten bei geringem Bedarf."
                },
                notif = {
                    label = "Benachrichtigungen",
                    description = "Aktivieren/Deaktivieren Sie die Anzeige automatischer Benachrichtigungen zum Bedarfsniveau."
                },
                warning = {
                    label = "Statuswarnung",
                    description = "Aktivieren/Deaktivieren der Anzeige detaillierter Statuswarnungen während Benachrichtigungen."
                },
            },
            difficulty = {
                [1] = "Leicht",
                [2] = "Normal",
                [3] = "Schwer",
            }
        }
    },
    ["es-es"] = { -- Spanish
        thirst = "Sed",
        hunger = "Hambre",
        fatigue = "Fatiga",
        step = {
            thirst = {
                "You are hydrated, ",
                "Low Dehydration, ",
                "Dehydration, ",
                "Severe Dehydration, ",
            },
            hunger = {
                "You are fed, ",
                "Low Undernourishment, ",
                "Undernourishment, ",
                "Severe Undernourishment, ",
            },
            fatigue = {
                "You are rested, ",
                "Low Exhaustion, ",
                "Exhaustion, ",
                "Severe Exhaustion, ",
            }
        },
        settings = {
            category = {
                game = "Game Settings",
                display = "Display Settings"
            },
            options = {
                difficulty = {
                    label = "Difficulty",
                    description = "Defines the amount of debuffs applied when your needs are low."
                },
                decay = {
                    label = "Metabolism decay rate",
                    description = "Defines the needs degradation speed (value > 1 = slower degradation / value < 1 = faster degradation)."
                },
                effect = {
                    label = "Visual effects",
                    description = "Enable/Disable display of visual effects when needs are low."
                },
                notif = {
                    label = "Notifications",
                    description = "Enable/Disable the display of automatic needs level notifications."
                },
                warning = {
                    label = "Status warning",
                    description = "Enable/Disable display of detailed status warning during notifications."
                },
            },
            difficulty = {
                [1] = "Easy",
                [2] = "Normal",
                [3] = "Hard",
            }
        }
    },
    ["es-mx"] = { -- Spanish
        thirst = "Thirst",
        hunger = "Hunger",
        fatigue = "Fatigue",
        step = {
            thirst = {
                "You are hydrated, ",
                "Low Dehydration, ",
                "Dehydration, ",
                "Severe Dehydration, ",
            },
            hunger = {
                "You are fed, ",
                "Low Undernourishment, ",
                "Undernourishment, ",
                "Severe Undernourishment, ",
            },
            fatigue = {
                "You are rested, ",
                "Low Exhaustion, ",
                "Exhaustion, ",
                "Severe Exhaustion, ",
            }
        },
        settings = {
            category = {
                game = "Game Settings",
                display = "Display Settings"
            },
            options = {
                difficulty = {
                    label = "Difficulty",
                    description = "Defines the amount of debuffs applied when your needs are low."
                },
                decay = {
                    label = "Metabolism decay rate",
                    description = "Defines the needs degradation speed (value > 1 = slower degradation / value < 1 = faster degradation)."
                },
                effect = {
                    label = "Visual effects",
                    description = "Enable/Disable display of visual effects when needs are low."
                },
                notif = {
                    label = "Notifications",
                    description = "Enable/Disable the display of automatic needs level notifications."
                },
                warning = {
                    label = "Status warning",
                    description = "Enable/Disable display of detailed status warning during notifications."
                },
            },
            difficulty = {
                [1] = "Easy",
                [2] = "Normal",
                [3] = "Hard",
            }
        }
    },
    ["it-it"] = { -- Italian thanks to SabP
        thirst = "Sete",
        hunger = "Fame",
        fatigue = "Stanchezza",
        step = {
            thirst = {
                "Sei idratato, ",
                "Bassa disidratazione, ",
                "Disidratazione, ",
                "Grave disidratazione, ",
            },
            hunger = {
                "Sei sazio, ",
                "Lievemente denutrito, ",
                "Denutrito, ",
                "Grave denutrizione, ",
            },
            fatigue = {
                "Sei riposato, ",
                "Lieve sfinimento, ",
                "Sfinimento, ",
                "Grave sfinimento, ",
            }
        },
        settings = {
            category = {
                game = "Impostazioni di gioco",
                display = "Impostazioni schermo"
            },
            options = {
                difficulty = {
                    label = "Difficoltà",
                    description = "Definisce il numero di debuffs quando i tuoi bisogni sono al minimo."
                },
                decay = {
                    label = "Tasso di decadimento del metabolismo",
                    description = "Definisce la velocità di degradazione (valore > 1 = degradazione lento / valore < 1 = degradazione veloce)."
                },
                effect = {
                    label = "Effetti visivi",
                    description = "Abilita/Disabilita gli effetti visivi quando i tuoi bisogni sono al minimo."
                },
                notif = {
                    label = "Notifiche",
                    description = "Abilita/Disabilita le notifiche automatiche dei livelli dei bisogni."
                },
                warning = {
                    label = "Avvisi di stato",
                    description = "Abilita/Disabilita gli avvisi dettagliati di stato durante le notifiche."
                },
            },
            difficulty = {
                [1] = "Facile",
                [2] = "Normale",
                [3] = "Difficile",
            }
        }
    },
    ["pt-br"] = { -- Brazilian Portuguese
        thirst = "Thirst",
        hunger = "Hunger",
        fatigue = "Fatigue",
        step = {
            thirst = {
                "You are hydrated, ",
                "Low Dehydration, ",
                "Dehydration, ",
                "Severe Dehydration, ",
            },
            hunger = {
                "You are fed, ",
                "Low Undernourishment, ",
                "Undernourishment, ",
                "Severe Undernourishment, ",
            },
            fatigue = {
                "You are rested, ",
                "Low Exhaustion, ",
                "Exhaustion, ",
                "Severe Exhaustion, ",
            }
        },
        settings = {
            category = {
                game = "Game Settings",
                display = "Display Settings"
            },
            options = {
                difficulty = {
                    label = "Difficulty",
                    description = "Defines the amount of debuffs applied when your needs are low."
                },
                decay = {
                    label = "Metabolism decay rate",
                    description = "Defines the needs degradation speed (value > 1 = slower degradation / value < 1 = faster degradation)."
                },
                effect = {
                    label = "Visual effects",
                    description = "Enable/Disable display of visual effects when needs are low."
                },
                notif = {
                    label = "Notifications",
                    description = "Enable/Disable the display of automatic needs level notifications."
                },
                warning = {
                    label = "Status warning",
                    description = "Enable/Disable display of detailed status warning during notifications."
                },
            },
            difficulty = {
                [1] = "Easy",
                [2] = "Normal",
                [3] = "Hard",
            }
        }
    },
    ["pl-pl"] = { -- Polish
        thirst = "Thirst",
        hunger = "Hunger",
        fatigue = "Fatigue",
        step = {
            thirst = {
                "You are hydrated, ",
                "Low Dehydration, ",
                "Dehydration, ",
                "Severe Dehydration, ",
            },
            hunger = {
                "You are fed, ",
                "Low Undernourishment, ",
                "Undernourishment, ",
                "Severe Undernourishment, ",
            },
            fatigue = {
                "You are rested, ",
                "Low Exhaustion, ",
                "Exhaustion, ",
                "Severe Exhaustion, ",
            }
        },
        settings = {
            category = {
                game = "Game Settings",
                display = "Display Settings"
            },
            options = {
                difficulty = {
                    label = "Difficulty",
                    description = "Defines the amount of debuffs applied when your needs are low."
                },
                decay = {
                    label = "Metabolism decay rate",
                    description = "Defines the needs degradation speed (value > 1 = slower degradation / value < 1 = faster degradation)."
                },
                effect = {
                    label = "Visual effects",
                    description = "Enable/Disable display of visual effects when needs are low."
                },
                notif = {
                    label = "Notifications",
                    description = "Enable/Disable the display of automatic needs level notifications."
                },
                warning = {
                    label = "Status warning",
                    description = "Enable/Disable display of detailed status warning during notifications."
                },
            },
            difficulty = {
                [1] = "Easy",
                [2] = "Normal",
                [3] = "Hard",
            }
        }
    },
    ["ru-ru"] = { -- Russian thanks to jaderay
        thirst = "Жажда",
        hunger = "Голод",
        fatigue = "Усталость",
        step = {
            thirst = {
                "Нет нужды в питье, ",
                "Лёгкое обезвоживание, ",
                "Обезвоживание, ",
                "Серьезное обезвоживание, ",
            },
            hunger = {
                "Нет нужды в еде, ",
                "Лёгкое голодание, ",
                "Голодание, ",
                "Серьезное голодание, ",
            },
            fatigue = {
                "Вы в состоянии бодрости, ",
                "Лёгкая усталость, ",
                "Усталость, ",
                "Значительная усталость, ",
            }
        },
        settings = {
            category = {
                game = "Настройки Модификации",
                display = "Настройки Отображения",
            },
            options = {
                difficulty = {
                    label = "Сложность",
                    description = "Определяет количество отрицательных эффектов, применяемых при плохом удовлетворении физиологических потребностей.",
                },
                decay = {
                    label = "Скорость метаболизма",
                    description = "Определяет общую скорость упадка сил (значение > 1 = малое снижение / значение < 1 = большое снижение).",
                },
                effect = {
                    label = "Визуальные эффекты",
                    description = "Включение/выключение отображения визуальных эффектов при низком уровне физиологических потребностей.",
                },
                notif = {
                    label = "Оповещения",
                    description = "Включение/выключение отображения автоматических оповещений об уровне физиологических потребностей.",
                },
                warning = {
                    label = "Предупреждение о состоянии",
                    description = "Включение/выключение отображения подробного предупреждения о состояниях во время оповещений.",
                },
            },
            difficulty = {
                [1] = "Лёгкая",
                [2] = "Средняя",
                [3] = "Сложная",
            }
        }
    },
    ["cz-cz"] = { -- Czech
        thirst = "Thirst",
        hunger = "Hunger",
        fatigue = "Fatigue",
        step = {
            thirst = {
                "You are hydrated, ",
                "Low Dehydration, ",
                "Dehydration, ",
                "Severe Dehydration, ",
            },
            hunger = {
                "You are fed, ",
                "Low Undernourishment, ",
                "Undernourishment, ",
                "Severe Undernourishment, ",
            },
            fatigue = {
                "You are rested, ",
                "Low Exhaustion, ",
                "Exhaustion, ",
                "Severe Exhaustion, ",
            }
        },
        settings = {
            category = {
                game = "Game Settings",
                display = "Display Settings"
            },
            options = {
                difficulty = {
                    label = "Difficulty",
                    description = "Defines the amount of debuffs applied when your needs are low."
                },
                decay = {
                    label = "Metabolism decay rate",
                    description = "Defines the needs degradation speed (value > 1 = slower degradation / value < 1 = faster degradation)."
                },
                effect = {
                    label = "Visual effects",
                    description = "Enable/Disable display of visual effects when needs are low."
                },
                notif = {
                    label = "Notifications",
                    description = "Enable/Disable the display of automatic needs level notifications."
                },
                warning = {
                    label = "Status warning",
                    description = "Enable/Disable display of detailed status warning during notifications."
                },
            },
            difficulty = {
                [1] = "Easy",
                [2] = "Normal",
                [3] = "Hard",
            }
        }
    },
    ["hu-hu"] = { -- Hungarian
        thirst = "Thirst",
        hunger = "Hunger",
        fatigue = "Fatigue",
        step = {
            thirst = {
                "You are hydrated, ",
                "Low Dehydration, ",
                "Dehydration, ",
                "Severe Dehydration, ",
            },
            hunger = {
                "You are fed, ",
                "Low Undernourishment, ",
                "Undernourishment, ",
                "Severe Undernourishment, ",
            },
            fatigue = {
                "You are rested, ",
                "Low Exhaustion, ",
                "Exhaustion, ",
                "Severe Exhaustion, ",
            }
        },
        settings = {
            category = {
                game = "Game Settings",
                display = "Display Settings"
            },
            options = {
                difficulty = {
                    label = "Difficulty",
                    description = "Defines the amount of debuffs applied when your needs are low."
                },
                decay = {
                    label = "Metabolism decay rate",
                    description = "Defines the needs degradation speed (value > 1 = slower degradation / value < 1 = faster degradation)."
                },
                effect = {
                    label = "Visual effects",
                    description = "Enable/Disable display of visual effects when needs are low."
                },
                notif = {
                    label = "Notifications",
                    description = "Enable/Disable the display of automatic needs level notifications."
                },
                warning = {
                    label = "Status warning",
                    description = "Enable/Disable display of detailed status warning during notifications."
                },
            },
            difficulty = {
                [1] = "Easy",
                [2] = "Normal",
                [3] = "Hard",
            }
        }
    },
    ["tr-tr"] = { -- Turkish
        thirst = "Thirst",
        hunger = "Hunger",
        fatigue = "Fatigue",
        step = {
            thirst = {
                "You are hydrated, ",
                "Low Dehydration, ",
                "Dehydration, ",
                "Severe Dehydration, ",
            },
            hunger = {
                "You are fed, ",
                "Low Undernourishment, ",
                "Undernourishment, ",
                "Severe Undernourishment, ",
            },
            fatigue = {
                "You are rested, ",
                "Low Exhaustion, ",
                "Exhaustion, ",
                "Severe Exhaustion, ",
            }
        },
        settings = {
            category = {
                game = "Game Settings",
                display = "Display Settings"
            },
            options = {
                difficulty = {
                    label = "Difficulty",
                    description = "Defines the amount of debuffs applied when your needs are low."
                },
                decay = {
                    label = "Metabolism decay rate",
                    description = "Defines the needs degradation speed (value > 1 = slower degradation / value < 1 = faster degradation)."
                },
                effect = {
                    label = "Visual effects",
                    description = "Enable/Disable display of visual effects when needs are low."
                },
                notif = {
                    label = "Notifications",
                    description = "Enable/Disable the display of automatic needs level notifications."
                },
                warning = {
                    label = "Status warning",
                    description = "Enable/Disable display of detailed status warning during notifications."
                },
            },
            difficulty = {
                [1] = "Easy",
                [2] = "Normal",
                [3] = "Hard",
            }
        }
    },
    ["ar-ar"] = { -- Arabic
        thirst = "Thirst",
        hunger = "Hunger",
        fatigue = "Fatigue",
        step = {
            thirst = {
                "You are hydrated, ",
                "Low Dehydration, ",
                "Dehydration, ",
                "Severe Dehydration, ",
            },
            hunger = {
                "You are fed, ",
                "Low Undernourishment, ",
                "Undernourishment, ",
                "Severe Undernourishment, ",
            },
            fatigue = {
                "You are rested, ",
                "Low Exhaustion, ",
                "Exhaustion, ",
                "Severe Exhaustion, ",
            }
        },
        settings = {
            category = {
                game = "Game Settings",
                display = "Display Settings"
            },
            options = {
                difficulty = {
                    label = "Difficulty",
                    description = "Defines the amount of debuffs applied when your needs are low."
                },
                decay = {
                    label = "Metabolism decay rate",
                    description = "Defines the needs degradation speed (value > 1 = slower degradation / value < 1 = faster degradation)."
                },
                effect = {
                    label = "Visual effects",
                    description = "Enable/Disable display of visual effects when needs are low."
                },
                notif = {
                    label = "Notifications",
                    description = "Enable/Disable the display of automatic needs level notifications."
                },
                warning = {
                    label = "Status warning",
                    description = "Enable/Disable display of detailed status warning during notifications."
                },
            },
            difficulty = {
                [1] = "Easy",
                [2] = "Normal",
                [3] = "Hard",
            }
        }
    },
    ["jp-jp"] = { -- Japanese
        thirst = "Thirst",
        hunger = "Hunger",
        fatigue = "Fatigue",
        step = {
            thirst = {
                "You are hydrated, ",
                "Low Dehydration, ",
                "Dehydration, ",
                "Severe Dehydration, ",
            },
            hunger = {
                "You are fed, ",
                "Low Undernourishment, ",
                "Undernourishment, ",
                "Severe Undernourishment, ",
            },
            fatigue = {
                "You are rested, ",
                "Low Exhaustion, ",
                "Exhaustion, ",
                "Severe Exhaustion, ",
            }
        },
        settings = {
            category = {
                game = "Game Settings",
                display = "Display Settings"
            },
            options = {
                difficulty = {
                    label = "Difficulty",
                    description = "Defines the amount of debuffs applied when your needs are low."
                },
                decay = {
                    label = "Metabolism decay rate",
                    description = "Defines the needs degradation speed (value > 1 = slower degradation / value < 1 = faster degradation)."
                },
                effect = {
                    label = "Visual effects",
                    description = "Enable/Disable display of visual effects when needs are low."
                },
                notif = {
                    label = "Notifications",
                    description = "Enable/Disable the display of automatic needs level notifications."
                },
                warning = {
                    label = "Status warning",
                    description = "Enable/Disable display of detailed status warning during notifications."
                },
            },
            difficulty = {
                [1] = "Easy",
                [2] = "Normal",
                [3] = "Hard",
            }
        }
    },
    ["kr-kr"] = { -- Korean
        thirst = "Thirst",
        hunger = "Hunger",
        fatigue = "Fatigue",
        step = {
            thirst = {
                "You are hydrated, ",
                "Low Dehydration, ",
                "Dehydration, ",
                "Severe Dehydration, ",
            },
            hunger = {
                "You are fed, ",
                "Low Undernourishment, ",
                "Undernourishment, ",
                "Severe Undernourishment, ",
            },
            fatigue = {
                "You are rested, ",
                "Low Exhaustion, ",
                "Exhaustion, ",
                "Severe Exhaustion, ",
            }
        },
        settings = {
            category = {
                game = "Game Settings",
                display = "Display Settings"
            },
            options = {
                difficulty = {
                    label = "Difficulty",
                    description = "Defines the amount of debuffs applied when your needs are low."
                },
                decay = {
                    label = "Metabolism decay rate",
                    description = "Defines the needs degradation speed (value > 1 = slower degradation / value < 1 = faster degradation)."
                },
                effect = {
                    label = "Visual effects",
                    description = "Enable/Disable display of visual effects when needs are low."
                },
                notif = {
                    label = "Notifications",
                    description = "Enable/Disable the display of automatic needs level notifications."
                },
                warning = {
                    label = "Status warning",
                    description = "Enable/Disable display of detailed status warning during notifications."
                },
            },
            difficulty = {
                [1] = "Easy",
                [2] = "Normal",
                [3] = "Hard",
            }
        }
    },
    ["zh-cn"] = { -- Simplified Chinese
        thirst = "Thirst",
        hunger = "Hunger",
        fatigue = "Fatigue",
        step = {
            thirst = {
                "You are hydrated, ",
                "Low Dehydration, ",
                "Dehydration, ",
                "Severe Dehydration, ",
            },
            hunger = {
                "You are fed, ",
                "Low Undernourishment, ",
                "Undernourishment, ",
                "Severe Undernourishment, ",
            },
            fatigue = {
                "You are rested, ",
                "Low Exhaustion, ",
                "Exhaustion, ",
                "Severe Exhaustion, ",
            }
        },
        settings = {
            category = {
                game = "Game Settings",
                display = "Display Settings"
            },
            options = {
                difficulty = {
                    label = "Difficulty",
                    description = "Defines the amount of debuffs applied when your needs are low."
                },
                decay = {
                    label = "Metabolism decay rate",
                    description = "Defines the needs degradation speed (value > 1 = slower degradation / value < 1 = faster degradation)."
                },
                effect = {
                    label = "Visual effects",
                    description = "Enable/Disable display of visual effects when needs are low."
                },
                notif = {
                    label = "Notifications",
                    description = "Enable/Disable the display of automatic needs level notifications."
                },
                warning = {
                    label = "Status warning",
                    description = "Enable/Disable display of detailed status warning during notifications."
                },
            },
            difficulty = {
                [1] = "Easy",
                [2] = "Normal",
                [3] = "Hard",
            }
        }
    },
    ["zh-tw"] = { -- Traditional Chinese
        thirst = "Thirst",
        hunger = "Hunger",
        fatigue = "Fatigue",
        step = {
            thirst = {
                "You are hydrated, ",
                "Low Dehydration, ",
                "Dehydration, ",
                "Severe Dehydration, ",
            },
            hunger = {
                "You are fed, ",
                "Low Undernourishment, ",
                "Undernourishment, ",
                "Severe Undernourishment, ",
            },
            fatigue = {
                "You are rested, ",
                "Low Exhaustion, ",
                "Exhaustion, ",
                "Severe Exhaustion, ",
            }
        },
        settings = {
            category = {
                game = "Game Settings",
                display = "Display Settings"
            },
            options = {
                difficulty = {
                    label = "Difficulty",
                    description = "Defines the amount of debuffs applied when your needs are low."
                },
                decay = {
                    label = "Metabolism decay rate",
                    description = "Defines the needs degradation speed (value > 1 = slower degradation / value < 1 = faster degradation)."
                },
                effect = {
                    label = "Visual effects",
                    description = "Enable/Disable display of visual effects when needs are low."
                },
                notif = {
                    label = "Notifications",
                    description = "Enable/Disable the display of automatic needs level notifications."
                },
                warning = {
                    label = "Status warning",
                    description = "Enable/Disable display of detailed status warning during notifications."
                },
            },
            difficulty = {
                [1] = "Easy",
                [2] = "Normal",
                [3] = "Hard",
            }
        }
    },
    ["th-th"] = { -- Thai
        thirst = "Thirst",
        hunger = "Hunger",
        fatigue = "Fatigue",
        step = {
            thirst = {
                "You are hydrated, ",
                "Low Dehydration, ",
                "Dehydration, ",
                "Severe Dehydration, ",
            },
            hunger = {
                "You are fed, ",
                "Low Undernourishment, ",
                "Undernourishment, ",
                "Severe Undernourishment, ",
            },
            fatigue = {
                "You are rested, ",
                "Low Exhaustion, ",
                "Exhaustion, ",
                "Severe Exhaustion, ",
            }
        },
        settings = {
            category = {
                game = "Game Settings",
                display = "Display Settings"
            },
            options = {
                difficulty = {
                    label = "Difficulty",
                    description = "Defines the amount of debuffs applied when your needs are low."
                },
                decay = {
                    label = "Metabolism decay rate",
                    description = "Defines the needs degradation speed (value > 1 = slower degradation / value < 1 = faster degradation)."
                },
                effect = {
                    label = "Visual effects",
                    description = "Enable/Disable display of visual effects when needs are low."
                },
                notif = {
                    label = "Notifications",
                    description = "Enable/Disable the display of automatic needs level notifications."
                },
                warning = {
                    label = "Status warning",
                    description = "Enable/Disable display of detailed status warning during notifications."
                },
            },
            difficulty = {
                [1] = "Easy",
                [2] = "Normal",
                [3] = "Hard",
            }
        }
    }
}

return Strings
