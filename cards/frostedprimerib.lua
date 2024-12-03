SMODS.Joker {
    key = 'frostedprimerib',
    loc_txt = {
        name = 'Frosted Prime Rib',
        text = {
            "For the next {C:attention}#3#{} hands",
            "Every played {C:attention}card{} permanently gains",
            "{C:chips}+#1#{} Chips and {C:mult}+#2#{} Mult when scored"
        },
    },
    config = { extra  = { hands = 22, chip_mod = 2, mult_mod = 1, } },
    loc_vars = function( self, info_queue, card )
        return { vars = { card.ability.extra.chip_mod, card.ability.extra.mult_mod, card.ability.extra.hands } }
    end,
    unlocked = true,
    discovered = true,
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    rarity = 2,
    atlas = "NeatoJokers",
    pos = { x = 2, y = 0 }, 
    cost = 5, --TODO: deduce reasonable cost
    calculate = function( self, card, context )
        if context.individual and context.cardarea == G.play then
            context.other_card.ability.mult = context.other_card.ability.mult or 0
            context.other_card.ability.mult = context.other_card.ability.mult + card.ability.extra.mult_mod
            context.other_card.ability.perma_bonus = context.other_card.ability.perma_bonus or 0
            context.other_card.ability.perma_bonus = context.other_card.ability.perma_bonus + card.ability.extra.chip_mod
            return {
                extra = { message = localize('k_upgrade_ex'), colour = G.C.MULT },
                colour = G.C.MULT,
                card = card
            }
        elseif context.after and not context.blueprint then
            card.ability.extra.hands = card.ability.extra.hands - 1
            if card.ability.extra.hands <= 0 then
                G.E_MANAGER:add_event(Event({
                    func = function()
                        play_sound('tarot1')
                        card.T.r = -0.2
                        card:juice_up(0.3, 0.4)
                        card.states.drag.is = true
                        card.children.center.pinch.x = true
                        G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.3, blockable = false,
                            func = function()
                                    G.jokers:remove_card(card)
                                    card:remove()
                                    card = nil
                                return true; end})) 
                        return true
                    end
                })) 
                return {
                    message = localize('k_eaten_ex'),
                    colour = G.C.RED
                }
            end
        end
    end
}