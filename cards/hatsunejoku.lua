local music_countdown = G.TIMERS.UPTIME  -- use UPTIME instead of REAL since REAL can get reset (e.g. run restart)

local hatsunejoku_music = SMODS.Sound{
    key = "hatsunejoku_music",
    path = "Hatsune Joku Music by Pichu-P.mp3",
    pitch = 1,
    select_music_track = function(self)
        if NeatoJokers.config.hatsune_musicu == 1 then
            -- always enabled
            return 100
        elseif NeatoJokers.config.hatsune_musicu == 2 and #SMODS.find_card("j_neat_hatsunejoku") > 0 then
            -- enabled while Hatsune Joku is present
            return 100
        elseif NeatoJokers.config.hatsune_musicu == 3 and music_countdown > G.TIMERS.UPTIME then
            -- temporarily enabled when Hatsune Joku is obtained
            return 100
        else
            -- always disabled
        end
    end
}

SMODS.Joker {
    key = "hatsunejoku",
    config = { extra = { repetitions = 2 } },
    unlocked = true,
    discovered = true,
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    rarity = 2,
    atlas = "NeatoJokers",
    pos = { x = 5, y = 0 },
    cost = 5,
    add_to_deck = function(self, card, from_debuff)
        if not from_debuff then
            music_countdown = G.TIMERS.UPTIME + 5.5  -- play song for next 5.5 seconds
            local juice_while = function()
                -- only juice if music is temporary and music is enabled
                return NeatoJokers.config.hatsune_musicu == 3 and
                G.SETTINGS.SOUND.volume > 0 and G.SETTINGS.SOUND.music_volume > 0 and
                music_countdown > G.TIMERS.UPTIME
            end
            if juice_while() then
                juice_card_until(card, juice_while)
            end
        end
    end,
    calculate = function(self, card, context)
        if context.cardarea == G.play and context.repetition and not context.repetition_only then
            if context.other_card:get_id() == 9 then
                return {
                    message = localize('k_again_ex'),
                    repetitions = card.ability.extra.repetitions,
                    card = card,
                }
            end
        end
    end
}
