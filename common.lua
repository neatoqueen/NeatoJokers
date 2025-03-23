--#region common functions
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

function count_enhancement(enhancement)
    -- sum of total amount of cards in deck with given enhancement
    -- e.g. 'm_wild'
    local counter = 0
    for _, v in pairs(G.playing_cards or {}) do
        if SMODS.has_enhancement(v, enhancement) then
            counter = counter + 1
        end
    end
    return counter
end

function any_foils()
    -- returns bool
    local areas = {G.playing_cards, G.jokers}
    for _, area in pairs(areas) do
        local cards = area and area.cards or {}  -- safety first!
        for _, card in pairs(cards) do
            if card.edition and card.edition.key == "e_foil" then
                return true
            end
        end
    end

    return false
end

G.FUNCS.go_to_neato_twitch = function(e)
    love.system.openURL("https://twitch.tv/neato")
end

to_big = to_big or function(num)
    return num
end
--#endregion


--#region SMODS relevant functions (UI, config, etc)
-- description tab loc vars in mods menu
SMODS.current_mod.description_loc_vars = function()
    return { background_colour = G.C.CLEAR, text_colour = G.C.WHITE, scale = 1.2, shadow = true }
end

-- add clickable link in description tab
SMODS.current_mod.custom_ui = function(nodes)
    local title, description = unpack(nodes)
    local twitch_deepfind = SMODS.deepfind(description, "twitch.tv/neato", true)[1]
    if twitch_deepfind then
        -- hacky, maybe there's a better way than this?
        local twitch_link_table = twitch_deepfind.objtree[#twitch_deepfind.objtree-2]
        twitch_link_table.config.button = "go_to_neato_twitch"
        twitch_link_table.config.tooltip = {text = {localize('b_open_link')}}
    end
end

G.FUNCS.neato_cycle_options = function(args)
    -- G.FUNCS.cycle_update from Galdur
    args = args or {}
    if args.cycle_config and args.cycle_config.ref_table and args.cycle_config.ref_value then
        args.cycle_config.ref_table[args.cycle_config.ref_value] = args.to_key
    end
end

NeatoJokers = SMODS.current_mod
SMODS.current_mod.config_tab = function()
    return {
        n=G.UIT.ROOT, config = {align = "cl", minh = G.ROOM.T.h*0.25, padding = 0.0, r = 0.1, colour = G.C.GREY}, nodes = {
            {
                n = G.UIT.C, config = { align = "cm", minw = G.ROOM.T.w*0.25, padding = 0.05 }, nodes = {
                    create_option_cycle{
                        label = localize('b_music'),
                        w = 4.5,
                        info = localize("neato_music_description"),
                        options = localize("neato_music_options"),
                        current_option = NeatoJokers.config.hatsune_musicu,
                        colour = NeatoJokers.badge_colour,
                        text_scale = 0.5,  -- default is 0.5
                        ref_table = NeatoJokers.config,
                        ref_value = "hatsune_musicu",
                        opt_callback = 'neato_cycle_options',
                    }
                }
            },
        }
    }
end
--#endregion


--#region hooks
local old_loc_colour = loc_colour
function loc_colour(_c, _default)
    -- hook for custom colours
    local custom_colours = {
        neat_lia = HEX("A7C7E7"),
        neat_lars = HEX("1F62CA")
    }
    if custom_colours[_c] then
        return custom_colours[_c]
    end

    return old_loc_colour(_c, _default)
end
--#endregion
