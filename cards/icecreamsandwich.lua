SMODS.Joker {
    key = "icecreamsandwich",
    unlocked = true,
    discovered = true,
    blueprint_compat = true,
    eternal_compat = false,
    perishable_compat = true,
    pools = { Food = true },
    config = {extra = {Xmult = 5, decrease = 1}},
    rarity = 2,
    atlas = "NeatoJokers",
    pos = {x = 2, y = 0},
    cost = 6,
    loc_vars = function(self, info_queue, card)
        return {vars = {card.ability.extra.Xmult, card.ability.extra.decrease}}
    end,
    calculate = function(self, card, context)
        if context.joker_main then
            return {
                message = localize{type='variable', key='a_xmult', vars={card.ability.extra.Xmult}},
                Xmult_mod = card.ability.extra.Xmult
            }
        elseif context.end_of_round and not context.repetition and not context.game_over and not context.blueprint and not context.individual then
            if card.ability.extra.Xmult - card.ability.extra.decrease <= 1 then 
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
                return {
                    message = localize('k_eaten_ex'),
                    colour = G.C.RED
                }
            else
                card.ability.extra.Xmult = card.ability.extra.Xmult - card.ability.extra.decrease
                return {
                    message = localize{type='variable',key='a_mult_minus',vars={card.ability.extra.decrease}},
                    colour = G.C.RED
                }
            end
        end
    end
}
