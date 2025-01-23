SMODS.Joker {
    key = "wildcardcharlie",
    loc_txt = {
        name = "Wild Card Charlie",
        text = {"{C:attention}Wild Cards{} give {X:mult,C:white}X#1#{} when",
                "scored or when held in hand"},
    },
    config = {extra = {x_mult = 1.5}},
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.x_mult }}
    end,
    in_pool = function(self, args)
        return count_enhancement('m_wild') > 0
    end,
    unlocked = true,
    discovered = true,
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    rarity = 2,
    atlas = "NeatoJokers",
    pos = { x = 0, y = 1 },
    cost = 6,
    calculate = function(self, card, context)
        if context.individual and (context.cardarea == G.play or context.cardarea == G.hand) then
            if SMODS.has_enhancement(context.other_card, "m_wild") then
                return {
                    x_mult = card.ability.extra.x_mult,
                    card = card,
                }
            end
        end
    end
}
