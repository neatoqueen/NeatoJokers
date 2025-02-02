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

-- description tab loc vars in mods menu
SMODS.current_mod.description_loc_vars = function()
    -- shadow is still awaiting PR as of 2025/02/02, see https://github.com/Steamodded/smods/pull/433
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

G.FUNCS.go_to_neato_twitch = function(e)
    love.system.openURL("https://twitch.tv/neato")
end

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
