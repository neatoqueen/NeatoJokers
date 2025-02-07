SMODS.Joker {
    key = "unpaidintern",
    unlocked = true,
    discovered = true, 
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    config = {extra = 40},
    rarity = 1,
    atlas = "NeatoJokers",
    pos = { x = 8, y = 0 },
    cost = 6,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra } }
    end,
    calculate = function(self, card, context)
        if context.individual and context.cardarea == G.play and
        (context.other_card:get_id() == 9 or context.other_card:get_id() == 5) then
            return {
                chips = card.ability.extra,
                card = card
            }
        end
    end
}
