SMODS.Joker {
    key = "hatsunejoku",
    loc_txt = {
        name = "Hatsune Joku",
        text = {"{C:attention}Retrigger{} played {C:attention}3s{} and {C:attention}9s{}",
                "and give {C:chips}+9{} and {C:chips}+3{} Chips",
                "when scored respectively"},
    },
    unlocked = true,
    discovered = true, 
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    config = { extra = {repetitions = 1} },
    loc_vars = function( self, info_queue, card )
        return { vars = { card.ability.extra.chips } }
    end,
    rarity = 2,
    atlas = "NeatoJokers",
    pos = { x = 5, y = 0 },
    cost = 5,
    calculate = function(self, card, context)
        if context.cardarea == G.play and (context.other_card:get_id() == 3 or context.other_card:get_id() == 9) then
            if context.repetition and not context.repetition_only then
                return {
                    message = 'Again!',
                    repetitions = card.ability.extra.repetitions,
                    card = card
                }
            elseif context.individual and not context.repetition then
                if context.other_card:get_id() == 3 then
                    return {
                      chips = 9,
                      card = card
                    }
                else
                    return {
                      chips = 3,
                      card = card
                    }
                end
            end
        end
    end
}
