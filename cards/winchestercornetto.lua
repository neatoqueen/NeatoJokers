SMODS.Joker { 
    key = "winchestercornetto",
    loc_txt = {
        name = "The Winchester Cornetto",
        text = {
            "{C:chips}+#1#{} Chips if hand",
            "played contains exactly {C:attention}#2#{} suits",
            "{C:chips}-#3#{} Chips each use",
            "{C:inactive}Binge the next Cornetto when destroyed"
        },
    },
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.chips, card.ability.extra.suits, card.ability.extra.chip_mod } }
    end,
    unlocked = true,
    discovered = true,
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    config = { extra = { chips = 50, suits = 3, chip_mod = 10 } },
    rarity = 1,
    atlas = "NeatoJokers",
    pos = {x = 0, y = 2},
    cost = 5,
    calculate = function(self, card, context)
        if context.scoring_hand then
            local suits = count_suits(context)
            if suits == card.ability.extra.suits then
                if context.joker_main then
                    return {
                        message = localize{type='variable',key='a_chips',vars={card.ability.extra.chips}},
                        chip_mod = card.ability.extra.chips
                    }
                elseif context.after then
                    if suits == card.ability.extra.suits then
                        if card.ability.extra.chips - card.ability.extra.chip_mod <= 0 then
                            G.E_MANAGER:add_event(Event({
                                func = function()
                                    play_sound('tarot1')
                                    card.T.r = -0.2
                                    card:juice_up(0.3, 0.4)
                                    card.states.drag.is = true
                                    card.children.center.pinch.x = true
                                    G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.3, blockable = false,
                                        func = function()
                                            G.jokers:remove_card(card)
                                            card:remove()
                                            local card = SMODS.create_card( { key = "j_neat_greatergoodcornetto" } )
                                            card:add_to_deck()
                                            G.jokers:emplace(card)
                                            card:start_materialize()
                                            return true
                                        end
                                    }))
                                    return true
                                end
                            }))

                            return {
                                message = localize('b_next'),
                                colour = G.C.RED
                            }
                        end
                        card.ability.extra.chips = card.ability.extra.chips - card.ability.extra.chip_mod
                        return {
                            message = localize{type='variable',key='a_mult_minus',vars={card.ability.extra.chip_mod}},
                            colour = G.C.RED
                        }
                    end
                end
            end
        end
    end
}
