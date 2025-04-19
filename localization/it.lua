-- translation by TheSnazfrin and ieatmilk
return {
    descriptions = {
        Joker = {
            j_neat_australianshepherd = {
                name = "Pastore australiano",
                text = {
                    "Crea una carta {C:planet}Pianeta{} casuale",
                    "quando selezioni un {C:attention}buio{}",
                    "{C:inactive}(Serve spazio){}"
                },
            },
            j_neat_bananastand = {
                name = "Mercatino della banana",
                text = {
                    "{C:green}#1# probabilità su #2#{} che giocare una",
                    "{C:attention}mano{} dia {C:money}$#4#{},",
                    "{C:green}#1# probabilità su #3#{} che questa carta",
                    "si {C:red}distrugga{} alla fine del round",
                    "{C:inactive}Se distrutta, perdi tutti i soldi che hai{}"
                },
            },
            j_neat_blueyourself = {
                name = "Renditi blu",
                text = {
                    "Riattiva {C:attention}Jolly{} e {C:attention}carte{}",
                    "con l'edizione {C:dark_edition}Foil{}",
                    "{C:inactive}(Escludendo #1#){}"
                },
            },
            j_neat_dayman = {
                name = "Uomo del giorno",
                text = {
                    "Se la {C:attention}prima mano{} di un round",
                    "è una {C:attention}Regina{}, distruggila e",
                    "ottieni {X:mult,C:white}X#1#{} Molt",
                    "{C:inactive}(Attualmente {X:mult,C:white}X#2#{} {C:inactive}Molt){}",
                },
            },
            j_neat_dogsplayingbalatro = {
                name = "Balatro con i cani",
                text = {
                    "{C:green}#1# probabilità su #2#{} di ottenere",
                    "una carta {C:spectral}spettrale{}",
                    "quando una carta {C:planet}pianeta{} viene utilizzata",
                    "{C:inactive}(Serve spazio){}"
                },
            },
            j_neat_frostedprimerib = {
                name = 'Prime costolette glassate',
                text = {
                    "Per le prossime {C:attention}#3#{} mani",
                    "ogni {C:attention}carta{} giocata guadagna",
                    "{C:chips}+#1#{} fiche e {C:mult}+#2#{} Molt permanentemente"
                },
            },
            j_neat_hatsunejoku = {
                name = "Hatsune Joku",
                text = {
                    "{C:attention}Riattiva tutti i{} {C:attention}9{} giocati",
                    "{C:attention}due{} volte in più"
                },
            },
            j_neat_icecreamsandwich = {
                name = "Biscotto gelato",
                text = {
                    "{X:mult,C:white} X#1# {} Molt",
                    "Perde {X:mult,C:white} X#2# {} Molt",
                    "ogni fine round"
                },
            },
            j_neat_jokerzd = {
                name = "JollyZD",
                text = {
                    "Questo jolly ottiene {X:mult,C:white}X#1#{} Molt per",
                    "ogni jolly unico {C:attention}comprato{}",
                    "{C:inactive}(Attualmente {X:mult,C:white}X#2#{} {C:inactive}Molt)"
                },
            },
            j_neat_lockin = {
                name = "Jolly concentrato",
                text = {
                    "Questo jolly ottiene {C:mult}+#1#{} Molt",
                    "quando un {C:attention}buio{} viene selezionato,",
                    "si azzera quando un Jolly viene {C:attention}venduto{}",
                    "{C:inactive}(Attualmente {C:mult}+#2#{C:inactive} Molt)"
                }
            },
            j_neat_nightman = {
                name = "Uomo della notte",
                text = {
                    "Quando giochi una {C:attention}mano{},",
                    "{C:attention}distruggi{} una carta giocata",
                    "e ottieni {X:mult,C:white}X#1#{} Molt",
                    "{C:inactive}(Attualmente {X:mult,C:white}X#2#{} {C:inactive}Molt){}",
                },
            },
            j_neat_sparecutoffs = {
                name = "Tagli in più",
                text = {
                    "Questo Jolly ottiene {C:chips}+#1#{} fiche",
                    "se la mano giocata contiene",
                    "una {C:attention}#2#",
                    "{C:inactive}(Attualmente {C:chips}+#3#{C:inactive} fiche)"
                },
            },
            j_neat_tabbycat = {
                name = "Gatto tigrato",
                text = {
                    "Questo Jolly ottiene {C:mult}+#1#{} Molt",
                    "per ogni {C:attention}#2#{} {C:inactive}(#3#){} carte scartate",
                    "{C:inactive}(Attualmente {C:mult}+#4#{C:inactive} Molt)"
                },
            },
            j_neat_unpaidintern = {
                name = "Stagista",
                text = {
                    "Ogni {C:attention}9{} e {C:attention}5",
                    "giocato da {C:chips}+#1#{} fiche",
                },
            },
            j_neat_wildcardcharlie = {
                name = "Charlie il selvaggio",
                text = {
                    "Le {C:attention}Carte multiuso{} danno {X:mult,C:white}X#1#{} Molt",
                    "se giocate o tenute in mano"
                },
            },
        },
        Mod = {
            Neato_Jokers = {
                name = "Neato Jokers",
                text = {
                    "Aggiunge {C:red}15{} Jolly disegnati da {C:attention}Neato{}!",
                    "Segui su {C:purple}twitch.tv/neato{}!",  -- the "twitch.tv/neato" is turned into a clickable link
                    " ",
                    " ",
                    "{C:attention}Temi inclusi:{}",
                    "C'è sempre il sole a Philadelphia, animali,",
                    "creatori di contenuti, youtuber, Hatsune Miku,",
                    "Arrested Development - Ti presento i miei, e altro!",
                    " ",
                    " ",
                    "Sviluppo e implementazione da {C:neat_lars}Larswijn{} e {C:neat_lia}Lia{}.",
                    "Abilità ideate da noi 3 con l'aiuto dei social.",
                }
            }
        },
    },
    misc = {
        dictionary = {
            b_open_link = "Apre nel browser",
            k_lockin = "Concentrati!",
            k_caught = "Beccato!",
            k_cow = "Muu!",
            k_dog = "Bau!",
            k_gasp = "Ahh!",
            k_dozens = "Ci sono dozzine di noi! Dozzine!",

            neato_music_options = {
                "Sempre attiva",
                "Quando posseduta",
                "Brevemente quando ottenuta",
                "Disattivata",
            },
            neato_music_description = {
                "Quando utilizzare la canzone di Hatsune Joku",
                "(da Pichu-P)"
            },
        }
    }
}
