SMODS.Joker {
    key = "lockin",
    loc_txt = {
        name = "Lock-In Joker",
        text = {"This Joker gains {C:mult}+#1#{} Mult",
                "at the end of {C:attention}round{} if {C:attention}no{}",
                "jokers were {C:attention}sold{} this round",
                "{C:inactive}(Currently {C:mult}+#2#{C:inactive} Mult)"}
    },
    unlocked = true,
    discovered = true,
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = false,
    config = {extra = {mult_gain = 2, mult = 0, boost = true}},
    rarity = 1,
    atlas = "NeatoJokers",
    pos = { x = 6, y = 0 },
    cost = 4,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.mult_gain, card.ability.extra.mult } }
    end,
    calculate = function(self, card, context)
        if context.joker_main and card.ability.extra.mult > 0 then
            return {
                message = localize{type='variable',key='a_mult',vars={card.ability.extra.mult}},
                mult_mod = card.ability.extra.mult
            }
        elseif context.end_of_round and not context.repetition and not context.game_over
        and not context.blueprint and not context.individual then
            if card.ability.extra.boost then
                card.ability.extra.mult = card.ability.extra.mult + card.ability.extra.mult_gain
                -- cannot use return, possibly not supported from this context?
                SMODS.eval_this(card, {message = localize('k_plustwo'), colour = G.C.MULT})
            end
            card.ability.extra.boost = true
        elseif context.selling_card and context.card.area == G.jokers then
            card.ability.extra.boost = false
            -- cannot use return, possibly not supported from this context?
            SMODS.eval_this(card, {message = localize('k_twisted'), colour = G.C.MULT})
        end
    end
}
