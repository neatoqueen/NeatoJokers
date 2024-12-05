SMODS.Joker { 
    key = "threeflavourscornetto",
    loc_txt = {
        name = "Three Flavours Cornetto",
        text = {
            "{C:mult}+#1#{} Mult if played",
            "hand contains",
            "exactly {C:attention}#2#{} suits",
        },
    },
    loc_vars = function(self, info_queue, card)
        return {vars = {card.ability.extra.mult, card.ability.extra.suits}}
    end,
    unlocked = true,
    discovered = true,
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    config = {extra = { mult = 10, suits = 3}},
    rarity = 1,
    atlas = "NeatoJokers",
    pos = {x = 4, y = 0},
    cost = 5,
    calculate = function(self, card, context)
        if not context.open_booster and not context.buying_card and not context.selling_self and not context.selling_card and not context.reroll_shop and not context.ending_shop and not context.skip_blind and not context.skipping_booster and not context.playing_card_added and not context.first_hand_drawn and not context.setting_blind and not context.destroying_card and not context.cards_destroyed and not context.remove_playing_cards and not context.using_consumeable and not context.debuffed_hand and not context.pre_discard and not context.discard and not context.end_of_round and not context.individual and not context.repetition and not context.other_joker and context.cardarea == G.jokers and not context.before and not context.after then
            local suits = {
                ['Hearts'] = 0,
                ['Diamonds'] = 0,
                ['Spades'] = 0,
                ['Clubs'] = 0
            }
            for i = 1, #context.scoring_hand do
                if context.scoring_hand[i].ability.name ~= 'Wild Card' then
                    for j,v in pairs(suits) do
                        if context.scoring_hand[i]:is_suit(j, true) then suits[j] = 1 end
                    end
                elseif context.scoring_hand[i].ability.name == 'Wild Card' then
                    for j,v in pairs(suits) do
                        if context.scoring_hand[i]:is_suit(j) then suits[j] = 1 end
                    end
                end
            end
            if suits["Hearts"] + suits["Diamonds"] + suits["Spades"] + suits["Clubs"] == card.ability.extra.suits then
                return {
                    message = localize{type='variable',key='a_mult',vars={card.ability.extra.mult}},
                    mult_mod = card.ability.extra.mult
                }
            end
        end
    end
}