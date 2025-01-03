SMODS.Joker { 
    key = "nightman",
    loc_txt = {
        name = "Nightman",
        text = {
            "Gains {C:mult}+#1#{} Mult if hand",
            "played contains only {C:spades}Spade{} cards",
            "and {C:clubs}Club{} cards",
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
    pos = {x = 2, y = 1},
    cost = 4,
    calculate = function(self, card, context)
        if context.joker_main then
            return {
                message = localize{type='variable',key='a_mult',vars={card.ability.mult}},
                mult_mod = card.ability.mult
            }
        end
        if context.before and not context.blueprint and is_hand_given_suits(context, 'Spades', 'Clubs') then
            card.ability.mult = card.ability.mult + card.ability.extra
            return {
                message = "+" .. card.ability.extra,
                colour = G.C.MULT,
                card = card
            }
        end
    end
}