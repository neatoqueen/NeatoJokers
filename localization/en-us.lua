return {
    descriptions = {
        Joker = {
            j_neat_australianshepherd = {
                name = "Australian Shepherd",
                text = {
                    "Create a random {C:planet}Planet{} card",
                    "when {C:attention}Blind{} is selected",
                    "{C:inactive}(Must have room){}"
                },
            },
            j_neat_bananastand = {
                name = "The Banana Stand",
                text = {
                    "{C:green}#1# in #2#{} chance for played",
                    "{C:attention}hand{} to give {C:money}$#4#{},",
                    "{C:green}#1# in #3#{} chance this card",
                    "is {C:red}destroyed{} at the end of round",
                    "{C:inactive}Lose ALL money if destroyed{}"
                },
            },
            j_neat_blueyourself = {
                name = "Blue Yourself",
                text = {
                    "Retriggers {C:attention}Jokers{} and {C:attention}cards{}",
                    "with the {C:dark_edition}Foil{} edition",
                    "{C:inactive}(Excluding #1#){}"
                },
            },
            j_neat_dayman = {
                name = "Dayman",
                text = {
                    "If {C:attention}first hand{} of round is",
                    "a single {C:attention}Queen{}, destroy it and",
                    "gain {X:mult,C:white}X#1#{} Mult",
                    "{C:inactive}(Currently {X:mult,C:white}X#2#{} {C:inactive}Mult){}",
                },
            },
            j_neat_dogsplayingbalatro = {
                name = "Dogs Playing Balatro",
                text = {
                    "{C:green}#1# in #2#{} chance to fetch",
                    "a random {C:spectral}Spectral{} card",
                    "when a {C:planet}Planet{} card is used",
                    "{C:inactive}(Must have room){}"
                },
            },
            j_neat_frostedprimerib = {
                name = 'Frosted Prime Rib',
                text = {
                    "For the next {C:attention}#3#{} hands",
                    "Every played {C:attention}card{} permanently gains",
                    "{C:chips}+#1#{} Chips and {C:mult}+#2#{} Mult when scored"
                },
            },
            j_neat_hatsunejoku = {
                name = "Hatsune Joku",
                text = {
                    "{C:attention}Retrigger{} played {C:attention}9s{}",
                    "an additional {C:attention}two{} times"
                },
            },
            j_neat_icecreamsandwich = {
                name = "Ice Cream Sandwich",
                text = {
                    "{X:mult,C:white} X#1# {} Mult",
                    "loses {X:mult,C:white} X#2# {} Mult per",
                    "round played"
                },
            },
            j_neat_jokerzd = {
                name = "JokerZD",
                text = {
                    "This Joker gains {X:mult,C:white}X#1#{} Mult for",
                    "every unique joker {C:attention}purchased{}",
                    "{C:inactive}(Currently {X:mult,C:white}X#2#{} {C:inactive}Mult)"
                },
            },
            j_neat_lockin = {
                name = "Lock-In Joker",
                text = {
                    "This Joker gains {C:mult}+#1#{} Mult",
                    "when {C:attention}Blind{} is selected,",
                    "resets when a Joker is {C:attention}sold{}",
                    "{C:inactive}(Currently {C:mult}+#2#{C:inactive} Mult)"
                }
            },
            j_neat_nightman = {
                name = "Nightman",
                text = {
                    "When a {C:attention}hand{} is played,",
                    "{C:attention}destroy{} a random scoring card",
                    "and gain {X:mult,C:white}X#1#{} Mult",
                    "{C:inactive}(Currently {X:mult,C:white}X#2#{} {C:inactive}Mult){}",
                },
            },
            j_neat_sparecutoffs = {
                name = "Spare Cutoffs",
                text = {
                    "This Joker gains {C:chips}+#1#{} Chips",
                    "if played hand contains",
                    "a {C:attention}#2#",
                    "{C:inactive}(Currently {C:chips}+#3#{C:inactive} Chips)"
                },
            },
            j_neat_tabbycat = {
                name = "Tabby Cat",
                text = {
                    "This Joker gains {C:mult}+#1#{} Mult",
                    "every {C:attention}#2#{} {C:inactive}[#3#]{} cards discarded",
                    "{C:inactive}(Currently {C:mult}+#4#{C:inactive} Mult)"
                },
            },
            j_neat_unpaidintern = {
                name = "Unpaid Intern",
                text = {
                    "Every {C:attention}9{} and {C:attention}5",
                    "gives {C:chips}+#1#{} Chips when scored",
                },
            },
            j_neat_wildcardcharlie = {
                name = "Wild Card Charlie",
                text = {
                    "{C:attention}Wild Cards{} give {X:mult,C:white}X#1#{} Mult when",
                    "scored or when held in hand"
                },
            },
        },
        Mod = {
            Neato_Jokers = {
                name = "Neato Jokers",
                text = {
                    "Adds {C:red}15{} themed Jokers, art by {C:attention}Neato{}!",
                    "Follow on {C:purple}twitch.tv/neato{} to support!",  -- the "twitch.tv/neato" is turned into a clickable link
                    " ",
                    " ",
                    "{C:attention}Featured Themes:{}",
                    "Always Sunny in Philadelphia, Animals,",
                    "Creators, Youtubers, Hatsune Miku,",
                    "Arrested Development, and more",
                    " ",
                    " ",
                    "Programming and implementation by {C:neat_lars}Larswijn{} and {C:neat_lia}Lia{}.",
                    "Abilities concepted by us 3 with help from socials.",
                }
            }
        },
        Other = {
            card_extra_mult = {
                text = {
                    "{C:mult}+#1#{} extra mult",
                },
            },
        },
    },
    misc = {
        dictionary = {
            b_open_link = "Opens in browser",
            k_lockin = "Lock in!",
            k_caught = "Caught!",
            k_cow = "Moo!",
            k_dog = "Woof!",
            k_gasp = "Gasp!",
            k_dozens = "There are dozens of us! Dozens!",
        }
    }
}
