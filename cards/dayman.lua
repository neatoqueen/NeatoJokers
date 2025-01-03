SMODS.Joker { 
    key = "dayman",
    loc_txt = {
        name = "Dayman",
        text = {
            "Gains {C:mult}+#1#{} Mult if hand",
            "played contains only {C:hearts}Heart{} cards",
            "and {C:diamonds}Diamond{} cards",
            "{C:inactive}(Currently {C:mult}+#2#{C:inactive} Mult)"
        },
    },
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra, card.ability.mult } }
    end,
    unlocked = true,
    discovered = true,
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    config = { extra = 3, mult = 0 },
    rarity = 1,
    atlas = "NeatoJokers",
    pos = {x = 1, y = 1},
    cost = 4,
    calculate = function(self, card, context)
        if context.joker_main then
            return {
                message = localize{type='variable',key='a_mult',vars={card.ability.mult}},
                mult_mod = card.ability.mult
            }
        end
        if context.before and not context.blueprint and is_hand_given_suits(context, 'Hearts', 'Diamonds') then
            card.ability.mult = card.ability.mult + card.ability.extra
            return {
                message = "+" .. card.ability.extra,
                colour = G.C.MULT,
                card = card
            }
        end
    end
}