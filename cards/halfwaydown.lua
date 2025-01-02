SMODS.Joker {
    key = "halfwaydown", 
    loc_txt = {
        name = "Halfway Down",
        text = {"{X:mult,C:white}X#1#{} Mult",
                "after the {C:attention}first hand{}"},
    }, 
    unlocked = true, 
    discovered = true, 
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    config = {extra = {Xmult = 2}},
    rarity = 2,
    atlas = "NeatoJokers",
    pos = {x = 4, y = 0},  -- needs art
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return {vars = {card.ability.extra.Xmult}}
    end,
    calculate = function(self, card, context)
        if context.joker_main and G.GAME.current_round.hands_played > 0 then
            return {
                message = localize{type='variable',key='a_xmult',vars={card.ability.extra.Xmult}},
                mult_mod = card.ability.extra.Xmult
            }
        end
    end
}
