function is_hand_given_suits(context, suit1, suit2)
    for i = 1, #context.scoring_hand do
        if context.scoring_hand[i].ability.name ~= 'Wild Card'
        and not context.scoring_hand[i]:is_suit(suit1, true)
        and not context.scoring_hand[i]:is_suit(suit2, true) then return false end
    end
    return true
end

function count_suits(context)
    local suits = {
        ['Hearts'] = 0,
        ['Diamonds'] = 0,
        ['Spades'] = 0,
        ['Clubs'] = 0
    }
    for i = 1, #context.scoring_hand do
        if context.scoring_hand[i].ability.name ~= 'Wild Card' then
            for j,v in pairs(suits) do
                if context.scoring_hand[i]:is_suit(j, true) and suits[j] == 0 then suits[j] = 1 end
            end
        elseif context.scoring_hand[i].ability.name == 'Wild Card' then
            for j,v in pairs(suits) do
                if context.scoring_hand[i]:is_suit(j) and suits[j] == 0 then suits[j] = 1 break end
            end
        end
    end
    return suits["Hearts"] + suits["Diamonds"] + suits["Spades"] + suits["Clubs"]
end