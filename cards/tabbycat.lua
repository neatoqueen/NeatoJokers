SMODS.Joker {
    key = "tabbycat",
    loc_txt = {
        name = "Tabby Cat",
        text = {"This Joker gains {C:chips}+#1#{} Chips for every",
                "card played in {C:attention}final{} poker hand",
                "{C:inactive}(Currently {C:chips}+#2#{C:inactive} Chips)"},
    },
    config = { extra = { chips = 0, chip_gain = 9 } },
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.chip_gain, card.ability.extra.chips } }
    end,
    unlocked = true,
    discovered = true, 
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    rarity = 1,
    atlas = "NeatoJokers",
    pos = { x = 6, y = 1 },
    cost = 5,
    calculate = function(self, card, context)
        if context.before and G.GAME.current_round.hands_left == 0 and not context.repetition then
            card.ability.extra.chips = card.ability.extra.chips + card.ability.extra.chip_gain * #context.scoring_hand
            return {
                message = localize('k_upgrade_ex'),
            }
        elseif context.joker_main and card.ability.extra.chips > 0 then
            return {
                chips = card.ability.extra.chips,
            }
        end
    end
}
