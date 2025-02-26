--[[Translation made by ToufouMaster]]

return {
    descriptions = {
        Joker = {
            j_neat_australianshepherd = {
                name = "Berger Australien",
                text = {
                    "Créer une carte {C:planet}Planète{} aléatoire",
                    "quand la {C:attention}Blinde{} est sélectionnée.",
                    "{C:inactive}(Selon la place disponible){}"
                },
            },
            j_neat_bananastand = {
                name = "Le Stand de Banane",
                text = {
                    "{C:green}#1# chance(s) sur #2#{} pour que",
                    "les {C:attention}mains{} jouées donnent {C:money}$#4#{},",
                    "{C:green}#1# chance(s) sur #3#{} pour que ce joker",
                    "soit {C:red}détruite{} à la fin de la manche",
                    "{C:inactive}Perdez TOUT votre argent si détruite{}"
                },
            },
            j_neat_blueyourself = {
                name = "Plaisir Solitaire",
                text = {
                    "Déclenche à nouveau les {C:attention}Jokers{} et les {C:attention}cartes{}",
                    "avec une édition {C:dark_edition}Brillante{}",
                    "{C:inactive}(Sauf Plaisir Solitaire){}"
                },
            },
            j_neat_dayman = {
                name = "l'Homme du Jour",
                text = {
                    "Si la {C:attention}première main{} du round est",
                    "une {C:attention}Reine{} simple, détruit la et",
                    "gagne {X:mult,C:white}X#1#{} au Multi",
                    "{C:inactive}(Actuellement : Multi. {X:mult,C:white}X#2#{}{C:inactive}){}",
                },
            },
            j_neat_dogsplayingbalatro = {
                name = "Chiens Jouant à Balatro",
                text = {
                    "{C:green}#1# chance(s) sur #2#{} de piocher",
                    "une carte {C:spectral}Spectrale{} aléatoire quand",
                    "une carte {C:planet}Planete{} est utilisée",
                    "{C:inactive}(Selon la place disponible){}"
                },
            },
            j_neat_frostedprimerib = {
                name = 'Côte de Bœuf Givrée',
                text = {
                    "Pour les {C:attention}#3#{} prochaines mains",
                    "Chaque {C:attention}cartes{} jouées gagne",
                    "{C:chips}+#1#{} Jetons et {C:mult}+#2#{} au Multi.",
                    "lorsqu'elles marquent des points"
                },
            },
            j_neat_hatsunejoku = {
                name = "Hatsune Joku", --[[Jaksune Miku]]
                text = {
                    "Déclenche à nouveau chaque {C:attention}9{}",
                    "joué, {C:attention}2{} fois de plus"
                },
            },
            j_neat_icecreamsandwich = {
                name = "Sandwich à la Crême Glacée",
                text = {
                    "Multi. {X:mult,C:white} X#1# {}",
                    "retire {X:mult,C:white} X#2# {} au Multi.",
                    "à chaque manche jouée"
                },
            },
            j_neat_jokerzd = {
                name = "JokerZD",
                text = {
                    "Ce Joker gagne {X:mult,C:white}X#1#{} au Multi. à",
                    "chaque joker unique {C:attention}acheté{} au magasin",
                    "{C:inactive}(Actuellement : Multi. {X:mult,C:white}X#2#{}{C:inactive})"
                },
            },
            j_neat_lockin = {
                name = "Joker Verrouillé", --[[Couldn't find the reference i know it's about a streamer]]
                text = {
                    "Ce Joker gagne {C:mult}+#1#{} au Multi.",
                    "quand la {C:attention}Blinde{} est sélectionnée,",
                    "Se réinitialise quand un joker est {C:attention}vendu{}",
                    "{C:inactive}(Actuellement : {C:mult}+#2#{C:inactive} Multi.)"
                }
            },
            j_neat_nightman = {
                name = "l'Homme de la Nuit",
                text = {
                    "Quand une {C:attention}main{} est jouée,",
                    "{C:attention}détruit{} une carte marquante aléatoire",
                    "et ajoute {X:mult,C:white}X#1#{} au Multi.",
                    "{C:inactive}(Actuellement : Multi. {X:mult,C:white}X#2#{} {C:inactive}){}",
                },
            },
            j_neat_sparecutoffs = {
                name = "Petit Jean",
                text = {
                    "Ce Joker octroie {C:chips}+#1#{} Jetons",
                    "si la main jouée contient",
                    "une {C:attention}#2#",
                    "{C:inactive}(Actuellement : {C:chips}+#3#{C:inactive} Jetons)"
                },
            },
            j_neat_tabbycat = {
                name = "Chat Tigré",
                text = {
                    "Ce Jokers octroie {C:mult}+#1#{} au Multi.",
                    "à chaque {C:attention}#2#{} {C:inactive}[#3#]{} défaussé",
                    "{C:inactive}(Actuellement : {C:mult}+#4#{C:inactive} Multi.)"
                },
            },
            j_neat_unpaidintern = {
                name = "Interne Malpayé",
                text = {
                    "Chaque {C:attention}9{} ou {C:attention}5 joué octroie",
                    "{C:chips}+#1#{} Jetons lorsqu'elle marque des points",
                },
            },
            j_neat_wildcardcharlie = {
                name = "Charlie aux Cartes Sauvages",
                text = {
                    "Chaque {C:attention}Carte Sauvage{} octroie {X:mult,C:white}X#1#{} au Multi.",
                    "lorsqu'elle marque des points ou qu'elle est en main."
                },
            },
        },
        Mod = {
            Neato_Jokers = {
                name = "Neato Jokers",
                text = {
                    "Ajoute {C:red}15{} Joker à thême, illustré par {C:attention}Neato{}!",
                    "Suivez le sur {C:purple}twitch.tv/neato{} pour le supporter!",  -- the "twitch.tv/neato" is turned into a clickable link
                    " ",
                    " ",
                    "{C:attention}Thêmes inclus:{}",
                    "Always Sunny in Philadelphia, Animaux,",
                    "Createurs, Youtubeurs, Hatsune Miku,",
                    "Arrested Development, et plus encore",
                    " ",
                    " ",
                    "Programmation et implémentation par {C:neat_lars}Larswijn{} et {C:neat_lia}Lia{}.",
                    "Les abilitées ont été concu par nous 3 avec l'aide de notre communautée",
                    "sur les réseaux sociaux.",
                }
            }
        },
        Other = {
            card_extra_mult = {
                text = {
                    "{C:mult}+#1#{} Multi. en plus",
                },
            },
        },
    },
    misc = {
        dictionary = {
            b_open_link = "Ouvrir dans le navigateur",
            k_lockin = "Verrouillé!",
            k_caught = "Attrapé!",
            k_cow = "Meuh!",
            k_dog = "Woof!",
            k_gasp = "Uh!",
            k_dozens = "Nous sommes des dizaines! Des dizaines!",

            neato_music_options = {
                "Toujours actif",
                "Tant que possédé",
                "Juste après achat",
                "Désactivé",
            },
            neato_music_description = {
                "Quand jouer la musique Hatsune Joku",
                "(par Pichu-P)"
            },
        }
    }
}
