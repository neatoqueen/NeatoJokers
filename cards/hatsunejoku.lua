local music_countdown = 0

local hatsunejoku_music = SMODS.Sound{
    key = "hatsunejoku_music",
    path = "Hatsune Joku Music by Pichu-P.mp3",
    pitch = 1,
    select_music_track = function(self)
        if music_countdown ~= nil and music_countdown > 0 then
            music_countdown = music_countdown - 1
            return 100
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
            music_countdown = 800
            juice_card_until(card, function() return music_countdown > 0 end)
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
