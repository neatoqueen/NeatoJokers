SMODS.Joker {
    key = "tabbycat",
    loc_txt = {
        name = "Tabby Cat",
        text = {"This Joker gains {C:mult}+#1#{} Mult",
                "every {C:attention}#2#{} {C:inactive}[#3#]{} cards discarded",
                "{C:inactive}(Currently {C:mult}+#4#{C:inactive} Mult)"},
    },
    config = { extra = { mult = 0, mult_gain = 2, discards = 9, discards_remaining = 9 } },
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.mult_gain, card.ability.extra.discards, 
                          card.ability.extra.discards_remaining, card.ability.extra.mult } }
    end,
    unlocked = true,
    discovered = true, 
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = false,
    rarity = 1,
    atlas = "NeatoJokers",
    pos = { x = 6, y = 1 },
    cost = 6,
    calculate = function(self, card, context)
        if context.joker_main and card.ability.extra.mult > 0 then
            return {
                mult = card.ability.extra.mult,
            }
        elseif context.discard and not context.blueprint then
            -- receives this context for every discarded card individually
            if card.ability.extra.discards_remaining <= 1 then
                card.ability.extra.discards_remaining = card.ability.extra.discards
                card.ability.extra.mult = card.ability.extra.mult + card.ability.extra.mult_gain
                return {
                    message = localize('k_upgrade_ex'),
                }
            else
                card.ability.extra.discards_remaining = card.ability.extra.discards_remaining - 1
            end
        end
    end
}
