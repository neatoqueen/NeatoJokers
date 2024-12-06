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
        if context.joker_main then
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