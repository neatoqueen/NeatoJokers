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
    add_to_deck = function(self, card, from_debuff)
        -- don't tell Neato I put this in
        if not from_debuff and next(SMODS.find_card(self.key, true)) then
            -- check if there's already a blueyourself joker present
            -- apparently returns aren't supported from this context, so use the old-fashioned way
            card_eval_status_text(card, 'extra', nil, nil, nil, {
                message = localize('k_dozens'),
                colour = G.C.BLUE,
                delay = 2,  -- `delay` is "hold this for X sec"
            })
        end
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
