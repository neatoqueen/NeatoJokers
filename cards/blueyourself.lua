SMODS.Joker {
    key = "blueyourself",
    loc_txt = {
        name = "Blue Yourself",
        text = {"Retriggers {C:attention}Jokers{} and {C:attention}cards{}",
                "with the {C:dark_edition}Foil{} edition"},
    },
    unlocked = true,
    discovered = true, 
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    config = { extra = 1 },
    rarity = 2,
    atlas = "NeatoJokers",
    pos = { x = 0, y = 0 },
    cost = 7,
    calculate = function(self, card, context)
        if context.retrigger_joker_check and context.other_card ~= card and 
                context.other_card.edition and context.other_card.edition.key == "e_foil" then
            -- joker card retriggers using .retrigger_joker_check
            return {
                message = localize("k_again_ex"),
                repetitions = card.ability.extra,
                card = card
            }
        elseif context.repetition and not context.repetition_only and 
                context.other_card and context.other_card.edition and context.other_card.edition.key == "e_foil" then
            -- playing card retriggers using .repetition
            return {
                message = localize("k_again_ex"),
                repetitions = card.ability.extra,
                card = card
            }
        end
    end
}
