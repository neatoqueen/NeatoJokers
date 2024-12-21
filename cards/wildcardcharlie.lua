function count_wild_cards()
    local wild_card_counter = 0
    if G.playing_cards then
        for _, v in pairs(G.playing_cards) do
            if v.config.center == G.P_CENTERS.m_wild then
                -- TODO: should change to SMODS.has_enhancement once steamodded#305 gets merged
                wild_card_counter = wild_card_counter + 1
            end
        end
        return wild_card_counter
    end
    return 0
end

SMODS.Joker {
    key = "wildcardcharlie",
    loc_txt = {
        name = "Wild Card Charlie",
        text = {"When {C:attention}Blind{} is selected,",
                "gain {C:blue}+#1#{} Hand and lose {C:red}-#2#{} Discard",
                "for every {C:attention}#3# Wild Cards{}",
                "currently in your deck",
                "{C:inactive}(Currently {C:attention}#4#{C:inactive} Wild Cards)"},
    },
    unlocked = true,
    discovered = true,
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    config = {extra = {hand_gain = 1, discard_loss = 1, wild_card_ratio = 3}},
    rarity = 2,
    atlas = "NeatoJokers",
    pos = { x = 0, y = 1 },
    cost = 6,
    loc_vars = function(self, info_queue, card)
        return { vars = {card.ability.extra.hand_gain,
                         card.ability.extra.discard_loss,
                         card.ability.extra.wild_card_ratio,
                         count_wild_cards()}}
    end,
    calculate = function(self, card, context)
        if context.setting_blind and not (context.blueprint_card or self).getting_sliced then
            local wild_card_counter = count_wild_cards()
            local conversion = math.floor(wild_card_counter / card.ability.extra.wild_card_ratio)
            if conversion > 0 then
                G.E_MANAGER:add_event(Event({func = 
                    function()
                        ease_discard(-conversion, false, true)
                        ease_hands_played(conversion, false)
                        SMODS.eval_this(context.blueprint_card or card, {message = localize('k_swapped_ex')})
                        return true
                    end
                }))
            end
        end
    end
}
