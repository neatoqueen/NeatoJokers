SMODS.Joker {
    key = "jokerOTY", 
    loc_txt = {
        name = "Joker of the Year",
        text = { "Retriggers all cards",
                "with a {C:attention}seal{} when played",
            },
    }, 
    unlocked = true, 
    discovered = true, 
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    config = {extra = { repetitions = 1}},
    rarity = 3,
    atlas = "NeatoJokers",
    pos = {x = 0, y = 0},
    cost = 7, 
    calculate = function(self, card, context)
        if context.cardarea == G.play and context.repetition and not context.repetition_only then
            if context.other_card:get_seal() then
                return {
                  message = localize('k_again_ex'),
                  repetitions = card.ability.extra.repetitions,
                  card = card
                }
            end
        end
    end
}