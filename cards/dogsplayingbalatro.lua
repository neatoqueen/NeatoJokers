SMODS.Joker {
    key = "dogsplayingbalatro",
    loc_txt = {
        name = "Dogs Playing Balatro",
        text = {"{C:green}#1# in #2#{} chance to fetch",
                "a random {C:spectral}Spectral{} card",
                "when a {C:planet}Planet{} card is used",
                "{C:inactive}(Must have room){}"},
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
        if context.using_consumeable and context.consumeable.ability.set == "Planet" and #G.consumeables.cards + G.GAME.consumeable_buffer < G.consumeables.config.card_limit then
            if pseudorandom('dogs') < G.GAME.probabilities.normal/card.ability.extra then
                G.GAME.consumeable_buffer = G.GAME.consumeable_buffer + 1
                G.E_MANAGER:add_event(Event({
                    func = function()
                        local card = SMODS.create_card{set = "Spectral", area = G.consumeables}
                        card:add_to_deck()  -- is this needed?
                        G.consumeables:emplace(card)
                        G.GAME.consumeable_buffer = 0
                        return true
                    end
                }))   
                SMODS.eval_this(card, {message = localize('k_dog'), colour = G.C.SECONDARY_SET.Planet})
            end
        end
    end
}
