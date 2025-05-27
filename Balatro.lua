SMODS.Atlas {key = 'BCU_Jokers', path = 'Jokers.png', px = 71, py = 95}
SMODS.Atlas {key = 'BCU_centers', path = 'Enhancers.png', px = 71, py = 95}
SMODS.Atlas {key = 'BCU_Tarot', path = 'Tarots.png', px = 71, py = 95}
SMODS.Atlas {key = 'BCU_Voucher', path = 'Vouchers.png', px = 71, py = 95}
SMODS.Atlas {key = 'BCU_Tags', path = 'Tags.png', px = 34, py = 34}
















SMODS.Back {
    key = "travel",
    stake = 1,
    unlocked = false,
    order = 12,
    pos = {x=1, y=5},
    set = "Back",
    atlas = "BCU_centers",
    config = {ante_scaling = 0.8, extra_ante = 2},
    discovered = false,
    unlock_condition = {type = 'discover_amount', amount = 125},
    prefix_config = {
        key = {mod = false}
    },
    loc_vars = function(self, info_queue, center)
        return {
            vars = {
                self.config.ante_scaling,
            },
        }
    end,
    apply = function (self)
        G.GAME.win_ante = G.GAME.win_ante + self.config.extra_ante
    end,
    }







SMODS.PokerHand{
    key = "pelter",
    name = "Pelter",
    mult = 3,
    l_mult = 3,
    chips = 30,
    l_chips = 25,
    prefix_config = {
        key = {mod = false}
    },
    example = {
        { "S_4", true},
        { "C_2", true},
        { "S_5", true},
        { "D_6", true},
        { "H_9", true},
    },
    above_hand = "Three of a Kind",
    visible = true,
    evaluate = function(parts, hand)
        if next(parts.BCU_pelterpart) then
          return { SMODS.merge_lists(parts.BCU_pelterpart) }
       end
        return {}
    end
    }

