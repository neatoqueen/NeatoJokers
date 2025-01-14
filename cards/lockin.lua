SMODS.Joker {
    key = "lockin",
    loc_txt = {
        name = "Lock-In Joker",
        text = {"This Joker gains {C:mult}+#1#{} Mult",
                "when {C:attention}blind{} is selected if",
                "{C:attention}no{} jokers were {C:attention}sold{} last round",
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
        elseif context.setting_blind and not context.repetition and not context.blueprint then
            if card.ability.extra.boost then
                card.ability.extra.mult = card.ability.extra.mult + card.ability.extra.mult_gain
                return {
                    message = localize('k_lockin'),
                    colour = G.C.MULT
                }
            end
            card.ability.extra.boost = true
        elseif context.selling_card and context.card.area == G.jokers then
            card.ability.extra.boost = false
            return {
                message = localize('k_twisted'),
                colour = G.C.MULT
            }
        end
    end
}
