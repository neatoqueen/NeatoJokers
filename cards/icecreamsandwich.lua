SMODS.Joker {
    key = "icecreamsandwich", 
    loc_txt = {
        name = "Ice Cream Sandwich",
        text = {"{X:mult,C:white} X#1# {} Mult",
                "loses {X:mult,C:white} X#2# {} Mult per",
                "round played"},
    }, 
    unlocked = true, 
    discovered = true, 
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    config = {Xmult = 5, extra = 1},
    rarity = 2,
    atlas = "NeatoJokers",
    pos = {x = 3, y = 0},
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return {vars = {card.ability.Xmult, card.ability.extra}}
    end,
    calculate = function(self, card, context)
        if context.end_of_round and not context.repetition and not context.game_over and not context.blueprint and not context.individual then
            if card.ability.Xmult - card.ability.extra <= 1 then 
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
                card.ability.Xmult = card.ability.Xmult - card.ability.extra
                return {
                    message = localize{type='variable',key='a_mult_minus',vars={card.ability.extra}},
                    colour = G.C.RED
                }
            end
        end
    end
}