SMODS.PokerHandPart({
    key = "pelterpart",
    func = function(hand)
        local twos = {}
        local fives = {}
        local nines = {}
        
        local threes = {}
        local fours = {}
        local sixes = {}
        local sevens = {}
        local eights = {}
    
        local nonpairs = {}
        local scoring = {}
    
    
        for _, card in pairs(hand) do
            if card:get_id() == 2 then
                twos[#twos + 1] = card
                scoring[#scoring + 1] = card
            end
            if card:get_id() == 5 then
                fives[#fives + 1] = card
                scoring[#scoring + 1] = card
            end
            if card:get_id() == 9 then
                nines[#nines + 1] = card
                scoring[#scoring + 1] = card
            end
            if card:get_id() == 3 then
                threes[#threes + 1] = card
                scoring[#scoring + 1] = card
                nonpairs[#nonpairs + 1] = card
            end
            if card:get_id() == 4 then
                fours[#fours + 1] = card
                scoring[#scoring + 1] = card
                nonpairs[#nonpairs + 1] = card
            end
            if card:get_id() == 6 then
                sixes[#sixes + 1] = card
                scoring[#scoring + 1] = card
                nonpairs[#nonpairs + 1] = card
            end
            if card:get_id() == 7 then
                sevens[#sevens + 1] = card
                scoring[#scoring + 1] = card
                nonpairs[#nonpairs + 1] = card
            end
            if card:get_id() == 8 then
                eights[#eights + 1] = card
                scoring[#scoring + 1] = card
                nonpairs[#nonpairs + 1] = card
            end
        end
    
        if #twos == 1 and #fives == 1 and #nines == 1 and #nonpairs == 2 then
            if #threes > 1 or #fours > 1 or #sixes > 1 or #sevens > 1 or #eights > 1 then
                return {}
            else
                return {scoring}
            end
        end
    
        return {}
    end,
    }
)
    
SMODS.PokerHand{
    key = "pelter_flush",
    name = "Pelter Flush",
    mult = 8,
    l_mult = 4,
    chips = 100,
    l_chips = 40,
    
    example = {
        { "H_4", true},
        { "H_2", true},
        { "H_5", true},
        { "H_6", true},
        { "H_9", true},
    },
    above_hand = "Four of a Kind",
    visible = false,
    prefix_config = {
        key = {mod = false}
    },
    evaluate = function(parts, hand)
        if next(parts.BCU_pelterpart) and next(parts._flush) then
          return { SMODS.merge_lists(parts.BCU_pelterpart, parts._flush) }
       end
        return {}
    end
    }

    





SMODS.Consumable{
key = "dagon",
set = "Planet",
atlas = "BCU_Tarot",
pos = {x=7,y=5},
cost = 3,
config = {hand_type = "pelter", softlock = true},
prefix_config = {
    key = {mod = false}
},
discovered = false,
set_card_type_badge = function(self, card, badges)
    badges[1] = create_badge(localize("k_exoplanet"), get_type_colour(self or card.config, card), nil, 1.2)
end,
loc_vars = function(self, info_queue, center)
    local levelone = G.GAME.hands["pelter"].level or 1
    local planetcolourone = G.C.HAND_LEVELS[math.min(levelone, 7)]
    if levelone == 1 then
        planetcolourone = G.C.UI.TEXT_DARK
    end
    return {
        vars = {
            localize("pelter"),
            G.GAME.hands["pelter"].level,
            G.GAME.hands["pelter"].l_mult,
            G.GAME.hands["pelter"].l_chips,
            colours = { planetcolourone },
        },
    }
end,
}

SMODS.Consumable{
    key = "amateru",
    set = "Planet",
    atlas = "BCU_Tarot",
    pos = {x=8,y=5},
    cost = 3,
    config = {hand_type = "pelter_flush", softlock = true},
    prefix_config = {
        key = {mod = false}
    },
    discovered = false,
    set_card_type_badge = function(self, card, badges)
        badges[1] = create_badge(localize("k_exoplanet"), get_type_colour(self or card.config, card), nil, 1.2)
    end,
    loc_vars = function(self, info_queue, center)
        local levelone = G.GAME.hands["pelter_flush"].level or 1
        local planetcolourone = G.C.HAND_LEVELS[math.min(levelone, 7)]
        if levelone == 1 then
            planetcolourone = G.C.UI.TEXT_DARK
        end
        return {
            vars = {
                localize("pelter_flush"),
                G.GAME.hands["pelter_flush"].level,
                G.GAME.hands["pelter_flush"].l_mult,
                G.GAME.hands["pelter_flush"].l_chips,
                colours = { planetcolourone },
            },
        }
    end,
    }













SMODS.Seal {
    key = "Silver",
    atlas = "BCU_centers",
    pos = {x = 0, y = 5},
    config = {extra = {DupeNum = 1, DupeDenom = 2, DupeAmount = 1}},
    discovered = false,
    prefix_config = {
        key = {mod = false}
    },
    badge_colour = HEX('B1B1B1'),
    shiny = true,
    sound = { sound = 'gold_seal', per = 1.2, vol = 0.4 },
    loc_vars = function(self, info_queue, card)
        return {vars = {self.config.extra.DupeNum, self.config.extra.DupeDenom}}
    end,
    calculate = function(self, card, context)
        if context.cardarea == G.play and context.main_scoring then
            for i = 1, self.config.extra.DupeAmount do
        local new_card = copy_card(card, nil, nil, G.playing_card)
        new_card:set_seal(nil)
        new_card:add_to_deck()
        G.deck.config.card_limit = G.deck.config.card_limit + 1
        table.insert(G.playing_cards, new_card)
        playing_card_joker_effects({new_card})
        G.hand:emplace(new_card)
        new_card.states.visible = nil
        G.E_MANAGER:add_event(Event({
            func = function()
                new_card:start_materialize()
                G.GAME.blind:debuff_card(new_card)
                G.hand:sort()

                return true
            end,
        }))

            end
        return {
        playing_cards_created = {new_card}
        }
        end
    end,
}

SMODS.DrawStep {
    key = "silver_shader",
    order = 100,
    func = function(self, layer)
        local seal = G.P_SEALS[self.seal] or {}
        if self.seal then
            if self.seal == 'Silver' then
        G.shared_seals[self.seal]:draw_shader('voucher', nil, self.ARGS.send_to_shader, nil, self.children.center)
            end
        end
    end,
    conditions = {vortex = false, facing = "front"},    
}


SMODS.Shader({key = 'gilded', path = "gilded.fs"})

SMODS.Edition({
    key = "gilded",
    shader = "gilded",
    discovered = false,
    unlocked = true,
    config = {p_dollars = 3},
    in_shop = true,
    weight = 12,
    extra_cost = 4,
    badge_colour = G.C.DARK_EDITION,
    apply_to_float = false,
    sound = { sound = "BCU_gilded", per = 1.2, vol = 0.4 },
    loc_txt = {
        label = 'Gilded',
    },
    loc_vars = function(self, info_queue, card)
        return {
            vars = {
                self.config.p_dollars,
            },
        }
    end,
    calculate = function(self, card, context)
            if context.edition and context.cardarea == G.jokers and context.post_joker then
                return {
                    p_dollars = self.config.p_dollars
                }
            end
            if context.main_scoring and context.cardarea == G.play then
                return {
                    p_dollars = self.config.p_dollars
                }
            end
        end
})


SMODS.Sound{key = 'gilded', path = 'gilded.ogg'}
