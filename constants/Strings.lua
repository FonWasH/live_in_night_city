local Strings = {
    ["en-us"] = { -- English
        thirst = "Thirst",
        hunger = "Hunger",
        fatigue = "Fatigue",
        step = {
            thirst = {"You are hydrated, ", "Low Dehydration, ", "Dehydration, ", "Severe Dehydration, "},
            hunger = {"You are fed, ", "Low Undernourishment, ", "Undernourishment, ", "Severe Undernourishment, "},
            fatigue = {"You are rested, ", "Low Exhaustion, ", "Exhaustion, ", "Severe Exhaustion, "}
        },
        settings = {
            category = {
                game = "Game Settings",
                thirst = "Thirst Settings",
                hunger = "Hunger Settings",
                fatigue = "Fatigue Settings",
                display = "Display Settings"
            },
            options = {
                game = {
                    gamepad = {
                        label = "Gamepad",
                        description = "Enable/Disable Gamepad Support (Left D-pad)"
                    },
                    difficulty = {
                        label = "Difficulty",
                        description = "Defines the amount of debuffs applied when your needs are low.",
                        mode = {
                            [1] = "Easy",
                            [2] = "Normal",
                            [3] = "Hard"
                        }
                    }
                },
                thirst = {
                    dayPool = {
                        label = "Thirst reserve (in-game days)",
                        description = "Sets thirst reserve in number of game days."
                    },
                    regenMultiplier = {
                        label = "Thirst regeneration multiplier",
                        description = "Sets the multiplier on all regenerations applied to thirst."
                    },
                    costMultiplier = {
                        label = "Thirst cost multiplier",
                        description = "Sets the multiplier on all costs applied to thirst."
                    }
                },
                hunger = {
                    dayPool = {
                        label = "Hunger reserve (in-game days)",
                        description = "Sets hunger reserve in number of game days."
                    },
                    regenMultiplier = {
                        label = "Hunger regeneration multiplier",
                        description = "Sets the multiplier on all regenerations applied to hunger."
                    },
                    costMultiplier = {
                        label = "Hunger cost multiplier",
                        description = "Sets the multiplier on all costs applied to hunger."
                    }
                },
                fatigue = {
                    dayPool = {
                        label = "Fatigue reserve (in-game days)",
                        description = "Sets fatigue reserve in number of game days."
                    },
                    regenMultiplier = {
                        label = "Fatigue regeneration multiplier",
                        description = "Sets the multiplier on all regenerations applied to fatigue."
                    },
                    costMultiplier = {
                        label = "Fatigue cost multiplier",
                        description = "Sets the multiplier on all costs applied to fatigue."
                    }
                },
                display = {
                    notif = {
                        label = "Notifications",
                        description = "Enable/Disable the display of automatic needs level notifications."
                    },
                    warning = {
                        label = "Status warning",
                        description = "Enable/Disable display of detailed status warning during notifications."
                    }
                }
            }
        }
    },
    ["fr-fr"] = { -- French
        thirst = "Soif",
        hunger = "Faim",
        fatigue = "Fatigue",
        step = {
            thirst = {"Vous êtes hydraté, ", "Déshydratation Légère, ", "Déshydratation, ", "Déshydratation Grave, "},
            hunger = {"Vous êtes nourris, ", "Sous-alimentation Légère, ", "Sous-alimentation, ", "Sous-alimentation Grave, "},
            fatigue = {"Vous êtes reposé, ", "Épuisement Léger, ", "Épuisement, ", "Épuisement Grave, "}
        },
        settings = {
            category = {
                game = "Paramètres de Jeu",
                thirst = "Paramètres de la Soif",
                hunger = "Paramètres de la Faim",
                fatigue = "Paramètres de la Fatigue",
                display = "Paramètres d'Affichage"
            },
            options = {
                game = {
                    gamepad = {
                        label = "Manette",
                        description = "Activer/Désactiver la prise en charge de la manette (D-pad gauche)"
                    },
                    difficulty = {
                        label = "Difficulté",
                        description = "Définit la quantité de malus appliqués quand vos besoins sont bas.",
                        mode = {
                            [1] = "Facile",
                            [2] = "Normal",
                            [3] = "Difficile"
                        }
                    }
                },
                thirst = {
                    dayPool = {
                        label = "Réserve de soif (en jours de jeu)",
                        description = "Définit la réserve de soif en nombre de jours du jeu."
                    },
                    regenMultiplier = {
                        label = "Multiplicateur de régénération de la soif",
                        description = "Définit le multiplicateur sur toutes les régénérations appliqués à la soif."
                    },
                    costMultiplier = {
                        label = "Multiplicateur des coûts de la soif",
                        description = "Définit le multiplicateur sur toutes les coûts appliqués à la soif."
                    }
                },
                hunger = {
                    dayPool = {
                        label = "Réserve de faim (en jours de jeu)",
                        description = "Définit la réserve de faim en nombre de jours du jeu."
                    },
                    regenMultiplier = {
                        label = "Multiplicateur de régénération de la faim",
                        description = "Définit le multiplicateur sur toutes les régénérations appliqués à la faim."
                    },
                    costMultiplier = {
                        label = "Multiplicateur des coûts de la faim",
                        description = "Définit le multiplicateur sur toutes les coûts appliqués à la faim."
                    }
                },
                fatigue = {
                    dayPool = {
                        label = "Réserve de fatigue (en jours de jeu)",
                        description = "Définit la réserve de fatigue en nombre de jours du jeu."
                    },
                    regenMultiplier = {
                        label = "Multiplicateur de régénération de la fatigue",
                        description = "Définit le multiplicateur sur toutes les régénérations appliqués à la fatigue."
                    },
                    costMultiplier = {
                        label = "Multiplicateur des coûts de la fatigue",
                        description = "Définit le multiplicateur sur toutes les coûts appliqués à la fatigue."
                    }
                },
                display = {
                    notif = {
                        label = "Notifications",
                        description = "Activer/Désactiver l'affichage des notifications automatiques du niveau des besoins."
                    },
                    warning = {
                        label = "Avertissement d'état",
                        description = "Activer/Désactiver l'affichage de l'avertissement d'état détaillé pendant les notifications."
                    }
                }
            }
        }
    },
    ["de-de"] = { -- German
        thirst = "Durst",
        hunger = "Hunger",
        fatigue = "Ermüdung",
        step = {
            thirst = {"Sie sind hydratisiert, ", "Niedrige Austrocknung, ", "Austrocknung, ", "Schwere Austrocknung, "},
            hunger = {"Du bist satt, ", "Niedrige Unterernährung, ", "Unterernährung, ", "Schwere Unterernährung, "},
            fatigue = {"Sie sind ausgeruht, ", "Niedrige Erschöpfung, ", "Erschöpfung, ", "Schwere Erschöpfung, "}
        },
        settings = {
            category = {
                game = "Spieleinstellungen",
                thirst = "Dursteinstellungen",
                hunger = "Hungereinstellungen",
                fatigue = "Ermüdungseinstellungen",
                display = "Bildschirmeinstellungen"
            },
            options = {
                game = {
                    gamepad = {
                        label = "Gamepad",
                        description = "Gamepad-Unterstützung aktivieren/deaktivieren (linkes D-Pad)"
                    },
                    difficulty = {
                        label = "Schwierigkeit",
                        description = "Definiert die Menge an Debuffs, die angewendet werden, wenn Ihre Bedürfnisse gering sind.",
                        mode = {
                            [1] = "Leicht",
                            [2] = "Normal",
                            [3] = "Schwer"
                        }
                    }
                },
                thirst = {
                    dayPool = {
                        label = "Durstreserve (tage im spiel)",
                        description = "Legt den Durstreserve in der Anzahl der Spieltage fest."
                    },
                    regenMultiplier = {
                        label = "Durstregenerationsmultiplikator",
                        description = "Legt den Multiplikator für alle auf Durst angewendeten Regenerationen fest."
                    },
                    costMultiplier = {
                        label = "Durstkostenmultiplikator",
                        description = "Legt den Multiplikator für alle auf Durst angewendeten Kosten fest."
                    }
                },
                hunger = {
                    dayPool = {
                        label = "Hungerreserve (tage im spiel)",
                        description = "Legt den Hungerreserve in der Anzahl der Spieltage fest."
                    },
                    regenMultiplier = {
                        label = "Hungerregenerationsmultiplikator",
                        description = "Legt den Multiplikator für alle auf Hunger angewendeten Regenerationen fest."
                    },
                    costMultiplier = {
                        label = "Hungerkostenmultiplikator",
                        description = "Legt den Multiplikator für alle auf Hunger angewendeten Kosten fest."
                    }
                },
                fatigue = {
                    dayPool = {
                        label = "Ermüdungreserve (tage im spiel)",
                        description = "Legt den Ermüdungsreserve in Anzahl der Spieltage fest."
                    },
                    regenMultiplier = {
                        label = "Ermüdungsregenerationsmultiplikator",
                        description = "Legt den Multiplikator für alle auf Ermüdung angewendeten Regenerationen fest."
                    },
                    costMultiplier = {
                        label = "Ermüdungskostenmultiplikator",
                        description = "Legt den Multiplikator für alle auf Ermüdung angewendeten Kosten fest."
                    }
                },
                display = {
                    notif = {
                        label = "Benachrichtigungen",
                        description = "Aktivieren/Deaktivieren Sie die Anzeige automatischer Benachrichtigungen zum Bedarfsniveau."
                    },
                    warning = {
                        label = "Statuswarnung",
                        description = "Aktivieren/Deaktivieren der Anzeige detaillierter Statuswarnungen während Benachrichtigungen."
                    }
                }
            }
        }
    },
    ["es-es"] = { -- Spanish
        thirst = "Sed",
        hunger = "Hambre",
        fatigue = "Fatiga",
        step = {
            thirst = {"You are hydrated, ", "Low Dehydration, ", "Dehydration, ", "Severe Dehydration, "},
            hunger = {"You are fed, ", "Low Undernourishment, ", "Undernourishment, ", "Severe Undernourishment, "},
            fatigue = {"You are rested, ", "Low Exhaustion, ", "Exhaustion, ", "Severe Exhaustion, "}
        },
        settings = {
            category = {
                game = "Game Settings",
                thirst = "Thirst Settings",
                hunger = "Hunger Settings",
                fatigue = "Fatigue Settings",
                display = "Display Settings"
            },
            options = {
                game = {
                    gamepad = {
                        label = "Gamepad",
                        description = "Enable/Disable Gamepad Support (Left D-pad)"
                    },
                    difficulty = {
                        label = "Difficulty",
                        description = "Defines the amount of debuffs applied when your needs are low.",
                        mode = {
                            [1] = "Easy",
                            [2] = "Normal",
                            [3] = "Hard"
                        }
                    }
                },
                thirst = {
                    dayPool = {
                        label = "Thirst reserve (in-game days)",
                        description = "Sets thirst reserve in number of game days."
                    },
                    regenMultiplier = {
                        label = "Thirst regeneration multiplier",
                        description = "Sets the multiplier on all regenerations applied to thirst."
                    },
                    costMultiplier = {
                        label = "Thirst cost multiplier",
                        description = "Sets the multiplier on all costs applied to thirst."
                    }
                },
                hunger = {
                    dayPool = {
                        label = "Hunger reserve (in-game days)",
                        description = "Sets hunger reserve in number of game days."
                    },
                    regenMultiplier = {
                        label = "Hunger regeneration multiplier",
                        description = "Sets the multiplier on all regenerations applied to hunger."
                    },
                    costMultiplier = {
                        label = "Hunger cost multiplier",
                        description = "Sets the multiplier on all costs applied to hunger."
                    }
                },
                fatigue = {
                    dayPool = {
                        label = "Fatigue reserve (in-game days)",
                        description = "Sets fatigue reserve in number of game days."
                    },
                    regenMultiplier = {
                        label = "Fatigue regeneration multiplier",
                        description = "Sets the multiplier on all regenerations applied to fatigue."
                    },
                    costMultiplier = {
                        label = "Fatigue cost multiplier",
                        description = "Sets the multiplier on all costs applied to fatigue."
                    }
                },
                display = {
                    notif = {
                        label = "Notifications",
                        description = "Enable/Disable the display of automatic needs level notifications."
                    },
                    warning = {
                        label = "Status warning",
                        description = "Enable/Disable display of detailed status warning during notifications."
                    }
                }
            }
        }
    },
    ["es-mx"] = { -- Spanish
        thirst = "Thirst",
        hunger = "Hunger",
        fatigue = "Fatigue",
        step = {
            thirst = {"You are hydrated, ", "Low Dehydration, ", "Dehydration, ", "Severe Dehydration, "},
            hunger = {"You are fed, ", "Low Undernourishment, ", "Undernourishment, ", "Severe Undernourishment, "},
            fatigue = {"You are rested, ", "Low Exhaustion, ", "Exhaustion, ", "Severe Exhaustion, "}
        },
        settings = {
            category = {
                game = "Game Settings",
                thirst = "Thirst Settings",
                hunger = "Hunger Settings",
                fatigue = "Fatigue Settings",
                display = "Display Settings"
            },
            options = {
                game = {
                    gamepad = {
                        label = "Gamepad",
                        description = "Enable/Disable Gamepad Support (Left D-pad)"
                    },
                    difficulty = {
                        label = "Difficulty",
                        description = "Defines the amount of debuffs applied when your needs are low.",
                        mode = {
                            [1] = "Easy",
                            [2] = "Normal",
                            [3] = "Hard"
                        }
                    }
                },
                thirst = {
                    dayPool = {
                        label = "Thirst reserve (in-game days)",
                        description = "Sets thirst reserve in number of game days."
                    },
                    regenMultiplier = {
                        label = "Thirst regeneration multiplier",
                        description = "Sets the multiplier on all regenerations applied to thirst."
                    },
                    costMultiplier = {
                        label = "Thirst cost multiplier",
                        description = "Sets the multiplier on all costs applied to thirst."
                    }
                },
                hunger = {
                    dayPool = {
                        label = "Hunger reserve (in-game days)",
                        description = "Sets hunger reserve in number of game days."
                    },
                    regenMultiplier = {
                        label = "Hunger regeneration multiplier",
                        description = "Sets the multiplier on all regenerations applied to hunger."
                    },
                    costMultiplier = {
                        label = "Hunger cost multiplier",
                        description = "Sets the multiplier on all costs applied to hunger."
                    }
                },
                fatigue = {
                    dayPool = {
                        label = "Fatigue reserve (in-game days)",
                        description = "Sets fatigue reserve in number of game days."
                    },
                    regenMultiplier = {
                        label = "Fatigue regeneration multiplier",
                        description = "Sets the multiplier on all regenerations applied to fatigue."
                    },
                    costMultiplier = {
                        label = "Fatigue cost multiplier",
                        description = "Sets the multiplier on all costs applied to fatigue."
                    }
                },
                display = {
                    notif = {
                        label = "Notifications",
                        description = "Enable/Disable the display of automatic needs level notifications."
                    },
                    warning = {
                        label = "Status warning",
                        description = "Enable/Disable display of detailed status warning during notifications."
                    }
                }
            }
        }
    },
    ["it-it"] = { -- Italian thanks to SabP
        thirst = "Sete",
        hunger = "Fame",
        fatigue = "Stanchezza",
        step = {
            thirst = {"Sei idratato, ", "Bassa disidratazione, ", "Disidratazione, ", "Grave disidratazione, "},
            hunger = {"Sei sazio, ", "Lievemente denutrito, ", "Denutrito, ", "Grave denutrizione, "},
            fatigue = {"Sei riposato, ", "Lieve sfinimento, ", "Sfinimento, ", "Grave sfinimento, "}
        },
        settings = {
            category = {
                game = "Impostazioni di gioco",
                thirst = "Impostazioni della sete",
                hunger = "Impostazioni della fame",
                fatigue = "Impostazioni di fatica",
                display = "Impostazioni schermo"
            },
            options = {
                game = {
                    gamepad = {
                        label = "Gamepad",
                        description = "Abilita/Disabilita il supporto del gamepad (D-pad sinistro)"
                    },
                    difficulty = {
                        label = "Difficoltà",
                        description = "Definisce il numero di debuffs quando i tuoi bisogni sono al minimo.",
                        mode = {
                            [1] = "Facile",
                            [2] = "Normale",
                            [3] = "Difficile"
                        }
                    }
                },
                thirst = {
                    dayPool = {
                        label = "Sete Riserva (nei giorni di gioco)",
                        description = "Imposta la riserva di sete nel numero di giorni di gioco."
                    },
                    regenMultiplier = {
                        label = "Moltiplicatore di rigenerazione della sete",
                        description = "Imposta il moltiplicatore su tutta la rigenerazione applicata alla sete."
                    },
                    costMultiplier = {
                        label = "Moltiplicatore del costo della sete",
                        description = "Imposta il moltiplicatore di tutti i costi applicati alla sete."
                    }
                },
                hunger = {
                    dayPool = {
                        label = "Riserva fame (nei giorni di gioco)",
                        description = "Imposta la riserva di fame in numero di giorni di gioco."
                    },
                    regenMultiplier = {
                        label = "Moltiplicatore di rigenerazione della fame",
                        description = "Imposta il moltiplicatore su tutte le rigenerazioni applicate alla fame."
                    },
                    costMultiplier = {
                        label = "Moltiplicatore del costo della fame",
                        description = "Imposta il moltiplicatore di tutti i costi applicati alla fame."
                    }
                },
                fatigue = {
                    dayPool = {
                        label = "Pool di fatica (nei giorni di gioco)",
                        description = "Imposta la riserva di fatica in numero di giorni di gioco."
                    },
                    regenMultiplier = {
                        label = "Moltiplicatore di rigenerazione della fatica",
                        description = "Imposta il moltiplicatore su tutte le rigenerazioni applicate alla fatica."
                    },
                    costMultiplier = {
                        label = "Moltiplicatore del costo della fatica",
                        description = "Imposta il moltiplicatore di tutti i costi applicati alla fatica."
                    }
                },
                display = {
                    notif = {
                        label = "Notifiche",
                        description = "Abilita/Disabilita le notifiche automatiche dei livelli dei bisogni."
                    },
                    warning = {
                        label = "Avvisi di stato",
                        description = "Abilita/Disabilita gli avvisi dettagliati di stato durante le notifiche."
                    }
                }
            }
        }
    },
    ["pt-br"] = { -- Brazilian Portuguese
        thirst = "Thirst",
        hunger = "Hunger",
        fatigue = "Fatigue",
        step = {
            thirst = {"You are hydrated, ", "Low Dehydration, ", "Dehydration, ", "Severe Dehydration, "},
            hunger = {"You are fed, ", "Low Undernourishment, ", "Undernourishment, ", "Severe Undernourishment, "},
            fatigue = {"You are rested, ", "Low Exhaustion, ", "Exhaustion, ", "Severe Exhaustion, "}
        },
        settings = {
            category = {
                game = "Game Settings",
                thirst = "Thirst Settings",
                hunger = "Hunger Settings",
                fatigue = "Fatigue Settings",
                display = "Display Settings"
            },
            options = {
                game = {
                    gamepad = {
                        label = "Gamepad",
                        description = "Enable/Disable Gamepad Support (Left D-pad)"
                    },
                    difficulty = {
                        label = "Difficulty",
                        description = "Defines the amount of debuffs applied when your needs are low.",
                        mode = {
                            [1] = "Easy",
                            [2] = "Normal",
                            [3] = "Hard"
                        }
                    }
                },
                thirst = {
                    dayPool = {
                        label = "Thirst reserve (in-game days)",
                        description = "Sets thirst reserve in number of game days."
                    },
                    regenMultiplier = {
                        label = "Thirst regeneration multiplier",
                        description = "Sets the multiplier on all regenerations applied to thirst."
                    },
                    costMultiplier = {
                        label = "Thirst cost multiplier",
                        description = "Sets the multiplier on all costs applied to thirst."
                    }
                },
                hunger = {
                    dayPool = {
                        label = "Hunger reserve (in-game days)",
                        description = "Sets hunger reserve in number of game days."
                    },
                    regenMultiplier = {
                        label = "Hunger regeneration multiplier",
                        description = "Sets the multiplier on all regenerations applied to hunger."
                    },
                    costMultiplier = {
                        label = "Hunger cost multiplier",
                        description = "Sets the multiplier on all costs applied to hunger."
                    }
                },
                fatigue = {
                    dayPool = {
                        label = "Fatigue reserve (in-game days)",
                        description = "Sets fatigue reserve in number of game days."
                    },
                    regenMultiplier = {
                        label = "Fatigue regeneration multiplier",
                        description = "Sets the multiplier on all regenerations applied to fatigue."
                    },
                    costMultiplier = {
                        label = "Fatigue cost multiplier",
                        description = "Sets the multiplier on all costs applied to fatigue."
                    }
                },
                display = {
                    notif = {
                        label = "Notifications",
                        description = "Enable/Disable the display of automatic needs level notifications."
                    },
                    warning = {
                        label = "Status warning",
                        description = "Enable/Disable display of detailed status warning during notifications."
                    }
                }
            }
        }
    },
    ["pl-pl"] = { -- Polish
        thirst = "Pragnienie",
        hunger = "Głód",
        fatigue = "Zmęczenie",
        step = {
            thirst = {"Odpowiednie nawodnienie, ", "Lekkie odwodnienie, ", "Odwodnienie, ", "Poważne odwodnienie, "},
            hunger = {"Odpowiednie odżywienie, ", "Lekkie niedożywienie, ", "Niedożywienie, ", "Poważne niedożywienie, "},
            fatigue = {"Odpowiednie wypoczęcie, ", "Lekkie zmęczenie, ", "Zmęczenie, ", "Poważne zmęczenie, "}
        },
        settings = {
            category = {
                game = "Ustawienia gry",
                thirst = "Ustawienia pragnienia",
                hunger = "Ustawienia głodu",
                fatigue = "Ustawienia zmęczenia",
                display = "Ustawienia wyświetlania"
            },
            options = {
                game = {
                    gamepad = {
                        label = "Gamepad",
                        description = "Włącza/Wyłącza wsparcie Gamepada (Lewy D-pad)"
                    },
                    difficulty = {
                        label = "Trudność",
                        description = "Określa ilość stosowanych osłabień, gdy twoje potrzeby mają niski poziom.",
                        mode = {
                            [1] = "Łatwy",
                            [2] = "Normalny",
                            [3] = "Trudny"
                        }
                    }
                },
                thirst = {
                    dayPool = {
                        label = "Rezerwa pragnienia (dni w grze)",
                        description = "Ustawia rezerwę pragnienia w liczbie dni gry."
                    },
                    regenMultiplier = {
                        label = "Mnożnik regeneracji pragnienia",
                        description = "Ustawia mnożnik dla wszystkich regeneracji zastosowanych do pragnienia."
                    },
                    costMultiplier = {
                        label = "Mnożnik kosztów pragnienia",
                        description = "Ustawia mnożnik wszystkich kosztów związanych z pragnieniem."
                    }
                },
                hunger = {
                    dayPool = {
                        label = "Rezerwa głodu (dni w grze)",
                        description = "Ustawia rezerwę głodową w liczbie dni gry."
                    },
                    regenMultiplier = {
                        label = "Mnożnik regeneracji głodowej",
                        description = "Ustawia mnożnik dla wszystkich regeneracji zastosowanych do głodu."
                    },
                    costMultiplier = {
                        label = "Mnożnik kosztów głodu",
                        description = "Ustawia mnożnik wszystkich kosztów stosowanych do głodu."
                    }
                },
                fatigue = {
                    dayPool = {
                        label = "Rezerwa zmęczenia (dni w grze)",
                        description = "Ustawia rezerwę zmęczenia w liczbie dni gry."
                    },
                    regenMultiplier = {
                        label = "Mnożnik regeneracji zmęczeniowej",
                        description = "Ustawia mnożnik dla wszystkich regeneracji stosowanych do zmęczenia."
                    },
                    costMultiplier = {
                        label = "Mnożnik kosztów zmęczenia",
                        description = "Ustawia mnożnik wszystkich kosztów związanych ze zmęczeniem."
                    }
                },
                display = {
                    notif = {
                        label = "Powiadomienia",
                        description = "Włącza/Wyłącza wyświetlanie automatycznych powiadomień o poziomie potrzeb."
                    },
                    warning = {
                        label = "Ostrzeżenie o stanie",
                        description = "Włącza/Wyłącza wyświetlanie szczegółowego ostrzeżenia o stanie podczas powiadomień."
                    }
                }
            }
        }
    },
    ["ru-ru"] = { -- Russian thanks to jaderay
        thirst = "Жажда",
        hunger = "Голод",
        fatigue = "Усталость",
        step = {
            thirst = {"Нет нужды в питье, ", "Лёгкое обезвоживание, ", "Обезвоживание, ", "Серьезное обезвоживание, "},
            hunger = {"Нет нужды в еде, ", "Лёгкое голодание, ", "Голодание, ", "Серьезное голодание, "},
            fatigue = {"Вы в состоянии бодрости, ", "Лёгкая усталость, ", "Усталость, ", "Значительная усталость, "}
        },
        settings = {
            category = {
                game = "Настройки Модификации",
                thirst = "Настройки жажды",
                hunger = "Настройки голода",
                fatigue = "Настройки усталости",
                display = "Настройки Отображения"
            },
            options = {
                game = {
                    gamepad = {
                        label = "Геймпад",
                        description = "Включить/отключить поддержку геймпада (левый крестовина)"
                    },
                    difficulty = {
                        label = "Сложность",
                        description = "Определяет количество отрицательных эффектов, применяемых при плохом удовлетворении физиологических потребностей.",
                        mode = {
                            [1] = "Лёгкая",
                            [2] = "Средняя",
                            [3] = "Сложная"
                        }
                    }
                },
                thirst = {
                    dayPool = {
                        label = "Запас жажды (игровые дни)",
                        description = "Устанавливает запас жажду в количестве игровых дней."
                    },
                    regenMultiplier = {
                        label = "Множитель регенерации жажды",
                        description = "Устанавливает множитель для всех регенераций, применяемых к жажды."
                    },
                    costMultiplier = {
                        label = "Множитель стоимости жажды",
                        description = "Устанавливает множитель для всех затрат, применяемых к жажды."
                    }
                },
                hunger = {
                    dayPool = {
                        label = "Запас голода (игровые дни)",
                        description = "Устанавливает запас голода в количестве игровых дней."
                    },
                    regenMultiplier = {
                        label = "Множитель регенерации от голода",
                        description = "Устанавливает множитель для всех регенераций, применяемых к голода."
                    },
                    costMultiplier = {
                        label = "Множитель стоимости голода",
                        description = "Устанавливает множитель для всех затрат, применяемых к голода."
                    }
                },
                fatigue = {
                    dayPool = {
                        label = "Запас усталости (игровые дни)",
                        description = "Устанавливает запас усталости в количестве игровых дней."
                    },
                    regenMultiplier = {
                        label = "Множитель регенерации усталости",
                        description = "Устанавливает множитель для всех регенераций, применяемых к усталости."
                    },
                    costMultiplier = {
                        label = "Множитель стоимости усталости",
                        description = "Устанавливает множитель для всех затрат, применяемых к усталости."
                    }
                },
                display = {
                    notif = {
                        label = "Оповещения",
                        description = "Включение/выключение отображения автоматических оповещений об уровне физиологических потребностей."
                    },
                    warning = {
                        label = "Предупреждение о состоянии",
                        description = "Включение/выключение отображения подробного предупреждения о состояниях во время оповещений."
                    }
                }
            }
        }
    },
    ["cz-cz"] = { -- Czech thanks to Ilyatim2000
        thirst = "Žízeň",
        hunger = "Hlad",
        fatique = "Unavený",
        step = {
            thirst = {"Jsi hydratovaný, ", "Nízká dehydratace, ", "Dehydratace, ", "Silná dehydratace, "},
            hunger = {"Jsi nakrmený, ", "Nízká podvýživa, ", "Podvýživa, ", "Silná podvýživa, "},
            fatique = {"Jsi odpocinutý, ", "Nízké vycerpání, ", "Vicerpání, ", "Težké vycerpání, "}
        },
        settings = {
            category = {
                game = "Nastavení hry",
                thirst = "Nastavení žízne",
                hunger = "Nastavení hladu",
                fatique = "Nastavení únavy",
                display = "Nastavení displeje"
            },
            options = {
                game = {
                    gamepad = {
                        label = "Gamepad",
                        description = "Povolit/zakázat podporu gamepadu (levý D-pad)"
                    },
                    difficulty = {
                        label = "Obtížnost",
                        description = "Definuje množství debuffu aplikovaných, když jsou vaše potreby nízké.",
                        mode = {
                            [1] = "Snadné",
                            [2] = "Normální",
                            [3] = "Težké"
                        }
                    }
                },
                thirst = {
                    dayPool = {
                        label = "Rezerva žízne (ve hre dny)",
                        description = "Nastavuje rezervu žízne v po?tu herních dnu."
                    },
                    regenMultiplier = {
                        label = "Multiplikátor regenerace žízne",
                        description = "Nastaví multiplikátor na všechny regenerace aplikované na žízen."
                    },
                    costMultiplier = {
                        label = "Multiplikátor nákladu na žízen",
                        description = "Nastaví násobitel všech nákladu aplikovaných na žízen."
                    }
                },
                hunger = {
                    dayPool = {
                        label = "Hladová rezerva (ve hre dny)",
                        description = "Nastavuje rezervu hladu v po?tu herních dnu."
                    },
                    regenMultiplier = {
                        label = "Multiplikátor regenerace hladu",
                        description = "Nastaví multiplikátor na všechny regenerace aplikované na hlad."
                    },
                    costMultiplier = {
                        label = "Násobitel hladových nákladu",
                        description = "Nastaví násobitel všech nákladu aplikovaných na hlad."
                    }
                },
                fatique = {
                    dayPool = {
                        label = "Rezerva únavy (ve hre dny)",
                        description = "Nastaví rezervu únavy v poctu herních dnu."
                    },
                    regenMultiplier = {
                        label = "Multiplikátor regenerace únavy",
                        description = "Nastaví multiplikátor na všechny regenerace aplikované na únavu."
                    },
                    costMultiplier = {
                        label = "Multiplikátor nákladu na únavu",
                        description = "Nastaví multiplikátor na všechny náklady aplikované na únavu."
                    }
                },
                display = {
                    notif = {
                        label = "Oznámení",
                        description = "Povolit/zakázat zobrazování automatických upozornení na úrovni potreb."
                    },
                    warning = {
                        label = "Upozornení na stav",
                        description = "Povolit/zakázat zobrazování podrobného upozornení na stav behem upozornení."
                    }
                }
            }
        }
    },
    ["hu-hu"] = { -- Hungarian thanks to Ilyatim2000
        thirst = "Szomjúság",
        hunger = "Éhezés",
        fatigue = "Fáradtság",
        step = {
            thirst = {"Te hidratált, ", "Alascony Kiszáradás, ", "Kiszáradás, ", "Súlyos kiszáradás, "},
            hunger = {"Te etetik, ", "Alascony alultápláltság, ", "Alultápláltság, ", "Súlyos alultápláltság, "},
            fatique = {"Te pihent, ", "Alascony kimerültség, ", "Kimerültség, ", "Súlyos kimerültség, "}
        },
        settings = {
            category = {
                game = "Játék Beállítások",
                thirst = "Szomjúság Beállítások",
                hunger = "Éhség Beállítások",
                fatigue = "Fáradtság Beállítások",
                display = "Megjelenítéséhez Beállítások"
            },
            options = {
                game = {
                    gamepad = {
                        label = "Gamepad",
                        description = "Engedélyezése / tiltása gamepad támogatást (Bal D-pad)"
                    },
                    difficulty = {
                        label = "Nehézségi",
                        description = "Meghatározza az összeg debuffot alkalmazni, amikor az Ön igényeinek is alacsony.",
                        mode = {
                            [1] = "Könnyen",
                            [2] = "Normál",
                            [3] = "Kemény"
                        }
                    }
                },
                thirst = {
                    dayPool = {
                        label = "Szomjúság tartalék (játék közbeni alváz)",
                        description = "Állítja szomjúság tartalék számos játék a napokban."
                    },
                    regenMultiplier = {
                        label = "Szomjúság regeneráció szorzó",
                        description = "Beállítja a szorzó minden regeneráció alkalmazott szomjúság."
                    },
                    costMultiplier = {
                        label = "Szomjuság költség szorzó",
                        description = "Beállítja a szorzót minden költséget alkalmazott szomjúság."
                    }
                },
                hunger = {
                    dayPool = {
                        label = "Éhezés park (játék közbeni alváz)",
                        description = "Készletei éhség tartalék számos játék a napokban."
                    },
                    regenMultiplier = {
                        label = "Éhezés regeneráció szorzó",
                        description = "Beállítja a szorzó minden regeneráció alkalmazott éhség."
                    },
                    costMultiplier = {
                        label = "Éhezés költség szorzó",
                        description = "Beállítja a szorzót minden költséget alkalmazott éhség."
                    }
                },
                fatigue = {
                    dayPool = {
                        label = "Fáradtság park (játék közbeni alváz)",
                        description = "Készletei fáradtság tartalék számos játék a napokban."
                    },
                    regenMultiplier = {
                        label = "Fáradtság regeneráció szorzó",
                        description = "Beállítja a szorzó minden regeneráció alkalmazott fáradtság."
                    },
                    costMultiplier = {
                        label = "Fáradtság költség szorzó",
                        description = "Beállítja a szorzót minden költséget alkalmazott fáradtság."
                    }
                },
                display = {
                    notif = {
                        label = "Értesítések",
                        description = "Engedélyezése / tiltása a kijelz? automatikus szükségletek szintjét értesítést."
                    },
                    warning = {
                        label = "Állapot figyelmeztetés",
                        description = "Engedélyezése / tiltása megjelenítésének részletes állapot figyelmeztetést értesítéseket."
                    }
                }
            }
        }
    },
    ["tr-tr"] = { -- Turkish thanks to Ilyatim2000
        thirst = "Susuzluk",
        hunger = "Açlik",
        fatigue = "Yorgunluk",
        step = {
            thirst = {"Susuz kaldin, ", "Düsük Dehidrasyon, ", "Dehidrasyon, ", "Siddetli Dehidrasyon, "},
            hunger = {"Besleniyorsun, ", "Düsük Yetersiz Beslenme, ", "Yetersiz beslenme, ", "Agir Yetersiz Beslenme, "},
            fatigue = {"Dinlendin, ", "Düsük Tükenme, ", "Yorgunluk, ", "Siddetli Yorgunluk, "}
        },
        settings = {
            category = {
                game = "Oyun Ayarlari",
                thirst = "Susuzluk Ayarlari",
                hunger = "Açlik Ayarlari",
                fatigue = "Yorgunluk Ayarlari",
                display = "Görüntü Ayarlari"
            },
            options = {
                game = {
                    gamepad = {
                        label = "Oyun kumandasi",
                        description = "Oyun kumandasi Destegini Etkinlestir/Devre Disi Birak (Sol D-pad)"
                    },
                    difficulty = {
                        label = "Zorluk",
                        description = "Ihtiyaçlariniz düsük oldugunda uygulanan debuff'larin miktarini tanimlar.",
                        mode = {
                            [1] = "Kolay",
                            [2] = "Normal",
                            [3] = "Zor"
                        }
                    }
                },
                thirst = {
                    dayPool = {
                        label = "Susuzluk rezervi (oyun içi günler)",
                        description = "Oyun günü sayisi olarak susuzluk rezervini ayarlar."
                    },
                    regenMultiplier = {
                        label = "Susuzluk rejenerasyon çarpani",
                        description = "Susamaya uygulanan tüm rejenerasyonlarda çarpani ayarlar."
                    },
                    costMultiplier = {
                        label = "Susuzluk maliyet çarpani",
                        description = "Susuzluga uygulanan tüm maliyetlerin çarpanini ayarlar."
                    }
                },
                hunger = {
                    dayPool = {
                        label = "Açlik rezervi (oyun içi günler)",
                        description = "Oyun günü sayisi olarak açlik rezervini ayarlar."
                    },
                    regenMultiplier = {
                        label = "Açlik yenileme çarpani",
                        description = "Açliga uygulanan tüm yenilemelerde çarpani ayarlar."
                    },
                    costMultiplier = {
                        label = "Açlik maliyeti çarpani",
                        description = "Açliga uygulanan tüm maliyetlerin çarpanini ayarlar."
                    }
                },
                fatigue = {
                    dayPool = {
                        label = "Yorgunluk rezervi (oyun içi günler)",
                        description = "Yorgunluk rezervini oyun günü sayisi olarak ayarlar."
                    },
                    regenMultiplier = {
                        label = "Yorgunluk yenileme çarpani",
                        description = "Yorgunluga uygulanan tüm yenilemelerde çarpani ayarlar."
                    },
                    costMultiplier = {
                        label = "Yorgunluk maliyeti çarpani",
                        description = "Yorgunluga uygulanan tüm maliyetlerin çarpanini ayarlar."
                    }
                },
                display = {
                    notif = {
                        label = "Bildirimler",
                        description = "Otomatik ihtiyaç düzeyi bildirimlerinin görüntülenmesini etkinle?tirin/devre disi birakin."
                    },
                    warning = {
                        label = "Durum uyarisi",
                        description = "Bildirimler sirasinda ayrintili durum uyarisinin görüntülenmesini etkinlestirin/devre disi birakin."
                    }
                }
            }
        }
    },
    ["ar-ar"] = { -- Arabic
        thirst = "Thirst",
        hunger = "Hunger",
        fatigue = "Fatigue",
        step = {
            thirst = {"You are hydrated, ", "Low Dehydration, ", "Dehydration, ", "Severe Dehydration, "},
            hunger = {"You are fed, ", "Low Undernourishment, ", "Undernourishment, ", "Severe Undernourishment, "},
            fatigue = {"You are rested, ", "Low Exhaustion, ", "Exhaustion, ", "Severe Exhaustion, "}
        },
        settings = {
            category = {
                game = "Game Settings",
                thirst = "Thirst Settings",
                hunger = "Hunger Settings",
                fatigue = "Fatigue Settings",
                display = "Display Settings"
            },
            options = {
                game = {
                    gamepad = {
                        label = "Gamepad",
                        description = "Enable/Disable Gamepad Support (Left D-pad)"
                    },
                    difficulty = {
                        label = "Difficulty",
                        description = "Defines the amount of debuffs applied when your needs are low.",
                        mode = {
                            [1] = "Easy",
                            [2] = "Normal",
                            [3] = "Hard"
                        }
                    }
                },
                thirst = {
                    dayPool = {
                        label = "Thirst reserve (in-game days)",
                        description = "Sets thirst reserve in number of game days."
                    },
                    regenMultiplier = {
                        label = "Thirst regeneration multiplier",
                        description = "Sets the multiplier on all regenerations applied to thirst."
                    },
                    costMultiplier = {
                        label = "Thirst cost multiplier",
                        description = "Sets the multiplier on all costs applied to thirst."
                    }
                },
                hunger = {
                    dayPool = {
                        label = "Hunger reserve (in-game days)",
                        description = "Sets hunger reserve in number of game days."
                    },
                    regenMultiplier = {
                        label = "Hunger regeneration multiplier",
                        description = "Sets the multiplier on all regenerations applied to hunger."
                    },
                    costMultiplier = {
                        label = "Hunger cost multiplier",
                        description = "Sets the multiplier on all costs applied to hunger."
                    }
                },
                fatigue = {
                    dayPool = {
                        label = "Fatigue reserve (in-game days)",
                        description = "Sets fatigue reserve in number of game days."
                    },
                    regenMultiplier = {
                        label = "Fatigue regeneration multiplier",
                        description = "Sets the multiplier on all regenerations applied to fatigue."
                    },
                    costMultiplier = {
                        label = "Fatigue cost multiplier",
                        description = "Sets the multiplier on all costs applied to fatigue."
                    }
                },
                display = {
                    notif = {
                        label = "Notifications",
                        description = "Enable/Disable the display of automatic needs level notifications."
                    },
                    warning = {
                        label = "Status warning",
                        description = "Enable/Disable display of detailed status warning during notifications."
                    }
                }
            }
        }
    },
    ["jp-jp"] = { -- Japanese
        thirst = "Thirst",
        hunger = "Hunger",
        fatigue = "Fatigue",
        step = {
            thirst = {"You are hydrated, ", "Low Dehydration, ", "Dehydration, ", "Severe Dehydration, "},
            hunger = {"You are fed, ", "Low Undernourishment, ", "Undernourishment, ", "Severe Undernourishment, "},
            fatigue = {"You are rested, ", "Low Exhaustion, ", "Exhaustion, ", "Severe Exhaustion, "}
        },
        settings = {
            category = {
                game = "Game Settings",
                thirst = "Thirst Settings",
                hunger = "Hunger Settings",
                fatigue = "Fatigue Settings",
                display = "Display Settings"
            },
            options = {
                game = {
                    gamepad = {
                        label = "Gamepad",
                        description = "Enable/Disable Gamepad Support (Left D-pad)"
                    },
                    difficulty = {
                        label = "Difficulty",
                        description = "Defines the amount of debuffs applied when your needs are low.",
                        mode = {
                            [1] = "Easy",
                            [2] = "Normal",
                            [3] = "Hard"
                        }
                    }
                },
                thirst = {
                    dayPool = {
                        label = "Thirst reserve (in-game days)",
                        description = "Sets thirst reserve in number of game days."
                    },
                    regenMultiplier = {
                        label = "Thirst regeneration multiplier",
                        description = "Sets the multiplier on all regenerations applied to thirst."
                    },
                    costMultiplier = {
                        label = "Thirst cost multiplier",
                        description = "Sets the multiplier on all costs applied to thirst."
                    }
                },
                hunger = {
                    dayPool = {
                        label = "Hunger reserve (in-game days)",
                        description = "Sets hunger reserve in number of game days."
                    },
                    regenMultiplier = {
                        label = "Hunger regeneration multiplier",
                        description = "Sets the multiplier on all regenerations applied to hunger."
                    },
                    costMultiplier = {
                        label = "Hunger cost multiplier",
                        description = "Sets the multiplier on all costs applied to hunger."
                    }
                },
                fatigue = {
                    dayPool = {
                        label = "Fatigue reserve (in-game days)",
                        description = "Sets fatigue reserve in number of game days."
                    },
                    regenMultiplier = {
                        label = "Fatigue regeneration multiplier",
                        description = "Sets the multiplier on all regenerations applied to fatigue."
                    },
                    costMultiplier = {
                        label = "Fatigue cost multiplier",
                        description = "Sets the multiplier on all costs applied to fatigue."
                    }
                },
                display = {
                    notif = {
                        label = "Notifications",
                        description = "Enable/Disable the display of automatic needs level notifications."
                    },
                    warning = {
                        label = "Status warning",
                        description = "Enable/Disable display of detailed status warning during notifications."
                    }
                }
            }
        }
    },
    ["kr-kr"] = { -- Korean
        thirst = "Thirst",
        hunger = "Hunger",
        fatigue = "Fatigue",
        step = {
            thirst = {"You are hydrated, ", "Low Dehydration, ", "Dehydration, ", "Severe Dehydration, "},
            hunger = {"You are fed, ", "Low Undernourishment, ", "Undernourishment, ", "Severe Undernourishment, "},
            fatigue = {"You are rested, ", "Low Exhaustion, ", "Exhaustion, ", "Severe Exhaustion, "}
        },
        settings = {
            category = {
                game = "Game Settings",
                thirst = "Thirst Settings",
                hunger = "Hunger Settings",
                fatigue = "Fatigue Settings",
                display = "Display Settings"
            },
            options = {
                game = {
                    gamepad = {
                        label = "Gamepad",
                        description = "Enable/Disable Gamepad Support (Left D-pad)"
                    },
                    difficulty = {
                        label = "Difficulty",
                        description = "Defines the amount of debuffs applied when your needs are low.",
                        mode = {
                            [1] = "Easy",
                            [2] = "Normal",
                            [3] = "Hard"
                        }
                    }
                },
                thirst = {
                    dayPool = {
                        label = "Thirst reserve (in-game days)",
                        description = "Sets thirst reserve in number of game days."
                    },
                    regenMultiplier = {
                        label = "Thirst regeneration multiplier",
                        description = "Sets the multiplier on all regenerations applied to thirst."
                    },
                    costMultiplier = {
                        label = "Thirst cost multiplier",
                        description = "Sets the multiplier on all costs applied to thirst."
                    }
                },
                hunger = {
                    dayPool = {
                        label = "Hunger reserve (in-game days)",
                        description = "Sets hunger reserve in number of game days."
                    },
                    regenMultiplier = {
                        label = "Hunger regeneration multiplier",
                        description = "Sets the multiplier on all regenerations applied to hunger."
                    },
                    costMultiplier = {
                        label = "Hunger cost multiplier",
                        description = "Sets the multiplier on all costs applied to hunger."
                    }
                },
                fatigue = {
                    dayPool = {
                        label = "Fatigue reserve (in-game days)",
                        description = "Sets fatigue reserve in number of game days."
                    },
                    regenMultiplier = {
                        label = "Fatigue regeneration multiplier",
                        description = "Sets the multiplier on all regenerations applied to fatigue."
                    },
                    costMultiplier = {
                        label = "Fatigue cost multiplier",
                        description = "Sets the multiplier on all costs applied to fatigue."
                    }
                },
                display = {
                    notif = {
                        label = "Notifications",
                        description = "Enable/Disable the display of automatic needs level notifications."
                    },
                    warning = {
                        label = "Status warning",
                        description = "Enable/Disable display of detailed status warning during notifications."
                    }
                }
            }
        }
    },
    ["zh-cn"] = { -- Simplified Chinese
        thirst = "Thirst",
        hunger = "Hunger",
        fatigue = "Fatigue",
        step = {
            thirst = {"You are hydrated, ", "Low Dehydration, ", "Dehydration, ", "Severe Dehydration, "},
            hunger = {"You are fed, ", "Low Undernourishment, ", "Undernourishment, ", "Severe Undernourishment, "},
            fatigue = {"You are rested, ", "Low Exhaustion, ", "Exhaustion, ", "Severe Exhaustion, "}
        },
        settings = {
            category = {
                game = "Game Settings",
                thirst = "Thirst Settings",
                hunger = "Hunger Settings",
                fatigue = "Fatigue Settings",
                display = "Display Settings"
            },
            options = {
                game = {
                    gamepad = {
                        label = "Gamepad",
                        description = "Enable/Disable Gamepad Support (Left D-pad)"
                    },
                    difficulty = {
                        label = "Difficulty",
                        description = "Defines the amount of debuffs applied when your needs are low.",
                        mode = {
                            [1] = "Easy",
                            [2] = "Normal",
                            [3] = "Hard"
                        }
                    }
                },
                thirst = {
                    dayPool = {
                        label = "Thirst reserve (in-game days)",
                        description = "Sets thirst reserve in number of game days."
                    },
                    regenMultiplier = {
                        label = "Thirst regeneration multiplier",
                        description = "Sets the multiplier on all regenerations applied to thirst."
                    },
                    costMultiplier = {
                        label = "Thirst cost multiplier",
                        description = "Sets the multiplier on all costs applied to thirst."
                    }
                },
                hunger = {
                    dayPool = {
                        label = "Hunger reserve (in-game days)",
                        description = "Sets hunger reserve in number of game days."
                    },
                    regenMultiplier = {
                        label = "Hunger regeneration multiplier",
                        description = "Sets the multiplier on all regenerations applied to hunger."
                    },
                    costMultiplier = {
                        label = "Hunger cost multiplier",
                        description = "Sets the multiplier on all costs applied to hunger."
                    }
                },
                fatigue = {
                    dayPool = {
                        label = "Fatigue reserve (in-game days)",
                        description = "Sets fatigue reserve in number of game days."
                    },
                    regenMultiplier = {
                        label = "Fatigue regeneration multiplier",
                        description = "Sets the multiplier on all regenerations applied to fatigue."
                    },
                    costMultiplier = {
                        label = "Fatigue cost multiplier",
                        description = "Sets the multiplier on all costs applied to fatigue."
                    }
                },
                display = {
                    notif = {
                        label = "Notifications",
                        description = "Enable/Disable the display of automatic needs level notifications."
                    },
                    warning = {
                        label = "Status warning",
                        description = "Enable/Disable display of detailed status warning during notifications."
                    }
                }
            }
        }
    },
    ["zh-tw"] = { -- Traditional Chinese
        thirst = "Thirst",
        hunger = "Hunger",
        fatigue = "Fatigue",
        step = {
            thirst = {"You are hydrated, ", "Low Dehydration, ", "Dehydration, ", "Severe Dehydration, "},
            hunger = {"You are fed, ", "Low Undernourishment, ", "Undernourishment, ", "Severe Undernourishment, "},
            fatigue = {"You are rested, ", "Low Exhaustion, ", "Exhaustion, ", "Severe Exhaustion, "}
        },
        settings = {
            category = {
                game = "Game Settings",
                thirst = "Thirst Settings",
                hunger = "Hunger Settings",
                fatigue = "Fatigue Settings",
                display = "Display Settings"
            },
            options = {
                game = {
                    gamepad = {
                        label = "Gamepad",
                        description = "Enable/Disable Gamepad Support (Left D-pad)"
                    },
                    difficulty = {
                        label = "Difficulty",
                        description = "Defines the amount of debuffs applied when your needs are low.",
                        mode = {
                            [1] = "Easy",
                            [2] = "Normal",
                            [3] = "Hard"
                        }
                    }
                },
                thirst = {
                    dayPool = {
                        label = "Thirst reserve (in-game days)",
                        description = "Sets thirst reserve in number of game days."
                    },
                    regenMultiplier = {
                        label = "Thirst regeneration multiplier",
                        description = "Sets the multiplier on all regenerations applied to thirst."
                    },
                    costMultiplier = {
                        label = "Thirst cost multiplier",
                        description = "Sets the multiplier on all costs applied to thirst."
                    }
                },
                hunger = {
                    dayPool = {
                        label = "Hunger reserve (in-game days)",
                        description = "Sets hunger reserve in number of game days."
                    },
                    regenMultiplier = {
                        label = "Hunger regeneration multiplier",
                        description = "Sets the multiplier on all regenerations applied to hunger."
                    },
                    costMultiplier = {
                        label = "Hunger cost multiplier",
                        description = "Sets the multiplier on all costs applied to hunger."
                    }
                },
                fatigue = {
                    dayPool = {
                        label = "Fatigue reserve (in-game days)",
                        description = "Sets fatigue reserve in number of game days."
                    },
                    regenMultiplier = {
                        label = "Fatigue regeneration multiplier",
                        description = "Sets the multiplier on all regenerations applied to fatigue."
                    },
                    costMultiplier = {
                        label = "Fatigue cost multiplier",
                        description = "Sets the multiplier on all costs applied to fatigue."
                    }
                },
                display = {
                    notif = {
                        label = "Notifications",
                        description = "Enable/Disable the display of automatic needs level notifications."
                    },
                    warning = {
                        label = "Status warning",
                        description = "Enable/Disable display of detailed status warning during notifications."
                    }
                }
            }
        }
    },
    ["th-th"] = { -- Thai
        thirst = "Thirst",
        hunger = "Hunger",
        fatigue = "Fatigue",
        step = {
            thirst = {"You are hydrated, ", "Low Dehydration, ", "Dehydration, ", "Severe Dehydration, "},
            hunger = {"You are fed, ", "Low Undernourishment, ", "Undernourishment, ", "Severe Undernourishment, "},
            fatigue = {"You are rested, ", "Low Exhaustion, ", "Exhaustion, ", "Severe Exhaustion, "}
        },
        settings = {
            category = {
                game = "Game Settings",
                thirst = "Thirst Settings",
                hunger = "Hunger Settings",
                fatigue = "Fatigue Settings",
                display = "Display Settings"
            },
            options = {
                game = {
                    gamepad = {
                        label = "Gamepad",
                        description = "Enable/Disable Gamepad Support (Left D-pad)"
                    },
                    difficulty = {
                        label = "Difficulty",
                        description = "Defines the amount of debuffs applied when your needs are low.",
                        mode = {
                            [1] = "Easy",
                            [2] = "Normal",
                            [3] = "Hard"
                        }
                    }
                },
                thirst = {
                    dayPool = {
                        label = "Thirst reserve (in-game days)",
                        description = "Sets thirst reserve in number of game days."
                    },
                    regenMultiplier = {
                        label = "Thirst regeneration multiplier",
                        description = "Sets the multiplier on all regenerations applied to thirst."
                    },
                    costMultiplier = {
                        label = "Thirst cost multiplier",
                        description = "Sets the multiplier on all costs applied to thirst."
                    }
                },
                hunger = {
                    dayPool = {
                        label = "Hunger reserve (in-game days)",
                        description = "Sets hunger reserve in number of game days."
                    },
                    regenMultiplier = {
                        label = "Hunger regeneration multiplier",
                        description = "Sets the multiplier on all regenerations applied to hunger."
                    },
                    costMultiplier = {
                        label = "Hunger cost multiplier",
                        description = "Sets the multiplier on all costs applied to hunger."
                    }
                },
                fatigue = {
                    dayPool = {
                        label = "Fatigue reserve (in-game days)",
                        description = "Sets fatigue reserve in number of game days."
                    },
                    regenMultiplier = {
                        label = "Fatigue regeneration multiplier",
                        description = "Sets the multiplier on all regenerations applied to fatigue."
                    },
                    costMultiplier = {
                        label = "Fatigue cost multiplier",
                        description = "Sets the multiplier on all costs applied to fatigue."
                    }
                },
                display = {
                    notif = {
                        label = "Notifications",
                        description = "Enable/Disable the display of automatic needs level notifications."
                    },
                    warning = {
                        label = "Status warning",
                        description = "Enable/Disable display of detailed status warning during notifications."
                    }
                }
            }
        }
    }
}

return Strings
