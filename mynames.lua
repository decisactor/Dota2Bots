local mode = {
    "laning",
    "attack",
    "roam",
    "retreat",
    "secret_shop",
    "side_shop",
    "rune",
    "push_tower_top",
    "push_tower_mid",
    "push_tower_bot",
    "defend_tower_top",
    "defend_tower_mid",
    "defend_tower_bottom",
    "assemble",
    "team_roam",
    "farm",
    "defend_ally",
    "evasive_maneuvers",
    "roshan",
    "item",
    "ward",
} 

local heros = {
	["Abaddon"] = "npc_dota_hero_abaddon",
	["Alchemist"] = "npc_dota_hero_alchemist",
	["Anti-Mage"] = "npc_dota_hero_antimage",
	["Ancient Apparition"] = "npc_dota_hero_ancient_apparition",
	["Arc Warden"] = "npc_dota_hero_arc_warden",
	["Axe"] = "npc_dota_hero_axe",
	["Bane"] = "npc_dota_hero_bane",
	["Batrider"] = "npc_dota_hero_batrider",
	["Beastmaster"] = "npc_dota_hero_beastmaster",
	["Bloodseeker"] = "npc_dota_hero_bloodseeker",
	["Bounty Hunter"] = "npc_dota_hero_bounty_hunter",
	["Brewmaster"] = "npc_dota_hero_brewmaster",
	["Bristleback"] = "npc_dota_hero_bristleback",
	["Broodmother"] = "npc_dota_hero_broodmother",
	["Centaur Warrunner"] = "npc_dota_hero_centaur",
	["Chaos Knight"] = "npc_dota_hero_chaos_knight",
	["Chen"] = "npc_dota_hero_chen",
	["Clinkz"] = "npc_dota_hero_clinkz",
	["Clockwerk"] = "npc_dota_hero_rattletrap",
	["Crystal Maiden"] = "npc_dota_hero_crystal_maiden",
	["Dark Seer"] = "npc_dota_hero_dark_seer",
	["Dazzle"] = "npc_dota_hero_dazzle",
	["Death Prophet"] = "npc_dota_hero_death_prophet",
	["Disruptor"] = "npc_dota_hero_disruptor",
	["Doom"] = "npc_dota_hero_doom_bringer",
	["Dragon Knight"] = "npc_dota_hero_dragon_knight",
	["Drow Ranger"] = "npc_dota_hero_drow_ranger",
	["Earth Spirit"] = "npc_dota_hero_earth_spirit",
	["Earthshaker"] = "npc_dota_hero_earthshaker",
	["Elder Titan"] = "npc_dota_hero_elder_titan",
	["Ember Spirit"] = "npc_dota_hero_ember_spirit",
	["Enchantress"] = "npc_dota_hero_enchantress",
	["Enigma"] = "npc_dota_hero_enigma",
	["Faceless Void"] = "npc_dota_hero_faceless_void",
	["Gyrocopter"] = "npc_dota_hero_gyrocopter",
	["Huskar"] = "npc_dota_hero_huskar",
	["Invoker"] = "npc_dota_hero_invoker",
	["Io"] = "npc_dota_hero_wisp",
	["Jakiro"] = "npc_dota_hero_jakiro",
	["Juggernaut"] = "npc_dota_hero_juggernaut",
	["Keeper of the Light"] = "npc_dota_hero_keeper_of_the_light",
	["Kunkka"] = "npc_dota_hero_kunkka",
	["Legion Commander"] = "npc_dota_hero_legion_commander",
	["Leshrac"] = "npc_dota_hero_leshrac",
	["Lich"] = "npc_dota_hero_lich",
	["Lifestealer"] = "npc_dota_hero_life_stealer",
	["Lina"] = "npc_dota_hero_lina",
	["Lion"] = "npc_dota_hero_lion",
	["Lone Druid"] = "npc_dota_hero_lone_druid",
	["Luna"] = "npc_dota_hero_luna",
	["Lycan"] = "npc_dota_hero_lycan",
	["Magnus"] = "npc_dota_hero_magnataur",
	["Medusa"] = "npc_dota_hero_medusa",
	["Meepo"] = "npc_dota_hero_meepo",
	["Mirana"] = "npc_dota_hero_mirana",
	["Morphling"] = "npc_dota_hero_morphling",
	["Monkey King"] = "npc_dota_hero_monkey_king",
	["Naga Siren"] = "npc_dota_hero_naga_siren",
	["Nature's Prophet"] = "npc_dota_hero_furion",
	["Necrophos"] = "npc_dota_hero_necrolyte",
	["Night Stalker"] = "npc_dota_hero_night_stalker",
	["Nyx Assassin"] = "npc_dota_hero_nyx_assassin",
	["Ogre Magi"] = "npc_dota_hero_ogre_magi",
	["Omniknight"] = "npc_dota_hero_omniknight",
	["Oracle"] = "npc_dota_hero_oracle",
	["Outworld Devourer"] = "npc_dota_hero_obsidian_destroyer",
	["Phantom Assassin"] = "npc_dota_hero_phantom_assassin",
	["Phantom Lancer"] = "npc_dota_hero_phantom_lancer",
	["Phoenix"] = "npc_dota_hero_phoenix",
	["Puck"] = "npc_dota_hero_puck",
	["Pudge"] = "npc_dota_hero_pudge",
	["Pugna"] = "npc_dota_hero_pugna",
	["Queen of Pain"] = "npc_dota_hero_queenofpain",
	["Razor"] = "npc_dota_hero_razor",
	["Riki"] = "npc_dota_hero_riki",
	["Rubick"] = "npc_dota_hero_rubick",
	["Sand King"] = "npc_dota_hero_sand_king",
	["Shadow Demon"] = "npc_dota_hero_shadow_demon",
	["Shadow Fiend"] = "npc_dota_hero_nevermore",
	["Shadow Shaman"] = "npc_dota_hero_shadow_shaman",
	["Silencer"] = "npc_dota_hero_silencer",
	["Skywrath Mage"] = "npc_dota_hero_skywrath_mage",
	["Slardar"] = "npc_dota_hero_slardar",
	["Slark"] = "npc_dota_hero_slark",
	["Sniper"] = "npc_dota_hero_sniper",
	["Spectre"] = "npc_dota_hero_spectre",
	["Spirit Breaker"] = "npc_dota_hero_spirit_breaker",
	["Storm Spirit"] = "npc_dota_hero_storm_spirit",
	["Sven"] = "npc_dota_hero_sven",
	["Techies"] = "npc_dota_hero_techies",
	["Templar Assassin"] = "npc_dota_hero_templar_assassin",
	["Terrorblade"] = "npc_dota_hero_terrorblade",
	["Tidehunter"] = "npc_dota_hero_tidehunter",
	["Timbersaw"] = "npc_dota_hero_shredder",
	["Tinker"] = "npc_dota_hero_tinker",
	["Tiny"] = "npc_dota_hero_tiny",
	["Treant Protector"] = "npc_dota_hero_treant",
	["Troll Warlord"] = "npc_dota_hero_troll_warlord",
	["Tusk"] = "npc_dota_hero_tusk",
	["Underlord"] = "npc_dota_hero_abyssal_underlord",
	["Undying"] = "npc_dota_hero_undying",
	["Ursa"] = "npc_dota_hero_ursa",
	["Vengeful Spirit"] = "npc_dota_hero_vengefulspirit",
	["Venomancer"] = "npc_dota_hero_venomancer",
	["Viper"] = "npc_dota_hero_viper",
	["Visage"] = "npc_dota_hero_visage",
	["Warlock"] = "npc_dota_hero_warlock",
	["Weaver"] = "npc_dota_hero_weaver",
	["Windranger"] = "npc_dota_hero_windrunner",
	["Winter Wyvern"] = "npc_dota_hero_winter_wyvern",
	["Witch Doctor"] = "npc_dota_hero_witch_doctor",
	["Wraith King"] = "npc_dota_hero_skeleton_king",
	["Zeus"] = "npc_dota_hero_zuus",
}
local items = {
	
}
Aegis of the Immortal icon.png Aegis of the Immortal 	item_aegis
Animal Courier (Radiant) icon.png Animal Courier 	item_courier
Band of Elvenskin icon.png Band of Elvenskin 	item_boots_of_elves
Belt of Strength icon.png Belt of Strength 	item_belt_of_strength
Blade of Alacrity icon.png Blade of Alacrity 	item_blade_of_alacrity
Blades of Attack icon.png Blades of Attack 	item_blades_of_attack
Blight Stone icon.png Blight Stone 	item_blight_stone
Blink Dagger icon.png Blink Dagger 	item_blink
Boots of Speed icon.png Boots of Speed 	item_boots
Bottle (Full) icon.png Bottle 	item_bottle
Broadsword icon.png Broadsword 	item_broadsword
Chainmail icon.png Chainmail 	item_chainmail
Cheese icon.png Cheese 	item_cheese
Circlet icon.png Circlet 	item_circlet
Clarity icon.png Clarity 	item_clarity
Claymore icon.png Claymore 	item_claymore
Cloak icon.png Cloak 	item_cloak
Demon Edge icon.png Demon Edge 	item_demon_edge
Dust of Appearance icon.png Dust of Appearance 	item_dust
Eaglesong icon.png Eaglesong 	item_eagle
Enchanted Mango icon.png Enchanted Mango 	item_enchanted_mango
Energy Booster icon.png Energy Booster 	item_energy_booster
Faerie Fire icon.png Faerie Fire 	item_faerie_fire
Flying Courier (Radiant) icon.png Flying Courier 	item_flying_courier
Gauntlets of Strength icon.png Gauntlets of Strength 	item_gauntlets
Gem of True Sight icon.png Gem of True Sight 	item_gem
Ghost Scepter icon.png Ghost Scepter 	item_ghost
Gloves of Haste icon.png Gloves of Haste 	item_gloves
Healing Salve icon.png Healing Salve 	item_flask
Helm of Iron Will icon.png Helm of Iron Will 	item_helm_of_iron_will
Hyperstone icon.png Hyperstone 	item_hyperstone
Infused Raindrop icon.png Infused Raindrop 	item_infused_raindrop
Iron Branch icon.png Iron Branch 	item_branches
Javelin icon.png Javelin 	item_javelin
Magic Stick icon.png Magic Stick 	item_magic_stick
Mantle of Intelligence icon.png Mantle of Intelligence 	item_mantle
Mithril Hammer icon.png Mithril Hammer 	item_mithril_hammer
Morbid Mask icon.png Morbid Mask 	item_lifesteal
Mystic Staff icon.png Mystic Staff 	item_mystic_staff
Observer Ward icon.png Observer Ward 	item_ward_observer
Ogre Club icon.png Ogre Club 	item_ogre_axe
Orb of Venom icon.png Orb of Venom 	item_orb_of_venom
Platemail icon.png Platemail 	item_platemail
Point Booster icon.png Point Booster 	item_point_booster
Quarterstaff icon.png Quarterstaff 	item_quarterstaff
Quelling Blade icon.png Quelling Blade 	item_quelling_blade
Reaver icon.png Reaver 	item_reaver
Ring of Health icon.png Ring of Health 	item_ring_of_health
Ring of Protection icon.png Ring of Protection 	item_ring_of_protection
Ring of Regen icon.png Ring of Regen 	item_ring_of_regen
Robe of the Magi icon.png Robe of the Magi 	item_robe
Sacred Relic icon.png Sacred Relic 	item_relic
Sage's Mask icon.png Sage's Mask 	item_sobi_mask
Sentry Ward icon.png Sentry Ward 	item_ward_sentry
Shadow Amulet icon.png Shadow Amulet 	item_shadow_amulet
Slippers of Agility icon.png Slippers of Agility 	item_slippers
Smoke of Deceit icon.png Smoke of Deceit 	item_smoke_of_deceit
Staff of Wizardry icon.png Staff of Wizardry 	item_staff_of_wizardry
Stout Shield icon.png Stout Shield 	item_stout_shield
Talisman of Evasion icon.png Talisman of Evasion 	item_talisman_of_evasion
Tango icon.png Tango 	item_tango
Tango (Shared) icon.png Tango (Shared) 	item_tango_single
Tome of Knowledge icon.png Tome of Knowledge 	item_tome_of_knowledge
Town Portal Scroll icon.png Town Portal Scroll 	item_tpscroll
Ultimate Orb icon.png Ultimate Orb 	item_ultimate_orb
Vitality Booster icon.png Vitality Booster 	item_vitality_booster
Void Stone icon.png Void Stone 	item_void_stone
Wind Lace icon.png Wind Lace 	item_wind_lace
Upgraded items
Item 	Internal name 	Internal Recipe Scroll icon.png recipe name1
Abyssal Blade icon.png Abyssal Blade 	item_abyssal_blade 	item_recipe_abyssal_blade
Aether Lens icon.png Aether Lens 	item_aether_lens 	item_recipe_aether_lens
Aghanim's Scepter icon.png Aghanim's Scepter 	item_ultimate_scepter 	item_recipe_ultimate_scepter
Arcane Boots icon.png Arcane Boots 	item_arcane_boots 	item_recipe_arcane_boots
Armlet of Mordiggian (Inactive) icon.png Armlet of Mordiggian 	item_armlet 	item_recipe_armlet
Assault Cuirass icon.png Assault Cuirass 	item_assault 	item_recipe_assault
Battle Fury icon.png Battle Fury 	item_bfury 	item_recipe_bfury
Black King Bar icon.png Black King Bar 	item_black_king_bar 	item_recipe_black_king_bar
Blade Mail icon.png Blade Mail 	item_blade_mail 	item_recipe_blade_mail
Bloodstone icon.png Bloodstone 	item_bloodstone 	item_recipe_bloodstone
Bloodthorn icon.png Bloodthorn 	item_bloodthorn 	item_recipe_bloodthorn
Boots of Travel 1 icon.png Boots of Travel2 	item_travel_boots_# (1-2) 	item_recipe_travel_boots
Bracer icon.png Bracer 	item_bracer 	item_recipe_bracer
Buckler icon.png Buckler 	item_buckler 	item_recipe_buckler
Butterfly icon.png Butterfly 	item_butterfly 	item_recipe_butterfly
Crimson Guard icon.png Crimson Guard 	item_crimson_guard 	item_recipe_crimson_guard
Crystalys icon.png Crystalys 	item_lesser_crit 	item_recipe_lesser_crit
Daedalus icon.png Daedalus 	item_greater_crit 	item_recipe_greater_crit
Dagon 1 icon.png Dagon2 	item_dagon_# (1-5) 	item_recipe_dagon
Desolator icon.png Desolator 	item_desolator 	item_recipe_desolator
Diffusal Blade 1 icon.png Diffusal Blade2 	item_diffusal_blade_# (1-2) 	item_recipe_diffusal_blade
Dragon Lance icon.png Dragon Lance 	item_dragon_lance 	item_recipe_dragon_lance
Drum of Endurance icon.png Drum of Endurance 	item_ancient_janggo 	item_recipe_ancient_janggo
Echo Sabre icon.png Echo Sabre 	item_echo_sabre 	item_recipe_echo_sabre
Ethereal Blade icon.png Ethereal Blade 	item_ethereal_blade 	item_recipe_ethereal_blade
Eul's Scepter of Divinity icon.png Eul's Scepter of Divinity 	item_cyclone 	item_recipe_cyclone
Eye of Skadi icon.png Eye of Skadi 	item_skadi 	item_recipe_skadi
Force Staff icon.png Force Staff 	item_force_staff 	item_recipe_force_staff
Glimmer Cape icon.png Glimmer Cape 	item_glimmer_cape 	item_recipe_glimmer_cape
Guardian Greaves icon.png Guardian Greaves 	item_guardian_greaves 	item_recipe_guardian_greaves
Hand of Midas icon.png Hand of Midas 	item_hand_of_midas 	item_recipe_hand_of_midas
Headdress icon.png Headdress 	item_headdress 	item_recipe_headdress
Heart of Tarrasque icon.png Heart of Tarrasque 	item_heart 	item_recipe_heart
Heaven's Halberd icon.png Heaven's Halberd 	item_heavens_halberd 	item_recipe_heavens_halberd
Helm of the Dominator icon.png Helm of the Dominator 	item_helm_of_the_dominator 	item_recipe_helm_of_the_dominator
Hood of Defiance icon.png Hood of Defiance 	item_hood_of_defiance 	item_recipe_hood_of_defiance
Hurricane Pike icon.png Hurricane Pike 	item_hurricane_pike 	item_recipe_hurricane_pike
Iron Talon icon.png Iron Talon 	item_iron_talon 	item_recipe_iron_talon
Linken's Sphere icon.png Linken's Sphere 	item_sphere 	item_recipe_sphere
Lotus Orb icon.png Lotus Orb 	item_lotus_orb 	item_recipe_lotus_orb
Maelstrom icon.png Maelstrom 	item_maelstrom 	item_recipe_maelstrom
Magic Wand icon.png Magic Wand 	item_magic_wand 	item_recipe_magic_wand
Manta Style icon.png Manta Style 	item_manta 	item_recipe_manta
Mask of Madness icon.png Mask of Madness 	item_mask_of_madness 	item_recipe_mask_of_madness
Medallion of Courage icon.png Medallion of Courage 	item_medallion_of_courage 	item_recipe_medallion_of_courage
Mekansm icon.png Mekansm 	item_mekansm 	item_recipe_mekansm
Mjollnir icon.png Mjollnir 	item_mjollnir 	item_recipe_mjollnir
Monkey King Bar icon.png Monkey King Bar 	item_monkey_king_bar 	item_recipe_monkey_king_bar
Moon Shard icon.png Moon Shard 	item_moon_shard 	item_recipe_moon_shard
Necronomicon 1 icon.png Necronomicon2 	item_necronomicon_# (1-3) 	item_recipe_necronomicon
Null Talisman icon.png Null Talisman 	item_null_talisman 	item_recipe_null_talisman
Oblivion Staff icon.png Oblivion Staff 	item_oblivion_staff 	item_recipe_oblivion_staff
Observer and Sentry Wards 1 icon.png Observer and Sentry Wards 	item_ward_dispenser 	item_recipe_ward_dispenser
Octarine Core icon.png Octarine Core 	item_octarine_core 	item_recipe_octarine_core
Orchid Malevolence icon.png Orchid Malevolence 	item_orchid 	item_recipe_orchid
Perseverance icon.png Perseverance 	item_pers 	item_recipe_pers
Phase Boots icon.png Phase Boots 	item_phase_boots 	item_recipe_phase_boots
Pipe of Insight icon.png Pipe of Insight 	item_pipe 	item_recipe_pipe
Poor Man's Shield icon.png Poor Man's Shield 	item_poor_mans_shield 	item_recipe_poor_mans_shield
Power Treads icon.png Power Treads 	item_power_treads 	item_recipe_power_treads
Radiance (Active) icon.png Radiance 	item_radiance 	item_recipe_radiance
Divine Rapier icon.png Divine Rapier 	item_rapier 	item_recipe_rapier
Refresher Orb icon.png Refresher Orb 	item_refresher 	item_recipe_refresher
Ring of Aquila (Active) icon.png Ring of Aquila 	item_ring_of_aquila 	item_recipe_ring_of_aquila
Ring of Basilius (Active) icon.png Ring of Basilius 	item_ring_of_basilius 	item_recipe_ring_of_basilius
Rod of Atos icon.png Rod of Atos 	item_rod_of_atos 	item_recipe_rod_of_atos
Sange icon.png Sange 	item_sange 	item_recipe_sange
Sange and Yasha icon.png Sange and Yasha 	item_sange_and_yasha 	item_recipe_sange_and_yasha
Satanic icon.png Satanic 	item_satanic 	item_recipe_satanic
Scythe of Vyse icon.png Scythe of Vyse 	item_sheepstick 	item_recipe_sheepstick
Shadow Blade icon.png Shadow Blade 	item_invis_sword 	item_recipe_invis_sword
Shiva's Guard icon.png Shiva's Guard 	item_shivas_guard 	item_recipe_shivas_guard
Silver Edge icon.png Silver Edge 	item_silver_edge 	item_recipe_silver_edge
Skull Basher icon.png Skull Basher 	item_basher 	item_recipe_basher
Solar Crest icon.png Solar Crest 	item_solar_crest 	item_recipe_solar_crest
Soul Booster icon.png Soul Booster 	item_soul_booster 	item_recipe_soul_booster
Soul Ring icon.png Soul Ring 	item_soul_ring 	item_recipe_soul_ring
Tranquil Boots (Active) icon.png Tranquil Boots 	item_tranquil_boots 	item_recipe_tranquil_boots
Urn of Shadows icon.png Urn of Shadows 	item_urn_of_shadows 	item_recipe_urn_of_shadows
Vanguard icon.png Vanguard 	item_vanguard 	item_recipe_vanguard
Veil of Discord icon.png Veil of Discord 	item_veil_of_discord 	item_recipe_veil_of_discord
Vladmir's Offering icon.png Vladmir's Offering 	item_vladmir 	item_recipe_vladmir
Wraith Band icon.png Wraith Band 	item_wraith_band 	item_recipe_wraith_band
Yasha icon.png Yasha 	item_yasha 	item_recipe_yasha

