SMODS.Joker { 
    key = "dayman",
    loc_txt = {
        name = "Dayman",
        text = {
            "If {C:attention}first hand{} of round is",
            "a single {C:attention}Queen{}, destroy it and",
            "gain {X:mult,C:white}X#1#{} Mult",
            "{C:inactive}(Currently {X:mult,C:white}X#2#{} {C:inactive}Mult){}",
        },
    },
    config = { extra = { x_mult = 1, scaling = 0.5 } },
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.scaling, card.ability.extra.x_mult } }
    end,
    unlocked = true,
    discovered = true,
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = false,
    rarity = 2,
    atlas = "NeatoJokers",
    pos = {x = 1, y = 1},
    cost = 6,
    calculate = function(self, card, context)
        if context.first_hand_drawn then
            juice_card_until(card, function() return G.GAME.current_round.hands_played == 0 end, true)
        elseif context.joker_main and card.ability.extra.x_mult > 1 then
            return {
                message = localize{type='variable',key='a_xmult',vars={card.ability.extra.x_mult}},
                Xmult_mod = card.ability.extra.x_mult,
                colour = G.C.MULT,
            }
        elseif context.destroying_card and not context.blueprint then
            if #context.full_hand == 1 and context.full_hand[1]:get_id() == 12 and G.GAME.current_round.hands_played == 0 then
                card.ability.extra.x_mult = card.ability.extra.x_mult + card.ability.extra.scaling
                return {
                    -- returning anything from this context destroys the card
                    delay = 0.5,  -- `delay` is weird, it is not a "wait X sec and then do", it is "hold this for X sec"
                    message = localize('k_upgrade_ex'),
                    colour = G.C.MULT,
                    juice_card = card,
                }
            end
        end
    end
}
