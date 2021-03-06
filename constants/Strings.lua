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
            thirst = {"Vous ??tes hydrat??, ", "D??shydratation L??g??re, ", "D??shydratation, ", "D??shydratation Grave, "},
            hunger = {"Vous ??tes nourris, ", "Sous-alimentation L??g??re, ", "Sous-alimentation, ", "Sous-alimentation Grave, "},
            fatigue = {"Vous ??tes repos??, ", "??puisement L??ger, ", "??puisement, ", "??puisement Grave, "}
        },
        settings = {
            category = {
                game = "Param??tres de Jeu",
                thirst = "Param??tres de la Soif",
                hunger = "Param??tres de la Faim",
                fatigue = "Param??tres de la Fatigue",
                display = "Param??tres d'Affichage"
            },
            options = {
                game = {
                    gamepad = {
                        label = "Manette",
                        description = "Activer/D??sactiver la prise en charge de la manette (D-pad gauche)"
                    },
                    difficulty = {
                        label = "Difficult??",
                        description = "D??finit la quantit?? de malus appliqu??s quand vos besoins sont bas.",
                        mode = {
                            [1] = "Facile",
                            [2] = "Normal",
                            [3] = "Difficile"
                        }
                    }
                },
                thirst = {
                    dayPool = {
                        label = "R??serve de soif (en jours de jeu)",
                        description = "D??finit la r??serve de soif en nombre de jours du jeu."
                    },
                    regenMultiplier = {
                        label = "Multiplicateur de r??g??n??ration de la soif",
                        description = "D??finit le multiplicateur sur toutes les r??g??n??rations appliqu??s ?? la soif."
                    },
                    costMultiplier = {
                        label = "Multiplicateur des co??ts de la soif",
                        description = "D??finit le multiplicateur sur toutes les co??ts appliqu??s ?? la soif."
                    }
                },
                hunger = {
                    dayPool = {
                        label = "R??serve de faim (en jours de jeu)",
                        description = "D??finit la r??serve de faim en nombre de jours du jeu."
                    },
                    regenMultiplier = {
                        label = "Multiplicateur de r??g??n??ration de la faim",
                        description = "D??finit le multiplicateur sur toutes les r??g??n??rations appliqu??s ?? la faim."
                    },
                    costMultiplier = {
                        label = "Multiplicateur des co??ts de la faim",
                        description = "D??finit le multiplicateur sur toutes les co??ts appliqu??s ?? la faim."
                    }
                },
                fatigue = {
                    dayPool = {
                        label = "R??serve de fatigue (en jours de jeu)",
                        description = "D??finit la r??serve de fatigue en nombre de jours du jeu."
                    },
                    regenMultiplier = {
                        label = "Multiplicateur de r??g??n??ration de la fatigue",
                        description = "D??finit le multiplicateur sur toutes les r??g??n??rations appliqu??s ?? la fatigue."
                    },
                    costMultiplier = {
                        label = "Multiplicateur des co??ts de la fatigue",
                        description = "D??finit le multiplicateur sur toutes les co??ts appliqu??s ?? la fatigue."
                    }
                },
                display = {
                    notif = {
                        label = "Notifications",
                        description = "Activer/D??sactiver l'affichage des notifications automatiques du niveau des besoins."
                    },
                    warning = {
                        label = "Avertissement d'??tat",
                        description = "Activer/D??sactiver l'affichage de l'avertissement d'??tat d??taill?? pendant les notifications."
                    }
                }
            }
        }
    },
    ["de-de"] = { -- German
        thirst = "Durst",
        hunger = "Hunger",
        fatigue = "Erm??dung",
        step = {
            thirst = {"Sie sind hydratisiert, ", "Niedrige Austrocknung, ", "Austrocknung, ", "Schwere Austrocknung, "},
            hunger = {"Du bist satt, ", "Niedrige Unterern??hrung, ", "Unterern??hrung, ", "Schwere Unterern??hrung, "},
            fatigue = {"Sie sind ausgeruht, ", "Niedrige Ersch??pfung, ", "Ersch??pfung, ", "Schwere Ersch??pfung, "}
        },
        settings = {
            category = {
                game = "Spieleinstellungen",
                thirst = "Dursteinstellungen",
                hunger = "Hungereinstellungen",
                fatigue = "Erm??dungseinstellungen",
                display = "Bildschirmeinstellungen"
            },
            options = {
                game = {
                    gamepad = {
                        label = "Gamepad",
                        description = "Gamepad-Unterst??tzung aktivieren/deaktivieren (linkes D-Pad)"
                    },
                    difficulty = {
                        label = "Schwierigkeit",
                        description = "Definiert die Menge an Debuffs, die angewendet werden, wenn Ihre Bed??rfnisse gering sind.",
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
                        description = "Legt den Multiplikator f??r alle auf Durst angewendeten Regenerationen fest."
                    },
                    costMultiplier = {
                        label = "Durstkostenmultiplikator",
                        description = "Legt den Multiplikator f??r alle auf Durst angewendeten Kosten fest."
                    }
                },
                hunger = {
                    dayPool = {
                        label = "Hungerreserve (tage im spiel)",
                        description = "Legt den Hungerreserve in der Anzahl der Spieltage fest."
                    },
                    regenMultiplier = {
                        label = "Hungerregenerationsmultiplikator",
                        description = "Legt den Multiplikator f??r alle auf Hunger angewendeten Regenerationen fest."
                    },
                    costMultiplier = {
                        label = "Hungerkostenmultiplikator",
                        description = "Legt den Multiplikator f??r alle auf Hunger angewendeten Kosten fest."
                    }
                },
                fatigue = {
                    dayPool = {
                        label = "Erm??dungreserve (tage im spiel)",
                        description = "Legt den Erm??dungsreserve in Anzahl der Spieltage fest."
                    },
                    regenMultiplier = {
                        label = "Erm??dungsregenerationsmultiplikator",
                        description = "Legt den Multiplikator f??r alle auf Erm??dung angewendeten Regenerationen fest."
                    },
                    costMultiplier = {
                        label = "Erm??dungskostenmultiplikator",
                        description = "Legt den Multiplikator f??r alle auf Erm??dung angewendeten Kosten fest."
                    }
                },
                display = {
                    notif = {
                        label = "Benachrichtigungen",
                        description = "Aktivieren/Deaktivieren Sie die Anzeige automatischer Benachrichtigungen zum Bedarfsniveau."
                    },
                    warning = {
                        label = "Statuswarnung",
                        description = "Aktivieren/Deaktivieren der Anzeige detaillierter Statuswarnungen w??hrend Benachrichtigungen."
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
            thirst = {"Est??s hidratado, ", "Deshidrataci??n baja, ", "Deshidrataci??n, ", "Deshidrataci??n severa, "},
            hunger = {"Est??s alimentado, ", "Desnutrici??n baja, ", "Desnutrici??n, ", "Desnutrici??n severa, "},
            fatigue = {"Est??s descansado, ", "Bajo agotamiento, ", "Agotamiento, ", "Agotamiento severo, "}
        },
        settings = {
            category = {
                game = "Configuraci??n del juego",
                thirst = "Configuraci??n de sed",
                hunger = "Configuraci??n de hambre",
                fatigue = "Configuraci??n de fatiga",
                display = "Configuraci??n de pantalla"
            },
            options = {
                game = {
                    gamepad = {
                        label = "Mando",
                        description = "Habilitar/Deshabilitar la compatibilidad con Mando (D-pad izquierdo)"
                    },
                    difficulty = {
                        label = "Dificultad",
                        description = "Define la cantidad de desventajas aplicadas cuando tus necesidades son bajas.",
                        mode = {
                            [1] = "F??cil",
                            [2] = "Normal",
                            [3] = "Dif??cil"
                        }
                    }
                },
                thirst = {
                    dayPool = {
                        label = "Reserva de sed (d??as en el juego)",
                        description = "Establece la reserva de sed en n??mero de d??as de juego."
                    },
                    regenMultiplier = {
                        label = "Multiplicador de regeneraci??n de sed",
                        description = "Establece el multiplicador en todas las regeneraciones aplicadas a la sed."
                    },
                    costMultiplier = {
                        label = "Multiplicador de costo de sed",
                        description = "Establece el multiplicador de todos los costos aplicados a la sed."
                    }
                },
                hunger = {
                    dayPool = {
                        label = "Reserva de hambre (d??as en el juego)",
                        description = "Establece la reserva de hambre en n??mero de d??as de juego."
                    },
                    regenMultiplier = {
                        label = "Multiplicador de regeneraci??n de hambre",
                        description = "Establece el multiplicador en todas las regeneraciones aplicadas al hambre."
                    },
                    costMultiplier = {
                        label = "Multiplicador del costo del hambre",
                        description = "Establece el multiplicador de todos los costos aplicados al hambre."
                    }
                },
                fatigue = {
                    dayPool = {
                        label = "Reserva de fatiga (d??as de juego)",
                        description = "Establece la reserva de fatiga en n??mero de d??as de juego."
                    },
                    regenMultiplier = {
                        label = "Multiplicador de regeneraci??n de fatiga",
                        description = "Establece el multiplicador en todas las regeneraciones aplicadas a la fatiga."
                    },
                    costMultiplier = {
                        label = "Multiplicador de costos de fatiga",
                        description = "Establece el multiplicador de todos los costos aplicados a la fatiga."
                    }
                },
                display = {
                    notif = {
                        label = "Notificaciones",
                        description = "Habilitar/Deshabilitar la visualizaci??n de notificaciones autom??ticas de nivel de necesidades."
                    },
                    warning = {
                        label = "Advertencia de estado",
                        description = "Habilitar/Deshabilitar la visualizaci??n de advertencias de estado detalladas durante las notificaciones."
                    }
                }
            }
        }
    },
    ["es-mx"] = { -- Spanish
        thirst = "Sed",
        hunger = "Hambre",
        fatigue = "Fatiga",
        step = {
            thirst = {"Est??s hidratado, ", "Deshidrataci??n baja, ", "Deshidrataci??n, ", "Deshidrataci??n severa, "},
            hunger = {"Est??s alimentado, ", "Desnutrici??n baja, ", "Desnutrici??n, ", "Desnutrici??n severa, "},
            fatigue = {"Est??s descansado, ", "Bajo agotamiento, ", "Agotamiento, ", "Agotamiento severo, "}
        },
        settings = {
            category = {
                game = "Configuraci??n del juego",
                thirst = "Configuraci??n de sed",
                hunger = "Configuraci??n de hambre",
                fatigue = "Configuraci??n de fatiga",
                display = "Configuraci??n de pantalla"
            },
            options = {
                game = {
                    gamepad = {
                        label = "Mando",
                        description = "Habilitar/Deshabilitar la compatibilidad con Mando (D-pad izquierdo)"
                    },
                    difficulty = {
                        label = "Dificultad",
                        description = "Define la cantidad de desventajas aplicadas cuando tus necesidades son bajas.",
                        mode = {
                            [1] = "F??cil",
                            [2] = "Normal",
                            [3] = "Dif??cil"
                        }
                    }
                },
                thirst = {
                    dayPool = {
                        label = "Reserva de sed (d??as en el juego)",
                        description = "Establece la reserva de sed en n??mero de d??as de juego."
                    },
                    regenMultiplier = {
                        label = "Multiplicador de regeneraci??n de sed",
                        description = "Establece el multiplicador en todas las regeneraciones aplicadas a la sed."
                    },
                    costMultiplier = {
                        label = "Multiplicador de costo de sed",
                        description = "Establece el multiplicador de todos los costos aplicados a la sed."
                    }
                },
                hunger = {
                    dayPool = {
                        label = "Reserva de hambre (d??as en el juego)",
                        description = "Establece la reserva de hambre en n??mero de d??as de juego."
                    },
                    regenMultiplier = {
                        label = "Multiplicador de regeneraci??n de hambre",
                        description = "Establece el multiplicador en todas las regeneraciones aplicadas al hambre."
                    },
                    costMultiplier = {
                        label = "Multiplicador del costo del hambre",
                        description = "Establece el multiplicador de todos los costos aplicados al hambre."
                    }
                },
                fatigue = {
                    dayPool = {
                        label = "Reserva de fatiga (d??as de juego)",
                        description = "Establece la reserva de fatiga en n??mero de d??as de juego."
                    },
                    regenMultiplier = {
                        label = "Multiplicador de regeneraci??n de fatiga",
                        description = "Establece el multiplicador en todas las regeneraciones aplicadas a la fatiga."
                    },
                    costMultiplier = {
                        label = "Multiplicador de costos de fatiga",
                        description = "Establece el multiplicador de todos los costos aplicados a la fatiga."
                    }
                },
                display = {
                    notif = {
                        label = "Notificaciones",
                        description = "Habilitar/Deshabilitar la visualizaci??n de notificaciones autom??ticas de nivel de necesidades."
                    },
                    warning = {
                        label = "Advertencia de estado",
                        description = "Habilitar/Deshabilitar la visualizaci??n de advertencias de estado detalladas durante las notificaciones."
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
                        label = "Difficolt??",
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
        thirst = "Sede",
        hunger = "Fome",
        fatigue = "Fadiga",
        step = {
            thirst = {"Hidratado, ", "Desidrata????o Baixa, ", "Desidrata????o, ", "Desidrata????o Grave, "},
            hunger = {"Alimentado, ", "Desnutri????o Baixa, ", "Desnutri????o Cronica, ", "Desnutri????o Grave, "},
            fatigue = {"Descansado, ", "Exaust??o Baixa, ", "Exaust??o, ", "Exaust??o Grave, "}
        },
        settings = {
            category = {
                game = "Configura????o",
                thirst = "Configura????es de sede",
                hunger = "Configura????es de Fome",
                fatigue = "Configura????es de fadiga",
                display = "Configura????es do visor"
            },
            options = {
                game = {
                    gamepad = {
                        label = "Controle",
                        description = "Ativar/desativar o suporte ao controle (D-pad esquerdo)"
                    },
                    difficulty = {
                         label = "Dificuldade",
                        description = "Define a quantidade de debuffs aplicados quando sua necessidade s??o baixas",
                        mode = {
                            [1] = "F??cil",
                            [2] = "Normal",
                            [3] = "Dif??cil"
                        }
                    }
                },
                thirst = {
                    dayPool = {
                        label = "Reserva de sede (dias de jogo)",
                        description = "Define a reserva de sede em n??mero de dias de jogo."
                    },
                    regenMultiplier = {
                        label = "Multiplicador de regenera????o da sede",
                        description = "Define o multiplicador em todas as regenera????es aplicadas ?? sede."
                    },
                    costMultiplier = {
                        label = "Thirst cost multiplier",
                        description = "Multiplicador de custo da sede"
                    }
                },
                hunger = {
                    dayPool = {
                        label = "Reserva de Fome (em dias de jogo)",
                        description = "Define a reserva de fome em n??mero de dias de jogo."
                    },
                    regenMultiplier = {
                        label = "Multiplicador de regenera????o da fome",
                        description = "Define o multiplicador em todas as regenera????es aplicadas ?? fome."
                    },
                    costMultiplier = {
                        label = "Multiplicador de custos da fome",
                        description = "Define o multiplicador de todos os custos aplicados ?? fome."
                    }
                },
                fatigue = {
                    dayPool = {
                        label = "Reserva de fadiga (dias de jogo)",
                        description = "Define a reserva de fadiga em n??mero de dias de jogo."
                    },
                    regenMultiplier = {
                        label = "Multiplicador de regenera????o de fadiga",
                        description = "Define o multiplicador em todas as regenera????es aplicadas ?? fadiga."
                    },
                    costMultiplier = {
                        label = "Multiplicador de custo de fadiga",
                        description = "Define o multiplicador de todos os custos aplicados ?? fadiga."
                    }
                },
                display = {
                    notif = {
                        label = "Notifica????es",
                        description = "Ativar/Desativar a exibi????o de notifica????es autom??ticas de nivel de necessidades"
                    },
                    warning = {
                        label = "Aviso de status",
                        description = "Ativar/Desativar a exibi????o de aviso de status detalhado durante as notifica????es"
                    }
                }
            }
        }
    },
    ["pl-pl"] = { -- Polish
        thirst = "Pragnienie",
        hunger = "G????d",
        fatigue = "Zm??czenie",
        step = {
            thirst = {"Odpowiednie nawodnienie, ", "Lekkie odwodnienie, ", "Odwodnienie, ", "Powa??ne odwodnienie, "},
            hunger = {"Odpowiednie od??ywienie, ", "Lekkie niedo??ywienie, ", "Niedo??ywienie, ", "Powa??ne niedo??ywienie, "},
            fatigue = {"Odpowiednie wypocz??cie, ", "Lekkie zm??czenie, ", "Zm??czenie, ", "Powa??ne zm??czenie, "}
        },
        settings = {
            category = {
                game = "Ustawienia gry",
                thirst = "Ustawienia pragnienia",
                hunger = "Ustawienia g??odu",
                fatigue = "Ustawienia zm??czenia",
                display = "Ustawienia wy??wietlania"
            },
            options = {
                game = {
                    gamepad = {
                        label = "Gamepad",
                        description = "W????cza/Wy????cza wsparcie Gamepada (Lewy D-pad)"
                    },
                    difficulty = {
                        label = "Trudno????",
                        description = "Okre??la ilo???? stosowanych os??abie??, gdy twoje potrzeby maj?? niski poziom.",
                        mode = {
                            [1] = "??atwy",
                            [2] = "Normalny",
                            [3] = "Trudny"
                        }
                    }
                },
                thirst = {
                    dayPool = {
                        label = "Rezerwa pragnienia (dni w grze)",
                        description = "Ustawia rezerw?? pragnienia w liczbie dni gry."
                    },
                    regenMultiplier = {
                        label = "Mno??nik regeneracji pragnienia",
                        description = "Ustawia mno??nik dla wszystkich regeneracji zastosowanych do pragnienia."
                    },
                    costMultiplier = {
                        label = "Mno??nik koszt??w pragnienia",
                        description = "Ustawia mno??nik wszystkich koszt??w zwi??zanych z pragnieniem."
                    }
                },
                hunger = {
                    dayPool = {
                        label = "Rezerwa g??odu (dni w grze)",
                        description = "Ustawia rezerw?? g??odow?? w liczbie dni gry."
                    },
                    regenMultiplier = {
                        label = "Mno??nik regeneracji g??odowej",
                        description = "Ustawia mno??nik dla wszystkich regeneracji zastosowanych do g??odu."
                    },
                    costMultiplier = {
                        label = "Mno??nik koszt??w g??odu",
                        description = "Ustawia mno??nik wszystkich koszt??w stosowanych do g??odu."
                    }
                },
                fatigue = {
                    dayPool = {
                        label = "Rezerwa zm??czenia (dni w grze)",
                        description = "Ustawia rezerw?? zm??czenia w liczbie dni gry."
                    },
                    regenMultiplier = {
                        label = "Mno??nik regeneracji zm??czeniowej",
                        description = "Ustawia mno??nik dla wszystkich regeneracji stosowanych do zm??czenia."
                    },
                    costMultiplier = {
                        label = "Mno??nik koszt??w zm??czenia",
                        description = "Ustawia mno??nik wszystkich koszt??w zwi??zanych ze zm??czeniem."
                    }
                },
                display = {
                    notif = {
                        label = "Powiadomienia",
                        description = "W????cza/Wy????cza wy??wietlanie automatycznych powiadomie?? o poziomie potrzeb."
                    },
                    warning = {
                        label = "Ostrze??enie o stanie",
                        description = "W????cza/Wy????cza wy??wietlanie szczeg????owego ostrze??enia o stanie podczas powiadomie??."
                    }
                }
            }
        }
    },
    ["ru-ru"] = { -- Russian thanks to jaderay
        thirst = "??????????",
        hunger = "??????????",
        fatigue = "??????????????????",
        step = {
            thirst = {"?????? ?????????? ?? ??????????, ", "???????????? ??????????????????????????, ", "??????????????????????????, ", "?????????????????? ??????????????????????????, "},
            hunger = {"?????? ?????????? ?? ??????, ", "???????????? ??????????????????, ", "??????????????????, ", "?????????????????? ??????????????????, "},
            fatigue = {"???? ?? ?????????????????? ????????????????, ", "???????????? ??????????????????, ", "??????????????????, ", "???????????????????????? ??????????????????, "}
        },
        settings = {
            category = {
                game = "?????????????????? ??????????????????????",
                thirst = "?????????????????? ??????????",
                hunger = "?????????????????? ????????????",
                fatigue = "?????????????????? ??????????????????",
                display = "?????????????????? ??????????????????????"
            },
            options = {
                game = {
                    gamepad = {
                        label = "??????????????",
                        description = "????????????????/?????????????????? ?????????????????? ???????????????? (?????????? ????????????????????)"
                    },
                    difficulty = {
                        label = "??????????????????",
                        description = "???????????????????? ???????????????????? ?????????????????????????? ????????????????, ?????????????????????? ?????? ???????????? ???????????????????????????? ?????????????????????????????? ????????????????????????.",
                        mode = {
                            [1] = "????????????",
                            [2] = "??????????????",
                            [3] = "??????????????"
                        }
                    }
                },
                thirst = {
                    dayPool = {
                        label = "?????????? ?????????? (?????????????? ??????)",
                        description = "?????????????????????????? ?????????? ?????????? ?? ???????????????????? ?????????????? ????????."
                    },
                    regenMultiplier = {
                        label = "?????????????????? ?????????????????????? ??????????",
                        description = "?????????????????????????? ?????????????????? ?????? ???????? ??????????????????????, ?????????????????????? ?? ??????????."
                    },
                    costMultiplier = {
                        label = "?????????????????? ?????????????????? ??????????",
                        description = "?????????????????????????? ?????????????????? ?????? ???????? ????????????, ?????????????????????? ?? ??????????."
                    }
                },
                hunger = {
                    dayPool = {
                        label = "?????????? ???????????? (?????????????? ??????)",
                        description = "?????????????????????????? ?????????? ???????????? ?? ???????????????????? ?????????????? ????????."
                    },
                    regenMultiplier = {
                        label = "?????????????????? ?????????????????????? ???? ????????????",
                        description = "?????????????????????????? ?????????????????? ?????? ???????? ??????????????????????, ?????????????????????? ?? ????????????."
                    },
                    costMultiplier = {
                        label = "?????????????????? ?????????????????? ????????????",
                        description = "?????????????????????????? ?????????????????? ?????? ???????? ????????????, ?????????????????????? ?? ????????????."
                    }
                },
                fatigue = {
                    dayPool = {
                        label = "?????????? ?????????????????? (?????????????? ??????)",
                        description = "?????????????????????????? ?????????? ?????????????????? ?? ???????????????????? ?????????????? ????????."
                    },
                    regenMultiplier = {
                        label = "?????????????????? ?????????????????????? ??????????????????",
                        description = "?????????????????????????? ?????????????????? ?????? ???????? ??????????????????????, ?????????????????????? ?? ??????????????????."
                    },
                    costMultiplier = {
                        label = "?????????????????? ?????????????????? ??????????????????",
                        description = "?????????????????????????? ?????????????????? ?????? ???????? ????????????, ?????????????????????? ?? ??????????????????."
                    }
                },
                display = {
                    notif = {
                        label = "????????????????????",
                        description = "??????????????????/???????????????????? ?????????????????????? ???????????????????????????? ???????????????????? ???? ???????????? ?????????????????????????????? ????????????????????????."
                    },
                    warning = {
                        label = "???????????????????????????? ?? ??????????????????",
                        description = "??????????????????/???????????????????? ?????????????????????? ???????????????????? ???????????????????????????? ?? ???????????????????? ???? ?????????? ????????????????????."
                    }
                }
            }
        }
    },
    ["cz-cz"] = { -- Czech thanks to Ilyatim2000
        thirst = "????ze??",
        hunger = "Hlad",
        fatique = "Unaven??",
        step = {
            thirst = {"Jsi hydratovan??, ", "N??zk?? dehydratace, ", "Dehydratace, ", "Siln?? dehydratace, "},
            hunger = {"Jsi nakrmen??, ", "N??zk?? podv????iva, ", "Podv????iva, ", "Siln?? podv????iva, "},
            fatique = {"Jsi odpocinut??, ", "N??zk?? vycerp??n??, ", "Vicerp??n??, ", "Te??k?? vycerp??n??, "}
        },
        settings = {
            category = {
                game = "Nastaven?? hry",
                thirst = "Nastaven?? ????zne",
                hunger = "Nastaven?? hladu",
                fatique = "Nastaven?? ??navy",
                display = "Nastaven?? displeje"
            },
            options = {
                game = {
                    gamepad = {
                        label = "Gamepad",
                        description = "Povolit/zak??zat podporu gamepadu (lev?? D-pad)"
                    },
                    difficulty = {
                        label = "Obt????nost",
                        description = "Definuje mno??stv?? debuffu aplikovan??ch, kdy?? jsou va??e potreby n??zk??.",
                        mode = {
                            [1] = "Snadn??",
                            [2] = "Norm??ln??",
                            [3] = "Te??k??"
                        }
                    }
                },
                thirst = {
                    dayPool = {
                        label = "Rezerva ????zne (ve hre dny)",
                        description = "Nastavuje rezervu ????zne v po??tu hern??ch dnu."
                    },
                    regenMultiplier = {
                        label = "Multiplik??tor regenerace ????zne",
                        description = "Nastav?? multiplik??tor na v??echny regenerace aplikovan?? na ????zen."
                    },
                    costMultiplier = {
                        label = "Multiplik??tor n??kladu na ????zen",
                        description = "Nastav?? n??sobitel v??ech n??kladu aplikovan??ch na ????zen."
                    }
                },
                hunger = {
                    dayPool = {
                        label = "Hladov?? rezerva (ve hre dny)",
                        description = "Nastavuje rezervu hladu v po??tu hern??ch dnu."
                    },
                    regenMultiplier = {
                        label = "Multiplik??tor regenerace hladu",
                        description = "Nastav?? multiplik??tor na v??echny regenerace aplikovan?? na hlad."
                    },
                    costMultiplier = {
                        label = "N??sobitel hladov??ch n??kladu",
                        description = "Nastav?? n??sobitel v??ech n??kladu aplikovan??ch na hlad."
                    }
                },
                fatique = {
                    dayPool = {
                        label = "Rezerva ??navy (ve hre dny)",
                        description = "Nastav?? rezervu ??navy v poctu hern??ch dnu."
                    },
                    regenMultiplier = {
                        label = "Multiplik??tor regenerace ??navy",
                        description = "Nastav?? multiplik??tor na v??echny regenerace aplikovan?? na ??navu."
                    },
                    costMultiplier = {
                        label = "Multiplik??tor n??kladu na ??navu",
                        description = "Nastav?? multiplik??tor na v??echny n??klady aplikovan?? na ??navu."
                    }
                },
                display = {
                    notif = {
                        label = "Ozn??men??",
                        description = "Povolit/zak??zat zobrazov??n?? automatick??ch upozornen?? na ??rovni potreb."
                    },
                    warning = {
                        label = "Upozornen?? na stav",
                        description = "Povolit/zak??zat zobrazov??n?? podrobn??ho upozornen?? na stav behem upozornen??."
                    }
                }
            }
        }
    },
    ["hu-hu"] = { -- Hungarian thanks to Ilyatim2000
        thirst = "Szomj??s??g",
        hunger = "??hez??s",
        fatigue = "F??radts??g",
        step = {
            thirst = {"Te hidrat??lt, ", "Alascony Kisz??rad??s, ", "Kisz??rad??s, ", "S??lyos kisz??rad??s, "},
            hunger = {"Te etetik, ", "Alascony alult??pl??lts??g, ", "Alult??pl??lts??g, ", "S??lyos alult??pl??lts??g, "},
            fatique = {"Te pihent, ", "Alascony kimer??lts??g, ", "Kimer??lts??g, ", "S??lyos kimer??lts??g, "}
        },
        settings = {
            category = {
                game = "J??t??k Be??ll??t??sok",
                thirst = "Szomj??s??g Be??ll??t??sok",
                hunger = "??hs??g Be??ll??t??sok",
                fatigue = "F??radts??g Be??ll??t??sok",
                display = "Megjelen??t??s??hez Be??ll??t??sok"
            },
            options = {
                game = {
                    gamepad = {
                        label = "Gamepad",
                        description = "Enged??lyez??se / tilt??sa gamepad t??mogat??st (Bal D-pad)"
                    },
                    difficulty = {
                        label = "Neh??zs??gi",
                        description = "Meghat??rozza az ??sszeg debuffot alkalmazni, amikor az ??n ig??nyeinek is alacsony.",
                        mode = {
                            [1] = "K??nnyen",
                            [2] = "Norm??l",
                            [3] = "Kem??ny"
                        }
                    }
                },
                thirst = {
                    dayPool = {
                        label = "Szomj??s??g tartal??k (j??t??k k??zbeni alv??z)",
                        description = "??ll??tja szomj??s??g tartal??k sz??mos j??t??k a napokban."
                    },
                    regenMultiplier = {
                        label = "Szomj??s??g regener??ci?? szorz??",
                        description = "Be??ll??tja a szorz?? minden regener??ci?? alkalmazott szomj??s??g."
                    },
                    costMultiplier = {
                        label = "Szomjus??g k??lts??g szorz??",
                        description = "Be??ll??tja a szorz??t minden k??lts??get alkalmazott szomj??s??g."
                    }
                },
                hunger = {
                    dayPool = {
                        label = "??hez??s park (j??t??k k??zbeni alv??z)",
                        description = "K??szletei ??hs??g tartal??k sz??mos j??t??k a napokban."
                    },
                    regenMultiplier = {
                        label = "??hez??s regener??ci?? szorz??",
                        description = "Be??ll??tja a szorz?? minden regener??ci?? alkalmazott ??hs??g."
                    },
                    costMultiplier = {
                        label = "??hez??s k??lts??g szorz??",
                        description = "Be??ll??tja a szorz??t minden k??lts??get alkalmazott ??hs??g."
                    }
                },
                fatigue = {
                    dayPool = {
                        label = "F??radts??g park (j??t??k k??zbeni alv??z)",
                        description = "K??szletei f??radts??g tartal??k sz??mos j??t??k a napokban."
                    },
                    regenMultiplier = {
                        label = "F??radts??g regener??ci?? szorz??",
                        description = "Be??ll??tja a szorz?? minden regener??ci?? alkalmazott f??radts??g."
                    },
                    costMultiplier = {
                        label = "F??radts??g k??lts??g szorz??",
                        description = "Be??ll??tja a szorz??t minden k??lts??get alkalmazott f??radts??g."
                    }
                },
                display = {
                    notif = {
                        label = "??rtes??t??sek",
                        description = "Enged??lyez??se / tilt??sa a kijelz??s automatikus sz??ks??gletek szintj??t ??rtes??t??st."
                    },
                    warning = {
                        label = "??llapot figyelmeztet??s",
                        description = "Enged??lyez??se / tilt??sa megjelen??t??s??nek r??szletes ??llapot figyelmeztet??st ??rtes??t??seket."
                    }
                }
            }
        }
    },
    ["tr-tr"] = { -- Turkish thanks to Ilyatim2000
        thirst = "Susuzluk",
        hunger = "A??lik",
        fatigue = "Yorgunluk",
        step = {
            thirst = {"Susuz kaldin, ", "D??s??k Dehidrasyon, ", "Dehidrasyon, ", "Siddetli Dehidrasyon, "},
            hunger = {"Besleniyorsun, ", "D??s??k Yetersiz Beslenme, ", "Yetersiz beslenme, ", "Agir Yetersiz Beslenme, "},
            fatigue = {"Dinlendin, ", "D??s??k T??kenme, ", "Yorgunluk, ", "Siddetli Yorgunluk, "}
        },
        settings = {
            category = {
                game = "Oyun Ayarlari",
                thirst = "Susuzluk Ayarlari",
                hunger = "A??lik Ayarlari",
                fatigue = "Yorgunluk Ayarlari",
                display = "G??r??nt?? Ayarlari"
            },
            options = {
                game = {
                    gamepad = {
                        label = "Oyun kumandasi",
                        description = "Oyun kumandasi Destegini Etkinlestir/Devre Disi Birak (Sol D-pad)"
                    },
                    difficulty = {
                        label = "Zorluk",
                        description = "Ihtiya??lariniz d??s??k oldugunda uygulanan debuff'larin miktarini tanimlar.",
                        mode = {
                            [1] = "Kolay",
                            [2] = "Normal",
                            [3] = "Zor"
                        }
                    }
                },
                thirst = {
                    dayPool = {
                        label = "Susuzluk rezervi (oyun i??i g??nler)",
                        description = "Oyun g??n?? sayisi olarak susuzluk rezervini ayarlar."
                    },
                    regenMultiplier = {
                        label = "Susuzluk rejenerasyon ??arpani",
                        description = "Susamaya uygulanan t??m rejenerasyonlarda ??arpani ayarlar."
                    },
                    costMultiplier = {
                        label = "Susuzluk maliyet ??arpani",
                        description = "Susuzluga uygulanan t??m maliyetlerin ??arpanini ayarlar."
                    }
                },
                hunger = {
                    dayPool = {
                        label = "A??lik rezervi (oyun i??i g??nler)",
                        description = "Oyun g??n?? sayisi olarak a??lik rezervini ayarlar."
                    },
                    regenMultiplier = {
                        label = "A??lik yenileme ??arpani",
                        description = "A??liga uygulanan t??m yenilemelerde ??arpani ayarlar."
                    },
                    costMultiplier = {
                        label = "A??lik maliyeti ??arpani",
                        description = "A??liga uygulanan t??m maliyetlerin ??arpanini ayarlar."
                    }
                },
                fatigue = {
                    dayPool = {
                        label = "Yorgunluk rezervi (oyun i??i g??nler)",
                        description = "Yorgunluk rezervini oyun g??n?? sayisi olarak ayarlar."
                    },
                    regenMultiplier = {
                        label = "Yorgunluk yenileme ??arpani",
                        description = "Yorgunluga uygulanan t??m yenilemelerde ??arpani ayarlar."
                    },
                    costMultiplier = {
                        label = "Yorgunluk maliyeti ??arpani",
                        description = "Yorgunluga uygulanan t??m maliyetlerin ??arpanini ayarlar."
                    }
                },
                display = {
                    notif = {
                        label = "Bildirimler",
                        description = "Otomatik ihtiya?? d??zeyi bildirimlerinin g??r??nt??lenmesini etkinlestirin/devre disi birakin."
                    },
                    warning = {
                        label = "Durum uyarisi",
                        description = "Bildirimler sirasinda ayrintili durum uyarisinin g??r??nt??lenmesini etkinlestirin/devre disi birakin."
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
