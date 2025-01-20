SMODS.Joker {
    key = "tabbycat",
    loc_txt = {
        name = "Tabby Cat",
        text = {"Played cards with {C:attention}no{} modifiers",
                "give {C:mult}+#1#{} Mult when scored",
                "{C:inactive}(enhancements, seals or editions){}"},
    },
    unlocked = true,
    discovered = true, 
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    config = {mult = 2},
    rarity = 1,
    atlas = "NeatoJokers",
    pos = { x = 6, y = 1 },
    cost = 4,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.mult } }
    end,
    calculate = function(self, card, context)
        if context.individual and context.cardarea == G.play then
            if context.other_card.ability.set ~= "Enhanced" and 
                    context.other_card.seal == nil and 
                    context.other_card.edition == nil then
                return {
                    mult = card.ability.mult,
                    card = card
                }
            end
        end
    end
}
