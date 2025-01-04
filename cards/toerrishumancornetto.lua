SMODS.Joker {
    key = "toerrishumancornetto",
    loc_txt = {
        name = "To Err Is Human, So Err Cornetto",
        text = {
            "{X:mult,C:white}X#1#{} Mult if hand",
            "played contains exactly {C:attention}#2#{} suits",
            "Loses {X:mult,C:white}X#4#{} Mult if hand",
            "played contains exactly {C:attention}#3#{} suits"
        },
    },
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.x_mult, card.ability.extra.suits, card.ability.extra.suits_destroy, card.ability.extra.x_mult_mod } }
    end,
    unlocked = true,
    discovered = true,
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    config = { extra = { x_mult = 5, suits = 3, suits_destroy = 4, x_mult_mod = 1 } },
    yes_pool_flag = 'never',
    rarity = 1,
    atlas = "NeatoJokers",
    pos = {x = 2, y = 2},
    cost = 5,
    calculate = function(self, card, context)
        if context.joker_main then
            local suits = count_suits(context)
            if suits == card.ability.extra.suits then
                return {
                    message = localize{type='variable',key='a_xmult',vars={card.ability.extra.x_mult}},
                    Xmult_mod = card.ability.extra.x_mult
                }
            elseif suits == card.ability.extra.suits_destroy then
                if card.ability.extra.x_mult - card.ability.extra.x_mult_mod <= 0 then
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
                                    card = nil
                                    return true
                                end
                            }))
                            return true
                        end
                    }))

                    return {
                        message = localize('k_eaten_ex'),
                        colour = G.C.RED
                    }
                else
                    card.ability.extra.x_mult = card.ability.extra.x_mult - card.ability.extra.x_mult_mod
                    return {
                        message = localize{type='variable',key='a_xmult_minus',vars={card.ability.extra.x_mult_mod}},
                        colour = G.C.RED
                    }
                end
            end
        end
    end
}
