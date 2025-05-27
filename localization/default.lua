return {
    descriptions = {
        Mod = {
            BalatroCommunityUpdate = {
                name = "1.A.0",
                text = {
                    "{s:1.5,E:1}[Welcome to 1.A.0]{}",
                    " ",
                    "You have been selected to play a {X:dark_edition,C:edition,E:1}BRAND‎‎‎‎NEW‎‎‎‎UPDATE{} before anyone else.",
                    "There will be a few changes this update, but some new faces to meet along the way.",
                    "As of current, there are 15 jokers, 2 new planets, 1 new deck, 1 new seal, and numerous balance changes",
                    "{s:0.5}----------------------------------------------------------------------------------------------------------------------------------------------------------{}",
                    "{s:1.5,E:1}[Information]{}",
                    " ",
                    "This is an {C:attention}UNOFFICIAL{} update to the game and is not created by {C:red}LOCAL{}{C:blue}THUNK{} in any way.",
                    "This is to be treated as a {C:attention}Fanmade{} update, for the community, by the community.",
                    "This is why it's 1.{X:red,C:white}A{}.0, not 1.{X:red,C:white}1{}.0. I don't want people to think this is an official update.",
                    "{s:0.8,C:inactive}(Please don't ask LocalThunk about problems with this. Also Please don't kill me Thunk.){}",
                    "",
                }
            }
        },

        Back = {
            b_travel={
                name="Travel Deck",
                text={
                    "{C:attention}#1#X{} Blind size,",
                    "Must beat {C:attention}Ante 10{} to win",
                },
            },

        },
        Blind = {},
        Edition = {
            e_BCU_gilded={
                name="Gilded",
                text={
                    "{C:money}+$#1#{}",
                },
            },

        },
        Enhanced = {},
        Joker = {

            j_quin={
            name="Quin",
                text={
                    "This Joker gains",
                    "{X:mult,C:white} X#1# {} Mult every {C:attention}#2#{C:inactive} [#3#]{}",
                    "{C:attention}Gold{} cards scored",
                    "{C:inactive}(Currently {X:mult,C:white} X#4# {C:inactive} Mult)",
                },
                unlock={
                    "{E:1,s:1.3}?????",
                },
            },

            j_middle_of_the_pack={
                name="Middle Of The Pack",
                text={
                    "Each played",
                    "{C:attention}4{}, {C:attention}5{}, {C:attention}6{}, or {C:attention}7{} gives",
                    "{C:mult}+#1#{} Mult when scored",
                },
                unlock={
                    "Play {C:attention,E:1}#1#{} hands",
                    "{C:inactive}(#2#)",
                },
                },

                j_sticker_sheet={
                    name="Sticker Sheet",
                    text={
                        "Create a Random",
                        "{C:attention}Tag{} when blind",
                        "is skipped",
                        "{C:inactive,s:0.8}(Tag may not activate immediately){}",
                    },
                    unlock={
                        "Play {C:attention,E:1}#1#{} hands",
                        "{C:inactive}(#2#)",
                    },
                    },

                j_querent={
                    name="Querent",
                    text={
                        "Earn {C:money}$#1#{} at end of",
                        "round per unique {C:tarot}Tarot{}",
                        "card used this run",
                        "{C:inactive}(Currently {C:money}$#2#{C:inactive})",
                    },
                    unlock={
                        "Have {E:1,C:money}$#1#",
                        "or more",
                    },
                },

                j_ecstatic={
                    name="Ecstatic Joker",
                    text={
                        "{C:red}+#1#{} Mult if played",
                        "hand contains",
                        "a {C:attention}#2#",
                    },
                },

                j_sinister={
                    name="Sinister Joker",
                    text={
                        "{C:chips}+#1#{} Chips if played",
                        "hand contains",
                        "a {C:attention}#2#",
                    },
                },

                j_quarrel={
                    name="The Quarrel",
                    text={
                        "{X:mult,C:white} X#1# {} Mult if played",
                        "hand contains",
                        "a {C:attention}#2#",
                    },
                    unlock={
                        "Win a run",
                        "without playing",
                        "a {E:1,C:attention}#1#",
                    },
                },
                j_cubicle={
                    name="Office Cubicle",
                    text={
                        "Each played {C:attention}9{}, {C:attention}2{}, or ",
                        "{C:attention}5{} earns {C:money}$#1#{} when", 
                        "scored",
                    },
                },
                j_superstition={
                    name="Superstition",
                    text={
                        "Each played {C:attention}7{} becomes a",
                        "{C:attention}Lucky{} card when scored",
                        "Destroy all {C:attention}Kings{} in hand."
                    },
                    unlock = {
                    "Play and hand",
                    "that contains",
                    "{C:attention}three Lucky 7s{}",
                    },
                },
                j_proxy={
                    name="Joker Proxy",
                    text={
                        "Creates a random", 
                        "{C:attention}Enhanced{} and {C:attention}Sealed{}",
                        "card at end of round",
                    },
                    unlock = {
                    "Have at least {C:attention}60{}",
                    "cards in your",
                    "deck",
                }
                },

                j_fortune_cookie={
                    name="Fortune Cookie",
                    text={
                    "Create a random",
                    "{C:spectral}Spectral{} card when a",
                    "{C:spectral}Spectral{} card is used",
                    "{C:inactive}(Currently{} {C:attention}#1#{}{C:inactive}/2 left){}",
                    },
                },

                j_coloring_page={
                    name="Coloring Page",
                    text={
                    "If {C:attention}Discard{} has only {C:attention}1{} card, draw a ",
                    "random card of the most common",
                    "{C:attention}Suit{} in your {C:attention}Deck{}",
                    "{C:inactive}(Currently{} {C:attention}#1#{}{C:inactive}){}",
                    },
                },

                j_hat_trick={
                    name="Hat Trick",
                    text={
                        "Retrigger all scored cards an",
                        "additional {C:attention}#1#{} times if played {C:attention}poker{}",
                        "{C:attention}hand{} has already been played {C:attention}2{}",
                        "times this round",
                    },
                    unlock = {
                    "Win a run with",
                    "{C:attention}Plasma Deck{}",
                    "on any difficulty",
                },
                },
                j_scales={
                    name="The Scales",
                    text={
                    "{C:attention}Balances{} Chips and Mult",
                    "{C:inactive}(ex: {C:chips}100{}{C:inactive} x {C:mult}2{}{C:inactive} ->",
                    "{C:chips}51{}{C:inactive} x {C:mult}51{}{C:inactive}){}",
                    },
                    unlock = {
                    "Win a run with",
                    "{C:attention}Plasma Deck{}",
                    "on any difficulty",
                },
                },

                j_scryer={
                    name="Scryer",
                    text={
                    "{C:tarot}The Fool{} and {C:tarot}The Emperor{} ",
                    "can create {C:spectral}Spectral{} cards",
                    },
                    unlock = {
                    "Discover every",
                    "{E:1,C:spectral}Spectral{} card",
                },
                },
        },

        Other = {
            silver_seal={
                name="Silver Seal",
                text={
                    "Creates a {C:attention}copy{} when",
                    "this card scores",
                    "{C:inactive,s:0.8}(Excluding Seal){}",
                },
            },

        },
        Planet = {
            c_dagon={
                name="Dagon",
                text={
                    "{S:0.8}({S:0.8,V:1}lvl.#2#{S:0.8}){} Level up",
                    "{C:attention}#1#",
                    "{C:mult}+#3#{} Mult and",
                    "{C:chips}+#4#{} chips",
                },
            },
            c_amateru={
                name="Amateru",
                text={
                    "{S:0.8}({S:0.8,V:1}lvl.#2#{S:0.8}){} Level up",
                    "{C:attention}#1#",
                    "{C:mult}+#3#{} Mult and",
                    "{C:chips}+#4#{} chips",
                },
            },

        },
        Spectral = {
                c_aura={
                name="Aura",
                text={
                    "Add {C:dark_edition}Foil{}, {C:dark_edition}Holographic{},",
                    "{C:dark_edition}Gilded{}, or {C:dark_edition}Polychrome{} effect",
                    "to {C:attention}1{} selected card in hand",
                },
            },
            c_replicate={
                name="Replicate",
                text={
                    "Add a {C:inactive}Silver Seal{}",
                    "to {C:attention}1{} selected",
                    "card in your hand",
                },
            },
        },
        Stake = {},
        Tag = {
            tag_gilded={
                name="Gilded Tag",
                text={
                    "Next base edition shop",
                    "Joker is free and",
                    "becomes {C:dark_edition}Gilded",
                },
            },
        },
        Tarot = {
            c_wheel_of_fortune={
                name="The Wheel of Fortune",
                text={
                    "{C:green}#1# in #2#{} chance to add",
                    "{C:dark_edition}Foil{}, {C:dark_edition}Holographic{},",
                    "{C:dark_edition}Gilded{}, or {C:dark_edition}Polychrome{} edition",
                    "to a random {C:attention}Joker",
                },
        },
    },
        Voucher = {
            v_draft_booster = {
                name = 'Draft Booster',
                text={
                    "{C:attention}+1{} booster slot",
                    "available in shop",
                },
                unlock = {
                    'This is a condition',
                    'for unlocking this card',
                },
            },
            v_collector_booster = {
                name = 'Collector Booster',
                text={
                    "{C:attention}+1{} booster slot",
                    "available in shop",
                },
                unlock={
                    "Spend a total of",
                    "{C:money}$#1#{} at the shop",
                    "{C:inactive}($#2#)",
                },
            },
            v_hone={
                name="Hone",
                text={
                    "{C:dark_edition}Foil{}, {C:dark_edition}Holographic{},",
                    "{C:dark_edition}Gilded, and {C:dark_edition}Polychrome{} cards",
                    "appear {C:attention}#1#X{} more often",
                },
            },
            v_glow_up={
                name="Glow Up",
                text={
                    "{C:dark_edition}Foil{}, {C:dark_edition}Holographic{},",
                    "{C:dark_edition}Gilded, and {C:dark_edition}Polychrome{} cards",
                    "appear {C:attention}#1#X{} more often",
                },
                unlock={
                    "Have at least {C:attention}#1#",
                    "{C:attention}Joker{} cards with",
                    "{C:dark_edition}Foil{}, {C:dark_edition}Holographic{}, or",
                    "{C:dark_edition}Polychrome{} edition",
                },
            },

        },
    },
    misc = {
        achievement_descriptions = {},
        achievement_names = {},
        blind_states = {},
        challenge_names = {
            c_jimbonly_1="Jimbonly",
            c_jimboless_1="Jimboless",
        },
        collabs = {},
        dictionary = {},
        high_scores = {},
        labels = {
            silver_seal="Silver Seal",
        },
        poker_hand_descriptions = {
            pelter = {"A hand with a 2, 5, and 9 plus two ",
        "unpaired cards lower than 9"},
        pelter_flush = {"A hand with a 2, 5, and 9 plus two ",
        "unpaired cards lower than 9"},
        },
        poker_hands = {
            pelter = "Pelter",
            pelter_flush = "Pelter Flush",
        },
        quips = {},
        ranks = {},
        suits_plural = {},
        suits_singular = {},
        tutorial = {},
        dictionary = {
            k_exoplanet = "Exoplanet",
            k_lucky = "Lucky",
            k_superstitiondestroy = "Destroy",
            pelter = "Pelter",
            pelter_flush = "Pelter Flush",
        },
        v_text = {},
    },
}