SMODS.Joker {
    key = "nightman",
    config = { extra = { x_mult = 1, scaling = 0.1 } },
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.scaling, card.ability.extra.x_mult } }
    end,
    unlocked = true,
    discovered = true,
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = false,
    rarity = 2,
    atlas = "NeatoJokers",
    pos = {x = 2, y = 1},
    cost = 6,
    calculate = function(self, card, context)
        if context.joker_main and card.ability.extra.x_mult > 1 then
            return {
                message = localize{type='variable',key='a_xmult',vars={card.ability.extra.x_mult}},
                Xmult_mod = card.ability.extra.x_mult,
                colour = G.C.MULT,
            }
        elseif context.before then
            -- reset chosen card to destroy
            card.ability.extra.card_to_destroy = pseudorandom_element(context.scoring_hand, pseudoseed("night"))
        elseif context.destroying_card and not context.blueprint then
            if context.destroying_card == card.ability.extra.card_to_destroy then
                card.ability.extra.x_mult = card.ability.extra.x_mult + card.ability.extra.scaling
                return {
                    extra = {
                        message = localize('k_upgrade_ex'),
                        colour = G.C.MULT,
                        juice_card = card,
                    },
                    message = localize('k_gasp'),
                    remove = true,
                }
            end
        end
    end
}