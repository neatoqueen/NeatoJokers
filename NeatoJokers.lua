SMODS.Atlas {
    key = "NeatoJokers",
    path = "NeatoJokers.png",
    px = 71,
    py = 95,
}

local subdir = "cards"
local cards = NFS.getDirectoryItems(SMODS.current_mod.path .. subdir)
for _, filename in pairs(cards) do
    file, exception = SMODS.load_file(subdir .. "/" .. filename)
    if exception then
        error(exception)
    end
    file()
end
