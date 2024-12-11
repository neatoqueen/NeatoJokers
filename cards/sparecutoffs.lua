SMODS.Joker { 
    key = "sparecutoffs",
    loc_txt = {
        name = "Spare Cutoffs",
        text = { "Gains {C:chips}+#1#{} Chips if",
                "played hand contains",
                "a {C:attention}#2#",
                "{C:inactive}(Currently {C:red}+#3#{C:inactive} Chips)"},
    },
    unlocked = true,
    discovered = true, 
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    config = {extra = {chip_mod = 12, chips = 0}},
    rarity = 1,
    atlas = "NeatoJokers",
    pos = { x = 1, y = 0 },
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return { vars = {card.ability.extra.chip_mod, localize('Two Pair', 'poker_hands'), card.ability.extra.chips}}
    end,
    calculate = function(self, card, context)
        if context.cardarea == G.jokers then
            if context.before then
                if card.ability.name == 'Spare Cutoffs' and (next(context.poker_hands['Two Pair']) or next(context.poker_hands['Full House'])) and not context.blueprint then
                    card.ability.extra.chips = card.ability.extra.chips + card.ability.extra.chip_mod
                        
                        return {
                            extra = {focus = card, message = localize('k_upgrade_ex')},
                            card = card,
                            colour = G.C.CHIPS
                        }
                    end
            else
            if card.ability.name == 'Spare Cutoffs' and card.ability.extra.chips > 0 then
                return {
                    message = localize{type='variable',key='a_chips',vars={card.ability.extra.chips}},
                    chip_mod = card.ability.extra.chips
                }
            end
        end
    end
end
}