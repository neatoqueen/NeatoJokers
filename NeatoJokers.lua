SMODS.Atlas {
    key = "NeatoJokers",
    path = "NeatoJokers.png",
    px = 71,
    py = 95,
}

local cards = {
    'dogsplayingbalatro',
    'frostedprimerib',
    'icecreamsandwich',
    'jokerOTY'
}

for v in pairs(cards) do
    SMODS.load_file('cards/'..cards[v]..'.lua')()
end