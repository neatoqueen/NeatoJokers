SMODS.Joker {
    key = "hatsunejoku",
    loc_txt = {
        name = "Hatsune Joku",
        text = {"This Joker gains {C:chips}+#1#{} Chips when",
                "a {C:clubs}Club{} or {C:spades}Spade{} card is {C:attention}destroyed{}",
                "{C:inactive}(Currently {C:chips}+#2#{} {C:inactive}Chips)"},
    },
    config = { extra = {chips = 0, chip_gain = 39} },
    loc_vars = function( self, info_queue, card )
        return { vars = { card.ability.extra.chip_gain, card.ability.extra.chips } }
    end,
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
        if context.joker_main and card.ability.extra.chips > 0 then
            return {
                chips = card.ability.extra.chips,
            }
        elseif context.remove_playing_cards and not context.blueprint then
            local increases = 0
            for _, card in pairs(context.removed) do
                if card:is_suit("Clubs") or card:is_suit("Spades") then
                    increases = increases + 1
                end
            end
            card.ability.extra.chips = card.ability.extra.chips + card.ability.extra.chip_gain * increases
            return {
                message = localize("k_upgrade_ex"),
                colour = G.C.CHIPS,
                focus = card,
            }
        end
    end
}
