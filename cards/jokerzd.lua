SMODS.Joker {
    key = "jokerzd",
    loc_txt = {
        name = "JokerZD",
        text = {"This Joker gains {X:mult,C:white}X#1#{} Mult for",
                "every unique joker {C:attention}purchased{}",
                "{C:inactive}(Currently {X:mult,C:white}X#2#{} {C:inactive{}Mult)"},
    },
    unlocked = true,
    discovered = true, 
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    config = { extra = {scaling = 0.1, seen = {}}, Xmult = 1 },
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.scaling, card.ability.Xmult } }
    end,
    rarity = 3,
    atlas = "NeatoJokers",
    pos = { x = 4, y = 0 },  -- needs art
    cost = 8,
    calculate = function(self, card, context)
        if context.buying_card and context.card.ability.set == "Joker" and context.card ~= card and not context.blueprint then
            if not card.ability.extra.seen[context.card.label] then
                card.ability.extra.seen[context.card.label] = true
                card.ability.Xmult = card.ability.Xmult + card.ability.extra.scaling
                SMODS.eval_this(card, {message = localize('k_upgrade_ex')})
            end
        end
    end
}
