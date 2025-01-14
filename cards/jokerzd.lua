SMODS.Joker {
    key = "jokerzd",
    loc_txt = {
        name = "JokerZD",
        text = {"This Joker gains {X:mult,C:white}X#1#{} Mult for",
                "every unique joker {C:attention}purchased{}",
                "{C:inactive}(Currently {X:mult,C:white}X#2#{} {C:inactive}Mult)"},
    },
    unlocked = true,
    discovered = true, 
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = false,
    config = { extra = {scaling = 0.1, seen = {}, x_mult = 1 } },
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.scaling, card.ability.extra.x_mult } }
    end,
    rarity = 3,
    atlas = "NeatoJokers",
    pos = { x = 9, y = 0 },
    cost = 8,
    calculate = function(self, card, context)
        if context.joker_main and card.ability.extra.x_mult > 1 then
            return {
                message = localize{type='variable',key='a_xmult',vars={card.ability.extra.x_mult}},
                xmult_mod = card.ability.extra.x_mult,
                colour = G.C.MULT,
            }
        elseif context.buying_card and context.card.ability.set == "Joker" and context.card ~= card and not context.blueprint then
            if not card.ability.extra.seen[context.card.label] then
                card.ability.extra.seen[context.card.label] = true
                card.ability.extra.x_mult = card.ability.extra.x_mult + card.ability.extra.scaling
                return {
                    message = localize('k_upgrade_ex'),
                }
            end
        end
    end
}
