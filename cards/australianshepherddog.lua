SMODS.Joker {
    key = "australianshepherddog",
    loc_txt = {
        name = "Australian Shepherd Dog",
        text = {"{C:green}#1# in #2#{} chance to create",
                "a random {C:planet}Planet{} card",
                "at the start of round",
                "{C:inactive}(Must have room){}"},
    },
    unlocked = true,
    discovered = true, 
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    config = {extra = 2},
    rarity = 1,
    atlas = "NeatoJokers",
    pos = { x = 7, y = 1 },
    cost = 4,
    loc_vars = function(self, info_queue, card)
        return { vars = {''..(G.GAME and G.GAME.probabilities.normal or 1), card.ability.extra}}
    end,
    calculate = function(self, card, context)
        local whoami = context.blueprint_card or card
        if context.setting_blind and not whoami.getting_sliced and #G.consumeables.cards + G.GAME.consumeable_buffer < G.consumeables.config.card_limit then
            if pseudorandom('dog') < G.GAME.probabilities.normal/card.ability.extra then
                G.GAME.consumeable_buffer = G.GAME.consumeable_buffer + 1
                G.E_MANAGER:add_event(Event({
                    func = function()
                        local card = SMODS.create_card{set = "Planet", area = G.consumeables}
                        card:add_to_deck()  -- is this needed?
                        G.consumeables:emplace(card)
                        G.GAME.consumeable_buffer = 0
                        return true
                    end
                }))
                SMODS.eval_this(whoami, {message = localize('k_dog'), colour = G.C.SECONDARY_SET.Planet})
            end
        end
    end
}
