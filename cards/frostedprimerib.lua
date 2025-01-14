local old_Card_get_chip_mult = Card.get_chip_mult
function Card:get_chip_mult()
    -- hook seems best for mod compat?
    local mult = old_Card_get_chip_mult(self)
    return mult + (self.ability.perma_mult or 0)
end


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
    eternal_compat = false,
    perishable_compat = true,
    rarity = 2,
    atlas = "NeatoJokers",
    pos = { x = 7, y = 0 }, 
    cost = 5, --TODO: deduce reasonable cost
    calculate = function( self, card, context )
        if context.individual and context.cardarea == G.play then
            context.other_card.ability.perma_mult = (context.other_card.ability.perma_mult or 0) + card.ability.extra.mult_mod
            context.other_card.ability.perma_bonus = (context.other_card.ability.perma_bonus or 0) + card.ability.extra.chip_mod
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
