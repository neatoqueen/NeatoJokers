function is_hand_given_suits(context, suit1, suit2)
    for i = 1, #context.scoring_hand do
        if context.scoring_hand[i].ability.name ~= 'Wild Card'
        and not context.scoring_hand[i]:is_suit(suit1, true)
        and not context.scoring_hand[i]:is_suit(suit2, true) then return false end
    end
    return true
end