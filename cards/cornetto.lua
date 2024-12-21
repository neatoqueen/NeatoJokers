local countSuits = function(context)
    local suits = {
        ['Hearts'] = 0,
        ['Diamonds'] = 0,
        ['Spades'] = 0,
        ['Clubs'] = 0
    }
    for i = 1, #context.scoring_hand do
        if context.scoring_hand[i].ability.name ~= 'Wild Card' then
            for j,v in pairs(suits) do
                if context.scoring_hand[i]:is_suit(j, true) and suits[j] == 0 then suits[j] = 1 end
            end
        elseif context.scoring_hand[i].ability.name == 'Wild Card' then
            for j,v in pairs(suits) do
                if context.scoring_hand[i]:is_suit(j) and suits[j] == 0 then suits[j] = 1 break end
            end
        end
    end
    return suits["Hearts"] + suits["Diamonds"] + suits["Spades"] + suits["Clubs"]
end

SMODS.Joker { 
    key = "cornettowinchester",
    loc_txt = {
        name = "The Winchester Cornetto",
        text = {
            "{C:chips}+#1#{} Chips if hand",
            "played contains exactly {C:attention}#2#{} suits",
            "Loses {C:chips}-#4#{} Chips if hand",
            "played contains exactly {C:attention}#3#{} suits"
        },
    },
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.chips, card.ability.extra.suits, card.ability.extra.suits_destroy, card.ability.extra.chip_mod } }
    end,
    unlocked = true,
    discovered = true,
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    config = { extra = { chips = 50, suits = 3, suits_destroy = 4, chip_mod = 10 } },
    no_pool_flag = 'winchester_cornetto_eaten',
    rarity = 1,
    atlas = "NeatoJokers",
    pos = {x = 0, y = 2},
    cost = 5,
    calculate = function(self, card, context)
        if context.joker_main then
            local suits = countSuits(context)
            if suits == card.ability.extra.suits then
                return {
                    message = localize{type='variable',key='a_chips',vars={card.ability.extra.chips}},
                    chip_mod = card.ability.extra.chips
                }
            elseif suits == card.ability.extra.suits_destroy then
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
                                        card = nil
                                    return true; end}))
                            return true
                        end
                    }))

                    G.GAME.pool_flags.winchester_cornetto_eaten = true

                    return {
                        message = localize('k_eaten_ex'),
                        colour = G.C.RED
                    }
                else
                    card.ability.extra.chips = card.ability.extra.chips - card.ability.extra.chip_mod
                    return {
                        message = localize{type='variable',key='a_chips_minus',vars={card.ability.extra.chip_mod}},
                        colour = G.C.BLUE
                    }
                end
            end
        end
    end
}

SMODS.Joker {
    key = "cornettogreatergood",
    loc_txt = {
        name = "The Greater Good Cornetto",
        text = {
            "{C:mult}+#1#{} Mult if hand",
            "played contains exactly {C:attention}#2#{} suits",
            "Loses {C:mult}-#4#{} Mult if hand",
            "played contains exactly {C:attention}#3#{} suits"
        },
    },
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.mult, card.ability.extra.suits, card.ability.extra.suits_destroy, card.ability.extra.mult_mod } }
    end,
    unlocked = true,
    discovered = true,
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    config = { extra = { mult = 15, suits = 3, suits_destroy = 4, mult_mod = 3 } },
    no_pool_flag = 'greatergood_cornetto_eaten',
    yes_pool_flag = 'winchester_cornetto_eaten',
    rarity = 1,
    atlas = "NeatoJokers",
    pos = {x = 1, y = 2},
    cost = 5,
    calculate = function(self, card, context)
        if context.joker_main then
            local suits = countSuits(context)
            if suits == card.ability.extra.suits then
                return {
                    message = localize{type='variable',key='a_mult',vars={card.ability.extra.mult}},
                    mult_mod = card.ability.extra.mult
                }
            elseif suits == card.ability.extra.suits_destroy then
                if card.ability.extra.mult - card.ability.extra.mult_mod <= 0 then
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
                                    return true; end}))
                            return true
                        end
                    }))

                    G.GAME.pool_flags.greatergood_cornetto_eaten = true

                    return {
                        message = localize('k_eaten_ex'),
                        colour = G.C.RED
                    }
                else
                    card.ability.extra.mult = card.ability.extra.mult - card.ability.extra.mult_mod
                    return {
                        message = localize{type='variable',key='a_mult_minus',vars={card.ability.extra.mult_mod}},
                        colour = G.C.RED
                    }
                end
            end
        end
    end
}

SMODS.Joker {
    key = "cornettoerrishuman",
    loc_txt = {
        name = "To Err Is Human, So Err Cornetto",
        text = {
            "{X:mult,C:white}X#1#{} Mult if hand",
            "played contains exactly {C:attention}#2#{} suits",
            "Loses {X:mult,C:white}X#5#{} Mult if hand",
            "played contains exactly {C:attention}#3#{} suits",
            "{C:money}$#4#{} when destroyed",
        },
    },
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.x_mult, card.ability.extra.suits, card.ability.extra.suits_destroy, card.ability.extra.dollars, card.ability.extra.x_mult_mod } }
    end,
    unlocked = true,
    discovered = true,
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    config = { extra = { x_mult = 5, suits = 3, suits_destroy = 4, dollars = 33, x_mult_mod = 1 } },
    no_pool_flag = 'errishuman_cornetto_eaten',
    yes_pool_flag = 'greatergood_cornetto_eaten',
    rarity = 1,
    atlas = "NeatoJokers",
    pos = {x = 2, y = 2},
    cost = 5,
    calculate = function(self, card, context)
        if context.joker_main then
            local suits = countSuits(context)
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
                                    return true; end}))
                            return true
                        end
                    }))

                    ease_dollars(card.ability.extra.dollars)
                    G.GAME.pool_flags.errishuman_cornetto_eaten = true

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
