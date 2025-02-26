-- translation by SarcasticPotato and PinkMaggit
return {
    descriptions = {
        Joker = {
            j_neat_australianshepherd = {
                name = "Pastor-Australiano",
                text = {
                    "Crie uma carta aleatória de {C:planet}Planeta{}",
                    "quando o {C:attention}Blind{} é selecionado",
                    "{C:inactive}(Deve ter Espaço){}"
                },
            },
            j_neat_bananastand = {
                name = "O Estande da Banana",
                text = {
                    "Chance de {C:green}#1# em #2#{} de que a",
                    "{C:attention}mão{} jogada dê {C:money}$#4#{},",
                    "Chance de {C:green}#1# em #3#{} desta carta",
                    "ser {C:red}destruída{} no fim da rodada",
                    "{C:inactive}Perca TODO o dinheiro se destruída{}"
                },
            },
            j_neat_blueyourself = {
                name = "Azule-se",
                text = {
                    "Reative {C:attention}Curingas{} e {C:attention}cartas{}",
                    "{C:dark_edition}Laminados{}",
                    "{C:inactive}(Com exceção de #1#){}"
                },
            },
            j_neat_dayman = {
                name = "Dayman",
                text = {
                    "Se a {C:attention}primeira mão{} da rodada for",
                    "uma única {C:attention}Dama{}, destrua-a",
                    "e ganhe {X:mult,C:white}X#1#{} Multi",
                    "{C:inactive}(No momento {X:mult,C:white}X#2#{} {C:inactive}Multi){}",
                },
            },
            j_neat_dogsplayingbalatro = {
                name = "Cachorros jogando Balatro",
                text = {
                    "Chance de{C:green}#1# em #2#{} de catar",
                    "uma carta {C:spectral}Espectral{} aleatória",
                    "quando uma carta de {C:planet}Planeta{} é usada",
                    "{C:inactive}(Deve ter Espaço){}"
                },
            },
            j_neat_frostedprimerib = {
                name = 'Costela de Primeira Congelada', -- If too long, could be just "Costela Congelada" but then it'd be more like "Frosted Rib"
                text = {
                    "Pelas próximas {C:attention}#3#{} mãos",
                    "cada {C:attention}carta{} jogada ganha permanentemente",
                    "{C:chips}+#1#{} Fichas e {C:mult}+#2#{} Multi quando pontuadas"
                },
            },
            j_neat_hatsunejoku = {
                name = "Hatsune Mico",
                text = {
                    "{C:attention}Reative{} {C:attention}9s{} jogados",
                    "mais {C:attention}duas{} vezes"
                },
            },
            j_neat_icecreamsandwich = {
                name = "Sanduíche de Sorvete",
                text = {
                    "{X:mult,C:white} X#1# {} Multi",
                    "perde {X:mult,C:white} X#2# {} Multi por",
                    "rodada jogada"
                },
            },
            j_neat_jokerzd = {
                name = "CuringaZD",
                text = {
                    "Esse Curinga ganha {X:mult,C:white}X#1#{} Multi por",
                    "cada Curinga único {C:attention}comprado{}",
                    "{C:inactive}(No momento {X:mult,C:white}X#2#{} {C:inactive}Multi)"
                },
            },
            j_neat_lockin = {
                name = "Curinga Trancador",
                text = {
                    "Este Curinga ganha {C:mult}+#1#{} Multi",
                    "quando o {C:attention}Blind{} é selecionado,",
                    "zera quando um Curinga é {C:attention}vendido{}",
                    "{C:inactive}(No momento {C:mult}+#2#{C:inactive} Multi)"
                }
            },
            j_neat_nightman = {
                name = "Nightman",
                text = {
                    "Quando uma {C:attention}mão{} é jogada,",
                    "{C:attention}destrua{} uma carta pontuante aleatória",
                    "e ganhe {X:mult,C:white}X#1#{} Multi",
                    "{C:inactive}(No momento {X:mult,C:white}X#2#{} {C:inactive}Multi){}",
                },
            },
            j_neat_sparecutoffs = {
                name = "Short Reserva",
                text = {
                    "Esse Curinga ganha {C:chips}+#1#{} Fichas",
                    "Se a mão jogada",
                    "contém {C:attention}#2#",            -- assuming it's always two pair, there's no need for 'um(a)'
                    "{C:inactive}(No momento {C:chips}+#3#{C:inactive} Fichas)"
                },
            },
            j_neat_tabbycat = {
                name = "Gato Tigrado",  -- Aka "Gato Rajado" or "Gato Malhado". (might be regional, but for me 'gato rajado' sounds more natural)
                text = {
                    "Esse Curinga ganha {C:mult}+#1#{} Multi",
                    "a cada {C:attention}#2#{} {C:inactive}[#3#]{} cartas descartadas",
                    "{C:inactive}(No momento {C:mult}+#4#{C:inactive} Multi)"
                },
            },
            j_neat_unpaidintern = {
                name = "Estagiário Não Remunerado",
                text = {
                    "{C:attention}9s{} e {C:attention}5s",
                    "dão {C:chips}+#1#{} Fichas quando pontuados",
                },
            },
            j_neat_wildcardcharlie = {
                name = "Charlie Loucão",
                text = {
                    "{C:attention}Cartas Naipe Curinga{} dão {X:mult,C:white}X#1#{} Multi quando",
                    "pontuadas ou mantidas em mão"
                },
            },
        },
        Mod = {
            Neato_Jokers = {
                name = "Neato Jokers",
                text = {
                    "Adiciona {C:red}15{} Curingas temáticos, arte por {C:attention}Neato{}!",
                    "Siga-nos em {C:purple}twitch.tv/neato{} para nos apoiar!",  -- the "twitch.tv/neato" is turned into a clickable link
                    " ",
                    " ",
                    "{C:attention}Temas Presentes:{}",
                    "Always Sunny in Philadelphia, Animais,",
                    "Criadores, Youtubers, Hatsune Miku,",
                    "Arrested Development/Caindo na Real, e mais",
                    " ",
                    " ",
                    "Programação e implementação por {C:neat_lars}Larswijn{} e {C:neat_lia}Lia{}.",
                    "Abilidades conceitualizadas por nós 3 com auxílio das redes sociais.",
                }
            }
        },
        Other = {
            card_extra_mult = {
                text = {
                    "{C:mult}+#1#{} multi extra",
                },
            },
        },
    },
    misc = {
        dictionary = {
            b_open_link = "Abre no Navegador",
            k_lockin = "Trancando!",
            k_caught = "Pego!",
            k_cow = "Muu!",
            k_dog = "Au-Au!",
            k_gasp = "'Suspiro!'",
            k_dozens = "Somos dúzias! Dúzias!",

            neato_music_options = {
                "Sempre",
                "Se possuído",
                "Logo após a compra",
                "Nunca",
            },
            neato_music_description = {
                "Quando tocar a música de Hatsune Joku",
                "(por Pichu-P)"
            },
        }
    }
}
