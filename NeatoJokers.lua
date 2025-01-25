SMODS.current_mod.optional_features = {
    -- enable additional SMODS contexts that can be CPU intensive
    retrigger_joker = true,  -- for blue yourself
}

SMODS.Atlas {
    key = "modicon",
    path = "mod_icon.png",
    px = 34,
    py = 34,
}

SMODS.Atlas {
    key = "NeatoJokers",
    path = "NeatoJokers.png",
    px = 71,
    py = 95,
}

-- load common util funcs
assert(SMODS.load_file("common.lua"))()

-- load all individual jokers
local subdir = "cards"
local cards = NFS.getDirectoryItems(SMODS.current_mod.path .. subdir)
for _, filename in pairs(cards) do
    assert(SMODS.load_file(subdir .. "/" .. filename))()
end
