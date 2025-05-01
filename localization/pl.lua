-- translation by gzrebla
return {
    descriptions = {
        Joker = {
            j_neat_australianshepherd = {
                name = "Owczarek australijski",
                text = {
                    "Tworzy losową kartę {C:planet}Planety{}",
                    "gdy {C:attention}Przeszkadzajka{} jest wybrana",
                    "{C:inactive}(Musi mieć miejsce){}"
                },
            },
            j_neat_bananastand = {
                name = "Stoisko z bananami",
                text = {
                    "{C:green}#1# na #2#{} szans, że zagrana",
                    "{C:attention}ręka{} zdobędzie {C:money}$#4#{},",
                    "{C:green}#1# na #3#{} szans, że ta karta",
                    "zostanie {C:red}zniszczona{} na końcu rundy",
                    "{C:inactive}Tracisz WSZYSTKIE pieniądze jeśli zniszczona{}"
                },
            },
            j_neat_blueyourself = {
                name = "Blue Yourself",
                text = {
                    "Aktywuje ponownie {C:attention}Jokery{} i {C:attention}karty{}",
                    "które są {C:dark_edition}w folii{}",
                    "{C:inactive}(Pomijając #1#){}"
                },
            },
            j_neat_dayman = {
                name = "Dayman",
                text = {
                    "Jeśli {C:attention}pierwsza ręka{} to",
                    "pojedyńcza {C:attention}Królowa{}, zniszcz ją",
                    "i zdobądź {X:mult,C:white}X#1#{} do mnoż.",
                    "{C:inactive}(obecnie: {X:mult,C:white}X#2#{} {C:inactive}do mnoż.){}",
                },
            },
            j_neat_dogsplayingbalatro = {
                name = "Psy grające w Balatro",
                text = {
                    "{C:green}#1# na #2#{} szans na stworzenie",
                    "losowej karty {C:spectral}Ducha{}",
                    "gdy karta {C:planet}Planety{} zostanie użyta",
                    "{C:inactive}(Musi mieć miejsce){}"
                },
            },
            j_neat_frostedprimerib = {
                name = 'Mrożony antrykot',
                text = {
                    "Przez następne {C:attention}#3#{} ręce",
                    "Kaźda zagrana {C:attention}karta{} na stałe zdobywa",
                    "{C:chips}+#1#{} żet. oraz {C:mult}+#2#{} do mnoż. gdy",
                    "zdobywa punkty"
                },
            },
            j_neat_hatsunejoku = {
                name = "Hatsune Joku",
                text = {
                    "{C:attention}Aktywuj ponownie{} zagrane {C:attention}9{}",
                    "dodatkowe {C:attention}dwa{} razy"
                },
            },
            j_neat_icecreamsandwich = {
                name = "Lodowa kanapka",
                text = {
                    "{X:mult,C:white} X#1# {} do mnoż.",
                    "traci {X:mult,C:white} X#2# {} mnoż. za",
                    "każdą rozegraną rundę"
                },
            },
            j_neat_jokerzd = {
                name = "JokerZD",
                text = {
                    "Ten Joker zdobywa {X:mult,C:white}X#1#{} do mnoż. za",
                    "za każdego unikalnego {C:attention}zakupionego{} Jokera",
                    "{C:inactive}(obecnie: {X:mult,C:white}X#2#{} {C:inactive}do mnoż.)"
                },
            },
            j_neat_lockin = {
                name = "Joker-Bloker",
                text = {
                    "Ten Joker zdobywa {C:mult}+#1#{} do mnoż.",
                    "gdy {C:attention}Przeszkadzajka{} jest wybrana,",
                    "zeruje się gdy Joker jest {C:attention}sprzedany{}",
                    "{C:inactive}(obecnie: {C:mult}+#2#{C:inactive} do mnoż.)"
                }
            },
            j_neat_nightman = {
                name = "Nightman",
                text = {
                    "Gdy {C:attention}ręka{} jest zagrana,",
                    "{C:attention}niszczy{} losową kartę zdobywającą punkty",
                    "i zdobywa {X:mult,C:white}X#1#{} do mnoż.",
                    "{C:inactive}(obecnie: {X:mult,C:white}X#2#{} {C:inactive}do mnoż.){}"
                },
            },
            j_neat_sparecutoffs = {
                name = "Zapasowe szorty",
                text = {
                    "Ten Joker zdobywa {C:chips}+#1#{} żet.",
                    "jeśli zagrana ręka zawiera",
                    "{C:attention}#2#",
                    "{C:inactive}(obecnie {C:chips}+#3#{C:inactive} do żet.)"
                },
            },
            j_neat_tabbycat = {
                name = "Kocur bury",
                text = {
                    "Ten Joker zdobywa {C:mult}+#1#{} do mnoż.",
                    "za każde {C:attention}#2#{} {C:inactive}[#3#]{}",
                    "szt. odrzuconych kart",
                    "{C:inactive}(obecnie: {C:mult}+#4#{C:inactive} do mnoż.)"
                },
            },
            j_neat_unpaidintern = {
                name = "Nieopłacany stażysta",
                text = {
                    "Każda {C:attention}9{} i {C:attention}5",
                    "zdobywa {C:chips}+#1#{} żet.",
                    "gdy zdobywa punkty"
                },
            },
            j_neat_wildcardcharlie = {
                name = "Wild Card Charlie",
                text = {
                    "{C:attention}Dzikie Karty{} zdobywają {X:mult,C:white}X#1#{} do mnoż.",
                    "gdy zdobywją punkty lub gdy są trzymane w ręce"
                },
            },
        },
        Mod = {
            Neato_Jokers = {
                name = "Neato Jokers",
                text = {
                    "Dodaje {C:red}15{} tematycznych Jokerów, grafika autorstwa {C:attention}Neato{}!",
                    "Obserwuj na {C:purple}twitch.tv/neato{}, aby wesprzeć!",
                    " ",
                    " ",
                    "{C:attention}Wyróżnione motywy:{}",
                    "Always Sunny in Philadelphia, Zwierzęta,",
                    "Twórcy, Youtuberzy, Hatsune Miku,",
                    "Arrested Development i więcej",
                    " ",
                    " ",
                    "Programowanie i implementacja: {C:neat_lars}Larswijn{} oraz {C:neat_lia}Lia{}.",
                    "Umiejętności wymyślone przez naszą trójkę z pomocą społeczności."
                }
            }
        },
    },
    misc = {
        dictionary = {
            b_open_link = "Otwiera w przeglądarce",
            k_lockin = "Zatwierdź!",
            k_caught = "Złapany!",
            k_cow = "Muu!",
            k_dog = "Hau!",
            k_gasp = "Zdziwienie!",
            k_dozens = "Jest nas tu tuziny! Tuziny!",

            neato_music_options = {
                "Zawsze włączona",
                "Gdy posiadany",
                "Krótko po zakupie",
                "Wyłączona",
            },
            neato_music_description = {
                "Kiedy odtwarzać muzykę Hatsune Joku",
                "(autor: Pichu-P)"
            },
        }
    }
}
