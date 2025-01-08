SMODS.Joker {
    key = "cow",
    loc_txt = {
        name = "Cow",
        text = {"If the {C:attention}first hand{} of round",
                "contains a {C:attention}steel card{},",
                "create an {C:attention}uncommon tag{}"},
    },
    config = {},
    loc_vars = function(self, info_queue, card)
        info_queue[#info_queue+1] = {set = "Tag", key = "tag_uncommon"}
    end,
    in_pool = function(self, args)
        return count_enhancement('m_steel') > 0
    end,
    unlocked = true,
    discovered = true, 
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    rarity = 2,
    atlas = "NeatoJokers",
    pos = { x = 8, y = 1 },
    cost = 6,
    calculate = function(self, card, context)
        if context.first_hand_drawn then
            juice_card_until(card, function() return G.GAME.current_round.hands_played == 0 end, true)
        elseif context.before and G.GAME.current_round.hands_played == 0 then
            local contains_steel = false
            for _, card in pairs(context.full_hand) do
                if SMODS.has_enhancement(card, 'm_steel') then
                    contains_steel = true
                    break
                end
            end
            if contains_steel then
                -- create tag
                G.E_MANAGER:add_event(Event({
                    func = (function()
                        add_tag(Tag('tag_uncommon'))
                        play_sound('generic1', 0.9 + math.random()*0.1, 0.8)
                        play_sound('holo1', 1.2 + math.random()*0.1, 0.4)
                        return true
                    end)
                }))
                return {
                    card = context.blueprint_card or card,
                    message = localize('k_cow'),
                }
            end
        end
    end
}
