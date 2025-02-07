SMODS.Joker {
    key = "sparecutoffs",
    unlocked = true,
    discovered = true,
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = false,
    config = {extra = {chip_mod = 12, chips = 0}},
    rarity = 2,
    atlas = "NeatoJokers",
    pos = { x = 1, y = 0 },
    cost = 6,
    loc_vars = function(self, info_queue, card)
        return { vars = {card.ability.extra.chip_mod, localize('Two Pair', 'poker_hands'), card.ability.extra.chips}}
    end,
    calculate = function(self, card, context)
        if context.joker_main and card.ability.extra.chips > 0 then
            return {
                chips = card.ability.extra.chips
            }
        elseif context.before and next(context.poker_hands['Two Pair']) and not context.blueprint then
            -- no need to check context.poker_hands for 'Full House', since 'Two Pair' will be provided even with bigger hands present
            card.ability.extra.chips = card.ability.extra.chips + card.ability.extra.chip_mod
            return {
                message = localize('k_upgrade_ex'),
                card = card,
                colour = G.C.CHIPS
            }
        end
    end
}
