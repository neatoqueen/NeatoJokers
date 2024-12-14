SMODS.Joker {
    key = "lockin",
    loc_txt = {
        name = "Lock-In Joker",
        text = {"This Joker gains {C:mult}+#1#{} Mult per",
                "{C:attention}consecutive{} round played",
                "without {C:attention}selling{} a joker",
                "{C:inactive}(Currently {C:mult}+#2#{C:inactive} Mult)"}
    },
    unlocked = true,
    discovered = true,
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = false,
    config = {extra = {mult_gain = 2, mult = 0}},
    rarity = 1,
    atlas = "NeatoJokers",
    pos = { x = 6, y = 0 },
    cost = 4,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.mult_gain, card.ability.extra.mult } }
    end,
    calculate = function(self, card, context)
        if context.joker_main then
            return {
                message = localize{type='variable',key='a_mult',vars={card.ability.extra.mult}},
                mult_mod = card.ability.extra.mult
            }
        elseif context.ending_shop and not context.repetition and not context.game_over and not context.blueprint and not context.individual then
            -- using context.ending_shop, but maybe a different time is more fitting?
            card.ability.extra.mult = card.ability.extra.mult + card.ability.extra.mult_gain
            -- cannot use return, possibly not supported from this context?
            SMODS.eval_this(card, {message = localize('k_plustwo'), colour = G.C.MULT})
        elseif context.selling_card and context.card.area == G.jokers then
            sendDebugMessage("sold joker!", "Neato")
            card.ability.extra.mult = 0
            -- cannot use return, possibly not supported from this context?
            SMODS.eval_this(card, {message = localize('k_twisted'), colour = G.C.MULT})
        end
    end
}
