SMODS.Joker { -- NeatNote: Thought I'd give this concept a try and it just works!
    key = "dogsplayingbalatro",
    loc_txt = {
        name = "Dogs Playing Balatro",
        text = {"{C:green}#1# in #2#{} chance to fetch",
                "a random {C:planet}Planet{} card",
                "every hand played"},
    },
    unlocked = true,
    discovered = true, 
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    config = {extra = 4},
    rarity = 3,
    atlas = "NeatoJokers",
    pos = { x = 5, y = 1 },
    cost = 6,
    loc_vars = function(self, info_queue, card)
        return { vars = {''..(G.GAME and G.GAME.probabilities.normal or 1), card.ability.extra}}
    end,
    calculate = function(self, card, context)
        if context.after and not context.blueprint then
            if pseudorandom('dogs') < G.GAME.probabilities.normal/card.ability.extra then
                G.E_MANAGER:add_event(Event({
                    func = function()
                        local card = create_card('Planet',G.consumeables, nil, nil, nil, nil, nil, 'car')
                        card:add_to_deck()
                        G.consumeables:emplace(card)
                        G.GAME.consumeable_buffer = 0
                        return true
                    end
                }))   
                card_eval_status_text(context.blueprint_card or card, 'extra', nil, nil, nil, 
                {message = localize('k_plus_planet'), colour = G.C.SECONDARY_SET.Planet}) 
            end
        end
    end
}
