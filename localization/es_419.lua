-- translation by Franderman123 and ElTioRata
return {
    descriptions = {
        Joker = {
            j_neat_australianshepherd = {
                name = "Pastor ovejero",
                text = {
                    "Crea una carta de {C:planet}planeta{}",
                    "cuando se selecciona la {C:attention}ciega{}",
                    "{C:inactive}(Debe haber espacio){}"
                },
            },
            j_neat_bananastand = {
                name = "Puesto bananero",
                text = {
                    "{C:green}#1# en #2#{} probabilidades de que la",
                    "{C:attention}mano jugada{} otorgue {C:money}$#4#{},",
                    "{C:green}#1# en #3#{} probabilidades de que la carta",
                    "se {C:red}destruya{} al final de la ronda",
                    "{C:inactive}Pierde TODO tu dinero si se destruye{}"
                },
            },
            j_neat_blueyourself = {
                name = "Ponte azul",
                text = {
                    "Reactiva {C:attention}comodines{} y {C:attention}cartas{}",
                    "que tenga la edición {C:dark_edition}Laminado{}",
                    "{C:inactive}(Excluyendo #1#){}"
                },
            },
            j_neat_dayman = {
                name = "Dayman",
                text = {
                    "Si la {C:attention}primera mano{} de la ronda",
                    "es una sola {C:attention}Reina{}, destrúyela y",
                    "obtiene {X:mult,C:white}X#1#{} multi",
                    "{C:inactive}(Actual {X:mult,C:white}X#2#{} {C:inactive}multi){}",
                },
            },
            j_neat_dogsplayingbalatro = {
                name = "Perros jugando Balatro",
                text = {
                    "{C:green}#1# en #2#{} probabilidades de encontrar",
                    "una carta {C:spectral}espectral{} aleatoria",
                    "cuando una carta de {C:planet}planeta{} se usa",
                    "{C:inactive}(Debe haber espacio){}"
                },
            },
            j_neat_frostedprimerib = {
                name = 'Costillas congeladas',
                text = {
                    "Durante las próximas {C:attention}#3#{} manos,",
                    "cada {C:attention}carta{} jugada gana permanentemente",
                    "{C:chips}+#1#{} fichas y {C:mult}+#2#{} multi cuando anotan",

                },
            },
            j_neat_hatsunejoku = {
                name = "Hatsune Joku",
                text = {
                    "{C:attention}Reactiva{} cada {C:attention}9{} jugado",
                    "{C:attention}dos{} veces adicionales"
                },
            },
            j_neat_icecreamsandwich = {
                name = "Sándwich helado",
                text = {
                    "{X:mult,C:white} X#1# {} multi",
                    "pierde {X:mult,C:white} X#2# {} multi por",
                    "cada ronda jugada"
                },
            },
            j_neat_jokerzd = {
                name = "ComodínZD",
                text = {
                    "Este comodín obtiene {X:mult,C:white}X#1#{} multi por",
                    "cada comodín único {C:attention}comprado{}",
                    "{C:inactive}(Actual {X:mult,C:white}X#2#{} {C:inactive}multi)"
                },
            },
            j_neat_lockin = {
                name = "Comodín sellado",
                text = {
                    "Este comodín obtiene {C:mult}+#1#{} multi",
                    "cuando se selecciona la {C:attention}ciega{},",
                    "Se reestablece cuando un comodín es {C:attention}vendido{}",
                    "{C:inactive}(Actual {C:mult}+#2#{C:inactive} multi)"
                }
            },
            j_neat_nightman = {
                name = "Nightman",
                text = {
                    "Cuando se juega una {C:attention}mano{},",
                    "{C:attention}destruye{} una carta aleatoria que anota",
                    "y gana {X:mult,C:white}X#1#{} multi",
                    "{C:inactive}(Actual {X:mult,C:white}X#2#{} {C:inactive}multi){}",
                },
            },
            j_neat_sparecutoffs = {
                name = "Bermudas vaqueras",
                text = {
                    "Este comodín obtiene {C:chips}+#1#{} fichas",
                    "si la mano jugada tiene",
                    "un {C:attention}#2#",
                    "{C:inactive}(Actual {C:chips}+#3#{C:inactive} fichas)"
                },
            },
            j_neat_tabbycat = {
                name = "Gato atigrado",
                text = {
                    "Este comodín obtiene {C:mult}+#1#{} multi",
                    "por cada {C:attention}#2#{} {C:inactive}[#3#]{} cartas descartadas",
                    "{C:inactive}(Actual {C:mult}+#4#{C:inactive} multi)"
                },
            },
            j_neat_unpaidintern = {
                name = "Pasante no remunerado",
                text = {
                    "Cada {C:attention}9{} y {C:attention}5",
                    "otorga {C:chips}+#1#{} fichas cuando anota",
                },
            },
            j_neat_wildcardcharlie = {
                name = "Comodín Charly",
                text = {
                    "Las {C:attention}cartas versátiles{} otorgan {X:mult,C:white}X#1#{} multi cuando",
                    "anotan o si están en tu mano"
                },
            },
        },
        Mod = {
            Neato_Jokers = {
                name = "Neato Jokers",
                text = {
                    "¡Agrega {C:red}15{} comodines tematizados, arte hecho por {C:attention}Neato{}!",
                    "¡Sígueme en {C:purple}twitch.tv/neato{} para apoyarme!",  -- the "twitch.tv/neato" is turned into a clickable link
                    " ",
                    " ",
                    "{C:attention}Temas presentados:{}",
                    "Siempre hay sol en Filadelfia, Animales,",
                    "Creadores, Youtubers, Hatsune Miku,",
                    "Arrested Development, y más",
                    " ",
                    " ",
                    "Programación e implementación por {C:neat_lars}Larswijn{} y {C:neat_lia}Lia{}.",
                    "Habilidades conceptualizadas por nosotros 3 con ayuda de conocidos."
                }
            }
        },
    },
    misc = {
        dictionary = {
            b_open_link = "Se abre en navegador",
            k_lockin = "¡Concéntrate!",
            k_caught = "¡Te atrapé!",
            k_cow = "¡Muu!",
            k_dog = "¡Guau!",
            k_gasp = "¡Gasp!",
            k_dozens = "¡Hay docenas de nosotros, docenas!",

            neato_music_options = {
                "Siempre",
                "En posesión",
                "Brevemente al comprar",
                "No",
            },
            neato_music_description = {
                "Cuando se reproducirá la canción de Hatsune Joku",
                "(Hecha por Pichu-P)"
            },
        }
    }
}
