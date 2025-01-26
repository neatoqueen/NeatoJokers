SMODS.Joker {
    key = "hatsunejoku",
    loc_txt = {
        name = "Hatsune Joku",
        text = {"{C:attention}Retrigger{} played {C:attention}9s{}",
                "an additional {C:attention}two{} times"},
    },
    config = { extra = { repetitions = 2 } },
    unlocked = true,
    discovered = true, 
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    rarity = 2,
    atlas = "NeatoJokers",
    pos = { x = 5, y = 0 },
    cost = 5,
    calculate = function(self, card, context)
        if context.cardarea == G.play and context.repetition and not context.repetition_only then
            if context.other_card:get_id() == 9 then
                return {
                    message = localize('k_again_ex'),
                    repetitions = card.ability.extra.repetitions,
                    card = card,
                }
            end
        end
    end
}
