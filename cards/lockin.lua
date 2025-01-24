SMODS.Joker {
    key = "lockin",
    loc_txt = {
        name = "Lock-In Joker",
        text = {"This Joker gains {C:mult}+#1#{} Mult",
                "when {C:attention}Blind{} is selected,",
                "resets when a Joker is {C:attention}sold{}",
                "{C:inactive}(Currently {C:mult}+#2#{C:inactive} Mult)"}
    },
    unlocked = true,
    discovered = true,
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = false,
    config = {extra = {mult_gain = 3, mult = 0}},
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
        elseif context.setting_blind and not context.repetition and not context.blueprint then
            card.ability.extra.mult = card.ability.extra.mult + card.ability.extra.mult_gain
            return {
                message = localize('k_lockin'),
                colour = G.C.MULT
            }
        elseif context.selling_card and context.card.area == G.jokers and not context.blueprint then
            card.ability.extra.mult = 0
            return {
                message = localize('k_twisted'),
                delay = 0.9,  -- `delay` is weird, it is not a "wait X sec and then do", it is "hold this for X sec"
                colour = G.C.MULT
            }
        end
    end
}