Dire melee creep 	npc_dota_creep_badguys_melee
Dire super melee creep 	npc_dota_creep_badguys_melee_upgraded
Dire mega melee creep 	npc_dota_creep_badguys_melee_upgraded_mega
Dire ranged creep 	npc_dota_creep_badguys_ranged
Dire super ranged creep 	npc_dota_creep_badguys_ranged_upgraded
Dire mega ranged creep 	npc_dota_creep_badguys_ranged_upgraded_mega
Dire siege creep 	npc_dota_badguys_siege
Dire super siege creep 	npc_dota_badguys_siege_upgraded
Dire mega siege creep 	npc_dota_badguys_siege_upgraded_mega
Radiant melee creep 	npc_dota_creep_goodguys_melee
Radiant super melee creep 	npc_dota_creep_goodguys_melee_upgraded
Radiant mega melee creep 	npc_dota_creep_goodguys_melee_upgraded_mega
Radiant ranged creep 	npc_dota_creep_goodguys_ranged
Radiant super ranged creep 	npc_dota_creep_goodguys_ranged_upgraded
Radiant mega ranged creep 	npc_dota_creep_goodguys_ranged_upgraded_mega
Radiant siege creep 	npc_dota_goodguys_siege
Radiant super siege creep 	npc_dota_goodguys_siege_upgraded
Radiant mega siege creep 	npc_dota_goodguys_siege_upgraded_mega
Buildings
Dire Ancient 	npc_dota_badguys_fort
Dire filler building 	npc_dota_badguys_filler
Dire melee barracks top 	npc_dota_badguys_melee_rax_top
Dire melee barracks mid 	npc_dota_badguys_melee_rax_mid
Dire melee barracks bottom 	npc_dota_badguys_melee_rax_bot
Dire range barracks top 	npc_dota_badguys_range_rax_top
Dire range barracks mid 	npc_dota_badguys_range_rax_mid
Dire range barracks bottom 	npc_dota_badguys_range_rax_bot
Dire tier # top lane tower 	npc_dota_badguys_tower#_top (1-3)
Dire tier # mid lane tower 	npc_dota_badguys_tower#_mid (1-3)
Dire tier # bottom lane tower 	npc_dota_badguys_tower#_bot (1-3)
Dire tier 4 base tower 	npc_dota_badguys_tower4
Radiant Ancient 	npc_dota_goodguys_fort
Radiant filler building 	npc_dota_goodguys_filler
Radiant melee barracks top 	npc_dota_goodguys_melee_rax_top
Radiant melee barracks mid 	npc_dota_goodguys_melee_rax_mid
Radiant melee barracks bottom 	npc_dota_goodguys_melee_rax_bot
Radiant range barracks top 	npc_dota_goodguys_range_rax_top
Radiant range barracks mid 	npc_dota_goodguys_range_rax_mid
Radiant range barracks bottom 	npc_dota_goodguys_range_rax_bot
Radiant tier # top lane tower 	npc_dota_goodguys_tower#_top (1-3)
Radiant tier # mid lane tower 	npc_dota_goodguys_tower#_mid (1-3)
Radiant tier # bottom lane tower 	npc_dota_goodguys_tower#_bot (1-3)
Radiant tier 4 base tower 	npc_dota_goodguys_tower4
Fountain 	dota_fountain
Neutral creeps
Alpha Wolf 	npc_dota_neutral_alpha_wolf
Centaur Conqueror 	npc_dota_neutral_centaur_khan
Centaur Courser 	npc_dota_neutral_centaur_outrunner
Dark Troll Summoner 	npc_dota_neutral_dark_troll_warlord
Fell Spirit 	npc_dota_neutral_fel_beast
Ghost 	npc_dota_neutral_ghost
Giant Wolf 	npc_dota_neutral_giant_wolf
Harpy 	npc_dota_neutral_harpy_scout
Harpy Stormcrafter 	npc_dota_neutral_harpy_storm
Hellbear 	npc_dota_neutral_polar_furbolg_champion
Hellbear Smasher 	npc_dota_neutral_polar_furbolg_ursa_warrior
Hill Troll 	npc_dota_neutral_dark_troll
Hill Troll Berserker 	npc_dota_neutral_forest_troll_berserker
Hill Troll Priest 	npc_dota_neutral_forest_troll_high_priest
Kobold 	npc_dota_neutral_kobold
Kobold Soldier 	npc_dota_neutral_kobold_tunneler
Kobold Foreman 	npc_dota_neutral_kobold_taskmaster
Mud Golem 	npc_dota_neutral_mud_golem
Ogre Bruiser 	npc_dota_neutral_ogre_mauler
Ogre Frostmage 	npc_dota_neutral_ogre_magi
Satyr Banisher 	npc_dota_neutral_satyr_trickster
Satyr Mindstealer 	npc_dota_neutral_satyr_soulstealer
Satyr Tormenter 	npc_dota_neutral_satyr_hellcaller
Vhoul Assassin 	npc_dota_neutral_gnoll_assassin
Wildwing 	npc_dota_neutral_wildkin
Wildwing Ripper 	npc_dota_neutral_enraged_wildkin
Ancient creeps
Ancient Black Drake 	npc_dota_neutral_black_drake
Ancient Black Dragon 	npc_dota_neutral_black_dragon
Ancient Drakken Armorer 	npc_dota_neutral_blue_dragonspawn_sorcerer
Ancient Drakken Sentinel 	npc_dota_neutral_blue_dragonspawn_overseer
Ancient Granite Golem 	npc_dota_neutral_granite_golem
Ancient Primal Stalker 	npc_dota_neutral_elder_jungle_stalker
Ancient Rock Golem 	npc_dota_neutral_rock_golem
Ancient Rumblehide 	npc_dota_neutral_small_thunder_lizard
Ancient Stalker 	npc_dota_neutral_jungle_stalker
Ancient Thunderhide 	npc_dota_neutral_big_thunder_lizard
Roshan 	npc_dota_roshan
Summoned units
Regular summons
Animal Courier 	npc_dota_courier
Boar (old Lesser Boar) 	npc_dota_beastmaster_boar
Boar (old Greater Boar) 	npc_dota_beastmaster_greater_boar
Boar 	npc_dota_beastmaster_boar_# (1-4)
Doom Shard 	npc_dota_neutral_mud_golem_split_doom
Eidolon (lvl1) 	npc_dota_lesser_eidolon
Eidolon (lvl2) 	npc_dota_eidolon
Eidolon (lvl3) 	npc_dota_greater_eidolon
Eidolon (lvl4) 	npc_dota_dire_eidolon
Flying Courier 	npc_dota_flying_courier
Forged Spirit 	npc_dota_invoker_forged_spirit
Greater Treant 	npc_dota_furion_treant_large
Hawk (old Scout Hawk) 	npc_dota_scout_hawk
Hawk (old Greater Hawk) 	npc_dota_greater_hawk
Hawk 	npc_dota_beastmaster_hawk_# (1-4)
Lycan Wolf 	npc_dota_lycan_wolf# (1-4)
Necronomicon Archer 	npc_dota_necronomicon_archer_# (1-3)
Necronomicon Warrior 	npc_dota_necronomicon_warrior_# (1-3)
Shard Golem 	npc_dota_neutral_mud_golem_split
Skeleton Warrior 	npc_dota_dark_troll_warlord_skeleton_warrior
Spiderling 	npc_dota_broodmother_spiderling
Spiderite 	npc_dota_broodmother_spiderite
Treant 	npc_dota_furion_treant
Zombie (walking) 	npc_dota_unit_undying_zombie
Zombie (crawling) 	npc_dota_unit_undying_zombie_torso
Creep-heroes
Earth 	npc_dota_brewmaster_earth_# (1-3)
Fire 	npc_dota_brewmaster_fire_# (1-3)
Spirit Bear 	npc_dota_lone_druid_bear# (1-4)
Storm 	npc_dota_brewmaster_storm_# (1-3)
Familiar 	npc_dota_visage_familiar# (1-3)
Warlock's Golem 	npc_dota_warlock_golem_# (1-3)
Warlock's Golem (aghanim's upgrade) 	npc_dota_warlock_golem_scepter_# (1-3)
Wards
Death Ward 	npc_dota_witch_doctor_death_ward
Frozen Sigil 	npc_dota_tusk_frozen_sigil# (1-4)
Healing Ward 	npc_dota_juggernaut_healing_ward
Land Mine 	npc_dota_techies_land_mine
Serpent Ward 	npc_dota_shadow_shaman_ward_# (1-3)
Nether Ward 	npc_dota_pugna_nether_ward_# (1-4)
Plague Ward 	npc_dota_venomancer_plague_ward_# (1-4)
Power Cog 	npc_dota_rattletrap_cog
Psionic Trap 	npc_dota_templar_assassin_psionic_trap
Remote Mine 	npc_dota_techies_remote_mine
Stasis Trap 	npc_dota_techies_stasis_trap
Supernova 	npc_dota_phoenix_sun
Tombstone 	npc_dota_unit_tombstone# (1-4)
Observer Ward 	npc_dota_observer_wards
Sentry Ward 	npc_dota_sentry_wards
Dummy/spell units
Astral Spirit 	npc_dota_elder_titan_ancestral_spirit
Base unit 	npc_dota_units_base
Eyes in the Forest 	npc_dota_treant_eyes
Fire Remnant 	npc_dota_ember_spirit_remnant
Homing Missile 	npc_dota_gyrocopter_homing_missile
"invisible vision source" 	npc_dota_invisible_vision_source
"looping sound" 	npc_dota_looping_sound
Kindler's Kit 	npc_dota_healing_campfire
Manifold Paradox kill gravestones 	npc_dota_phantomassassin_gravestone
Minefield Sign 	npc_dota_techies_minefield_sign
Plasma Field 	npc_dota_plasma_field
Rocket Flare 	npc_dota_rattletrap_rocket
"Slark Visual" 	npc_dota_slark_visual
Spin Web 	npc_dota_broodmother_web
Spirits 	npc_dota_wisp_spirit
Static Remnant 	npc_dota_stormspirit_remnant
Stone Remnant 	npc_dota_earth_spirit_stone
Target Dummy 	npc_dota_target_dummy
The Swarm 	npc_dota_weaver_swarm
Companion 	npc_dota_companion
Thinker 	npc_dota_thinker
Whirling Axes 	npc_dota_troll_warlord_axe
Wild Axes 	npc_dota_beastmaster_axe
Tornado 	npc_dota_enraged_wildkin_tornado
function create_generic_file( file_type )
    
end

function create_hero_file( hero_name )

end
