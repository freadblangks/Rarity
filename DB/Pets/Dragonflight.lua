local addonName, addonTable = ...

local L = LibStub("AceLocale-3.0"):GetLocale("Rarity")
local CONSTANTS = addonTable.constants

local dragonflightPets = {
	["Ohuna Companion"] = {
		cat = CONSTANTS.ITEM_CATEGORIES.DRAGONFLIGHT,
		type = CONSTANTS.ITEM_TYPES.PET,
		method = CONSTANTS.DETECTION_METHODS.USE,
		name = L["Ohuna Companion"],
		itemId = 200276,
		items = { 200468, 200513, 200515 },
		questId = { 70906, 70009, 71137 },
		spellId = 389429,
		creatureId = 189134,
		chance = 100, -- Guess
		coords = {
			{ m = CONSTANTS.UIMAPIDS.THE_WAKING_SHORES },
			{ m = CONSTANTS.UIMAPIDS.OHN_AHRAN_PLAINS },
			{ m = CONSTANTS.UIMAPIDS.THE_AZURE_SPAN },
			{ m = CONSTANTS.UIMAPIDS.THALDRASZUS },
		},
	},
	["Bakar Companion"] = {
		cat = CONSTANTS.ITEM_CATEGORIES.DRAGONFLIGHT,
		type = CONSTANTS.ITEM_TYPES.PET,
		method = CONSTANTS.DETECTION_METHODS.USE,
		name = L["Bakar Companion"],
		itemId = 200290,
		items = { 200468, 200513, 200515 },
		questId = { 70906, 70009, 71137 },
		spellId = 389503,
		creatureId = 189159,
		chance = 100, -- Guess
		coords = {
			{ m = CONSTANTS.UIMAPIDS.THE_WAKING_SHORES },
			{ m = CONSTANTS.UIMAPIDS.OHN_AHRAN_PLAINS },
			{ m = CONSTANTS.UIMAPIDS.THE_AZURE_SPAN },
			{ m = CONSTANTS.UIMAPIDS.THALDRASZUS },
		},
	},
	["Ashenwing"] = {
		cat = CONSTANTS.ITEM_CATEGORIES.DRAGONFLIGHT,
		type = CONSTANTS.ITEM_TYPES.PET,
		method = CONSTANTS.DETECTION_METHODS.NPC,
		name = L["Ashenwing"],
		npcs = { 200681 },
		itemId = 193374,
		spellId = 375085,
		chance = 20,
		creatureId = 189118,
		groupSize = 5,
		equalOdds = true,
		coords = { { m = CONSTANTS.UIMAPIDS.THE_FORBIDDEN_REACH, x = 43.6, y = 61.0, n = L["Bonesifter Marwak"] } },
	},
	["Gilded Mechafrog"] = {
		cat = CONSTANTS.ITEM_CATEGORIES.DRAGONFLIGHT,
		type = CONSTANTS.ITEM_TYPES.PET,
		method = CONSTANTS.DETECTION_METHODS.USE,
		name = L["Gilded Mechafrog"],
		itemId = 204079,
		items = { 203699, 203700 },
		spellId = 403072,
		creatureId = 202484,
		sourceText = L["Inside Zskera Vaults, collect Neltharion Gift Tokens for Prototype Tinker-Tron in order to receive Tattered Gift Package, which can drop the Gilded Mechafrog pet."],
		chance = 25,
		coords = {
			{ m = CONSTANTS.UIMAPIDS.THE_FORBIDDEN_REACH, x = 29.2, y = 53.0, n = L["Entrance to Zskera Vaults"] },
		},
	},
	["Dust Spirit"] = {
		cat = CONSTANTS.ITEM_CATEGORIES.DRAGONFLIGHT,
		type = CONSTANTS.ITEM_TYPES.PET,
		method = CONSTANTS.DETECTION_METHODS.USE,
		name = L["Dust Spirit"],
		itemId = 201260,
		items = { 201297 },
		spellId = 374755,
		creatureId = 198271,
		sourceText = L["Collect Encaged Earthen Soul and wait 15min until it turns into Docile Earthen Soul, then open it for a chance at the pet."],
		chance = 50,
		coords = { { m = CONSTANTS.UIMAPIDS.THE_WAKING_SHORES, x = 52.8, y = 30.6, n = L["Earthshatter Elemental"] } },
	},
	["Blaze Spirit"] = {
		cat = CONSTANTS.ITEM_CATEGORIES.DRAGONFLIGHT,
		type = CONSTANTS.ITEM_TYPES.PET,
		method = CONSTANTS.DETECTION_METHODS.USE,
		name = L["Blaze Spirit"],
		itemId = 201261,
		items = { 201298 },
		spellId = 374840,
		creatureId = 198272,
		sourceText = L["Collect Encaged Fiery Soul and wait 15min until it turns into Docile Fiery Soul, then open it for a chance at the pet."],
		chance = 50,
		coords = { { m = CONSTANTS.UIMAPIDS.THE_AZURE_SPAN, x = 79.4, y = 38.2, n = L["Fire Elemental"] } },
	},
	["Gale Spirit"] = {
		cat = CONSTANTS.ITEM_CATEGORIES.DRAGONFLIGHT,
		type = CONSTANTS.ITEM_TYPES.PET,
		method = CONSTANTS.DETECTION_METHODS.USE,
		name = L["Gale Spirit"],
		itemId = 201262,
		items = { 201296 },
		spellId = 374883,
		creatureId = 198273,
		sourceText = L["Collect Encaged Airy Soul and wait 15min until it turns into Docile Airy Soul, then open it for a chance at the pet."],
		chance = 50,
		coords = { { m = CONSTANTS.UIMAPIDS.OHN_AHRAN_PLAINS, x = 23.2, y = 37.6, n = L["Stormbound Colossus"] } },
	},
	["Tide Spirit"] = {
		cat = CONSTANTS.ITEM_CATEGORIES.DRAGONFLIGHT,
		type = CONSTANTS.ITEM_TYPES.PET,
		method = CONSTANTS.DETECTION_METHODS.USE,
		name = L["Tide Spirit"],
		itemId = 201265,
		items = { 201299 },
		spellId = 374751,
		creatureId = 198269,
		sourceText = L["Collect Encaged Frosty Soul and wait 15min until it turns into Docile Frosty Soul, then open it for a chance at the pet."],
		chance = 50,
		coords = { { m = CONSTANTS.UIMAPIDS.OHN_AHRAN_PLAINS, x = 55.2, y = 76.7, n = L["Force of the Springs"] } },
	},
	["Scruffles"] = {
		cat = CONSTANTS.ITEM_CATEGORIES.DRAGONFLIGHT,
		type = CONSTANTS.ITEM_TYPES.PET,
		method = CONSTANTS.DETECTION_METHODS.NPC,
		name = L["Scruffles"],
		npcs = { 200584 },
		itemId = 193364,
		spellId = 375047,
		chance = 25,
		creatureId = 189115,
		groupSize = 5,
		equalOdds = true,
		coords = { { m = CONSTANTS.UIMAPIDS.THE_FORBIDDEN_REACH, x = 58.6, y = 48.8, n = L["Vraken the Hunter"] } },
	},
	["Wakyn"] = {
		cat = CONSTANTS.ITEM_CATEGORIES.DRAGONFLIGHT,
		type = CONSTANTS.ITEM_TYPES.PET,
		method = CONSTANTS.DETECTION_METHODS.NPC,
		name = L["Wakyn"],
		npcs = { 200960 },
		itemId = 191930,
		spellId = 371594,
		chance = 20,
		creatureId = 188821,
		groupSize = 5,
		equalOdds = true,
		coords = { { m = CONSTANTS.UIMAPIDS.THE_FORBIDDEN_REACH, x = 45.9, y = 79.7, n = L["Warden Entrix"] } },
	},
	["Luvvy"] = {
		cat = CONSTANTS.ITEM_CATEGORIES.DRAGONFLIGHT,
		type = CONSTANTS.ITEM_TYPES.PET,
		method = CONSTANTS.DETECTION_METHODS.NPC,
		name = L["Luvvy"],
		npcs = { 200742 },
		itemId = 193235,
		spellId = 374895,
		chance = 25,
		creatureId = 189106,
		groupSize = 5,
		equalOdds = true,
		coords = { { m = CONSTANTS.UIMAPIDS.THE_FORBIDDEN_REACH, x = 55.8, y = 51.6, n = L["Luttrok"] } },
	},
	["Doomrubble"] = {
		cat = CONSTANTS.ITEM_CATEGORIES.DRAGONFLIGHT,
		type = CONSTANTS.ITEM_TYPES.PET,
		method = CONSTANTS.DETECTION_METHODS.USE,
		name = L["Doomrubble"],
		spellId = 418039,
		itemId = 208008,
		items = { 207583 },
		chance = 500,
		creatureId = 208634,
		sourceText = L["This item can also be purchased from a vendor."],
		coords = { { m = CONSTANTS.UIMAPIDS.THALDRASZUS } },
	},
	["Briarhorn Hatchling"] = {
		cat = CONSTANTS.ITEM_CATEGORIES.DRAGONFLIGHT,
		type = CONSTANTS.ITEM_TYPES.PET,
		method = CONSTANTS.DETECTION_METHODS.USE,
		name = L["Briarhorn Hatchling"],
		spellId = 418029,
		itemId = 208012,
		items = { 207583 },
		chance = 500,
		creatureId = 208624,
		sourceText = L["This item can also be purchased from a vendor."],
		coords = { { m = CONSTANTS.UIMAPIDS.THALDRASZUS } },
	},
	["Obsidian Warwhelp"] = {
		cat = CONSTANTS.ITEM_CATEGORIES.DRAGONFLIGHT,
		type = CONSTANTS.ITEM_TYPES.PET,
		method = CONSTANTS.DETECTION_METHODS.USE,
		name = L["Obsidian Warwhelp"],
		spellId = 418045,
		itemId = 208011,
		items = { 207583 },
		chance = 500,
		creatureId = 208637,
		sourceText = L["This item can also be purchased from a vendor."],
		coords = { { m = CONSTANTS.UIMAPIDS.THALDRASZUS } },
	},
	["Jeepers"] = {
		cat = CONSTANTS.ITEM_CATEGORIES.DRAGONFLIGHT,
		type = CONSTANTS.ITEM_TYPES.PET,
		method = CONSTANTS.DETECTION_METHODS.USE,
		name = L["Jeepers"],
		spellId = 418038,
		itemId = 208010,
		items = { 207583 },
		chance = 500,
		creatureId = 208631,
		sourceText = L["This item can also be purchased from a vendor."],
		coords = { { m = CONSTANTS.UIMAPIDS.THALDRASZUS } },
	},
	["Gill'dan"] = {
		cat = CONSTANTS.ITEM_CATEGORIES.DRAGONFLIGHT,
		type = CONSTANTS.ITEM_TYPES.PET,
		method = CONSTANTS.DETECTION_METHODS.USE,
		name = L["Gill'dan"],
		spellId = 418036,
		itemId = 208009,
		items = { 207583 },
		chance = 500,
		creatureId = 208630,
		sourceText = L["This item can also be purchased from a vendor."],
		coords = { { m = CONSTANTS.UIMAPIDS.THALDRASZUS } },
	},
	["Killbot 9000"] = {
		cat = CONSTANTS.ITEM_CATEGORIES.DRAGONFLIGHT,
		type = CONSTANTS.ITEM_TYPES.PET,
		method = CONSTANTS.DETECTION_METHODS.USE,
		name = L["Killbot 9000"],
		spellId = 418041,
		itemId = 208013,
		items = { 207583 },
		chance = 500,
		creatureId = 208636,
		sourceText = L["This item can also be purchased from a vendor."],
		coords = { { m = CONSTANTS.UIMAPIDS.THALDRASZUS } },
	},
	["N'Ruby"] = {
		cat = CONSTANTS.ITEM_CATEGORIES.DRAGONFLIGHT,
		type = CONSTANTS.ITEM_TYPES.PET,
		method = CONSTANTS.DETECTION_METHODS.USE,
		name = L["N'Ruby"],
		spellId = 418050,
		itemId = 208138,
		items = { 207583 },
		chance = 500,
		creatureId = 208639,
		sourceText = L["This item can also be purchased from a vendor."],
		coords = { { m = CONSTANTS.UIMAPIDS.THALDRASZUS } },
	},
	["Shaggy"] = {
		cat = CONSTANTS.ITEM_CATEGORIES.DRAGONFLIGHT,
		type = CONSTANTS.ITEM_TYPES.PET,
		method = CONSTANTS.DETECTION_METHODS.USE,
		name = L["Shaggy"],
		spellId = 371534,
		itemId = 191915,
		items = { 204383 },
		chance = 66,
		creatureId = 188709,
		coords = { { m = CONSTANTS.UIMAPIDS.THE_FORBIDDEN_REACH } },
	},
	["Echo of the Heights"] = {
		cat = CONSTANTS.ITEM_CATEGORIES.DRAGONFLIGHT,
		type = CONSTANTS.ITEM_TYPES.PET,
		method = CONSTANTS.DETECTION_METHODS.NPC,
		name = L["Echo of the Heights"],
		npcs = {
			203746,
			203744,
			203743,
			203745,
			203747,
			193967,
			201556,
			194119,
			193688,
			192696,
			191661,
			191658,
			193664,
			186724,
			191680,
			191654,
			186727,
			201549,
			186859,
			185357,
			192340,
			186728,
			197075,
			191507,
			201540,
			201550,
			201552,
			197119,
			197118,
			197124,
			192341,
			185168,
			186735,
			197135,
			191508,
			201558,
			196834,
			197169,
			206162,
			197129,
			197131,
			197138,
			201535,
			186594,
			196398,
			197088,
			192694,
			197128,
			197121,
			197126,
			190737,
			191898,
			186606,
			186609,
			191899,
			185353,
			186605,
			197132,
			197125,
			186607,
			186632,
			201537,
			196835,
			201538,
			201559,
			192703,
			198343,
			191129,
			193198,
			197120,
			194798,
			187306,
			187366,
			197122,
			191902,
			191940,
			184444,
			197134,
			185147,
			186600,
			197353,
			201555,
			186512,
			184453,
			184461,
			187867,
			194797,
			194912,
			195839,
			197130,
			201554,
			201557,
			191677,
			194120,
			186598,
			193522,
			190778,
			190780,
			190776,
			197123,
			192702,
			197142,
			190779,
			192699,
			187886,
			197356,
			197354,
			195815,
			186599,
			191901,
			186620,
			186627,
			192700,
			187599,
			187602,
			190995,
			187919,
			190738,
			192582,
			197133,
			187932,
			185350,
			197344,
			186239,
			196973,
			191678,
			201561,
			195836,
			201539,
			186602,
			192334,
			197076,
			187600,
			187813,
			196336,
			190996,
			185465,
			187923,
			195448,
			186604,
			203754,
			188044,
			203755,
			188009,
			187928,
			186612,
			186630,
			196972,
			191476,
			187868,
			188014,
			193244,
			207337,
			186628,
			186624,
			197139,
			203748,
			203753,
			196772,
			186783,
			190991,
			203756,
			203750,
			195837,
			203741,
			195814,
			186638,
			187889,
			199298,
			191479,
			191637,
			186626,
			186684,
			203740,
			186109,
			186792,
		},
		itemId = 200263,
		spellId = 389384,
		chance = 1000,
		creatureId = 189132,
		coords = {
			{ m = CONSTANTS.UIMAPIDS.THE_WAKING_SHORES },
			{ m = CONSTANTS.UIMAPIDS.OHN_AHRAN_PLAINS },
			{ m = CONSTANTS.UIMAPIDS.THE_AZURE_SPAN },
			{ m = CONSTANTS.UIMAPIDS.THALDRASZUS },
			{ m = CONSTANTS.UIMAPIDS.THE_PRIMALIST_FUTURE },
		},
	},
	["Echo of the Depths"] = {
		cat = CONSTANTS.ITEM_CATEGORIES.DRAGONFLIGHT,
		type = CONSTANTS.ITEM_TYPES.PET,
		method = CONSTANTS.DETECTION_METHODS.NPC,
		name = L["Echo of the Depths"],
		npcs = {
			203750,
			203752,
			203748,
			203747,
			197169,
			201540,
			192334,
			186859,
			191658,
			193688,
			197130,
			191507,
			186727,
			186728,
			196834,
			197129,
			187306,
			192340,
			197131,
			201538,
			201556,
			191654,
			197119,
			197118,
			197088,
			197132,
			197120,
			191680,
			195838,
			185357,
			185168,
			191898,
			197138,
			201537,
			195836,
			186602,
			192341,
			197125,
			197124,
			187366,
			197135,
			191508,
			185353,
			197121,
			192696,
			186724,
			201550,
			201561,
			201559,
			191902,
			197076,
			194119,
			197128,
			186735,
			197134,
			186609,
			201553,
			197122,
			193198,
			192699,
			186605,
			191661,
			197136,
			186612,
			201549,
			186594,
			186512,
			186627,
			192694,
			192703,
			195815,
			186599,
			186632,
			201555,
			197075,
			197123,
			187867,
			191129,
			197126,
			186607,
			190737,
			193664,
			195837,
			188009,
			201558,
			191476,
			191899,
			197140,
			184453,
			184444,
			184461,
			187919,
			197142,
			198343,
			187886,
			186606,
			195839,
			201554,
			201552,
			201539,
			194120,
			193522,
			190778,
			191679,
			194798,
			186600,
			187932,
			197354,
			194912,
			201557,
			186620,
			197902,
			203757,
			190780,
			187600,
			190776,
			187813,
			187599,
			192702,
			187602,
			190779,
			207337,
			194797,
			197133,
			185147,
			196772,
			197353,
			197344,
			201535,
			186630,
			196835,
			196398,
			185465,
			192700,
			196336,
			190996,
			190995,
			187868,
			190738,
			187923,
			193244,
			192582,
			186604,
			186783,
			187889,
			193776,
			191363,
			185350,
			193139,
			186598,
			196973,
			196972,
			191677,
			196193,
			195448,
			186628,
			186624,
			186626,
			203745,
			188044,
			203756,
			197356,
			203754,
			203753,
			203744,
			203743,
			203742,
			187928,
			186239,
			188014,
			199298,
			190991,
			191479,
			197139,
			186684,
			203739,
			186109,
		},
		itemId = 200260,
		spellId = 389378,
		chance = 1000,
		creatureId = 189130,
		coords = {
			{ m = CONSTANTS.UIMAPIDS.THE_WAKING_SHORES },
			{ m = CONSTANTS.UIMAPIDS.OHN_AHRAN_PLAINS },
			{ m = CONSTANTS.UIMAPIDS.THE_AZURE_SPAN },
			{ m = CONSTANTS.UIMAPIDS.THALDRASZUS },
			{ m = CONSTANTS.UIMAPIDS.THE_PRIMALIST_FUTURE },
		},
	},
	["Echo of the Inferno"] = {
		cat = CONSTANTS.ITEM_CATEGORIES.DRAGONFLIGHT,
		type = CONSTANTS.ITEM_TYPES.PET,
		method = CONSTANTS.DETECTION_METHODS.NPC,
		name = L["Echo of the Inferno"],
		npcs = {
			203753,
			203755,
			203756,
			203757,
			203754,
			186859,
			192696,
			191507,
			196834,
			201557,
			197169,
			186728,
			197122,
			197125,
			193664,
			201535,
			191476,
			193967,
			197124,
			192340,
			197135,
			191902,
			197076,
			185357,
			192341,
			185168,
			197121,
			197120,
			186724,
			191508,
			186727,
			201538,
			191899,
			197128,
			197119,
			197132,
			197118,
			186735,
			185147,
			191658,
			187306,
			197138,
			201552,
			197075,
			186627,
			192694,
			187366,
			186609,
			186632,
			201553,
			201540,
			201561,
			201559,
			194119,
			198343,
			191129,
			201554,
			201558,
			201556,
			191680,
			197142,
			186605,
			197126,
			186607,
			191661,
			201549,
			201550,
			193522,
			185353,
			187867,
			191654,
			190737,
			191898,
			186606,
			197344,
			197129,
			194912,
			193688,
			201555,
			197130,
			195836,
			184453,
			184461,
			193198,
			197134,
			186600,
			187928,
			186612,
			201539,
			186602,
			197140,
			184444,
			197123,
			192703,
			192699,
			197133,
			187889,
			197131,
			188009,
			195839,
			196835,
			191677,
			197087,
			190780,
			192700,
			186783,
			187932,
			196772,
			187886,
			197354,
			197356,
			201537,
			186620,
			186512,
			197902,
			190776,
			187813,
			192702,
			187602,
			187599,
			187919,
			190738,
			193244,
			192582,
			194797,
			186604,
			190991,
			197353,
			193776,
			191678,
			192334,
			187600,
			185465,
			190996,
			196336,
			190995,
			187868,
			190779,
			187923,
			195448,
			207337,
			203747,
			194798,
			203741,
			191363,
			195815,
			197136,
			191901,
			186594,
			196973,
			186628,
			188014,
			197139,
			186626,
			191637,
			203739,
			203744,
			203750,
			203745,
			186638,
			192371,
			186792,
			203743,
			186599,
			191672,
			185350,
			195837,
			199298,
			186624,
			186684,
			191479,
		},
		itemId = 200255,
		spellId = 389363,
		chance = 1000,
		creatureId = 189112,
		coords = {
			{ m = CONSTANTS.UIMAPIDS.THE_WAKING_SHORES },
			{ m = CONSTANTS.UIMAPIDS.OHN_AHRAN_PLAINS },
			{ m = CONSTANTS.UIMAPIDS.THE_AZURE_SPAN },
			{ m = CONSTANTS.UIMAPIDS.THALDRASZUS },
			{ m = CONSTANTS.UIMAPIDS.THE_PRIMALIST_FUTURE },
		},
	},
	["Echo of the Cave"] = {
		cat = CONSTANTS.ITEM_CATEGORIES.DRAGONFLIGHT,
		type = CONSTANTS.ITEM_TYPES.PET,
		method = CONSTANTS.DETECTION_METHODS.NPC,
		name = L["Echo of the Cave"],
		npcs = {
			203741,
			203739,
			203740,
			203742,
			197092,
			197091,
			197169,
			186724,
			191507,
			197075,
			191899,
			186727,
			187306,
			197135,
			186859,
			192696,
			187366,
			201537,
			197120,
			191661,
			201538,
			197088,
			185168,
			191508,
			186728,
			201539,
			192334,
			186608,
			185357,
			197119,
			192341,
			192340,
			191658,
			196834,
			197118,
			201555,
			196398,
			197076,
			194119,
			197121,
			191654,
			193198,
			186735,
			191898,
			195837,
			195839,
			186620,
			191680,
			197128,
			197125,
			197124,
			190737,
			188009,
			186632,
			196835,
			191677,
			197902,
			184453,
			185353,
			192694,
			198343,
			191129,
			186605,
			197132,
			185147,
			197126,
			197353,
			201553,
			201554,
			201535,
			195836,
			191902,
			187867,
			186607,
			186606,
			193664,
			197136,
			186609,
			191678,
			193688,
			201540,
			201561,
			201550,
			201558,
			186512,
			201559,
			201556,
			197140,
			184444,
			190776,
			184461,
			197123,
			197142,
			192699,
			197134,
			187932,
			187886,
			197138,
			197130,
			186612,
			197122,
			201552,
			194120,
			190778,
			197087,
			190780,
			187599,
			190779,
			192703,
			194798,
			197129,
			186599,
			201549,
			201557,
			186627,
			187600,
			187813,
			192700,
			192702,
			187602,
			187919,
			192582,
			194797,
			196772,
			186600,
			197344,
			195815,
			197131,
			187928,
			195814,
			186602,
			193152,
			196336,
			185465,
			190996,
			190995,
			187868,
			190738,
			187923,
			193244,
			207337,
			186604,
			197133,
			186783,
			190991,
			188044,
			194912,
			187889,
			191363,
			186239,
			185350,
			191901,
			186630,
			186594,
			196193,
			195448,
			186628,
			197139,
			186626,
			191637,
			203744,
			191479,
			186684,
			203748,
			203752,
			203754,
			203750,
			203747,
			203743,
			197356,
			186624,
			188014,
			199298,
			203753,
			186109,
			186792,
		},
		itemId = 200183,
		spellId = 389143,
		chance = 1000,
		creatureId = 192258,
		coords = {
			{ m = CONSTANTS.UIMAPIDS.THE_WAKING_SHORES },
			{ m = CONSTANTS.UIMAPIDS.OHN_AHRAN_PLAINS },
			{ m = CONSTANTS.UIMAPIDS.THE_AZURE_SPAN },
			{ m = CONSTANTS.UIMAPIDS.THALDRASZUS },
			{ m = CONSTANTS.UIMAPIDS.THE_PRIMALIST_FUTURE },
		},
	},
	["Ambre"] = {
		cat = CONSTANTS.ITEM_CATEGORIES.DRAGONFLIGHT,
		type = CONSTANTS.ITEM_TYPES.PET,
		method = CONSTANTS.DETECTION_METHODS.NPC,
		name = L["Ambre"],
		itemId = 205003,
		spellId = 407921,
		creatureId = 204221,
		chance = 50,
		npcs = {
			201673, -- Kretchenwrath
			203411, -- Shadeisethal
		},
		questId = 75467,
		coords = {
			{ m = CONSTANTS.UIMAPIDS.OHN_AHRAN_PLAINS, x = 75.6, y = 69.6, n = L["Kretchenwrath"] },
			{ m = CONSTANTS.UIMAPIDS.THE_AZURE_SPAN, x = 58.6, y = 31.8, n = L["Shadeisethal"] },
		},
	},
	["Blaise"] = {
		cat = CONSTANTS.ITEM_CATEGORIES.DRAGONFLIGHT,
		type = CONSTANTS.ITEM_TYPES.PET,
		method = CONSTANTS.DETECTION_METHODS.NPC,
		name = L["Blaise"],
		itemId = 205002,
		spellId = 407918,
		creatureId = 204217,
		chance = 50,
		npcs = {
			201673, -- Kretchenwrath
			203411, -- Shadeisethal
		},
		questId = 75467,
		coords = {
			{ m = CONSTANTS.UIMAPIDS.OHN_AHRAN_PLAINS, x = 75.6, y = 69.6, n = L["Kretchenwrath"] },
			{ m = CONSTANTS.UIMAPIDS.THE_AZURE_SPAN, x = 58.6, y = 31.8, n = L["Shadeisethal"] },
		},
	},
	["Ridged Shalewing"] = {
		cat = CONSTANTS.ITEM_CATEGORIES.DRAGONFLIGHT,
		type = CONSTANTS.ITEM_TYPES.PET,
		method = CONSTANTS.DETECTION_METHODS.NPC,
		name = L["Ridged Shalewing"],
		itemId = 205147,
		spellId = 408251,
		creatureId = 204339,
		chance = 20,
		questId = 75333,
		npcs = {
			203625, -- Karokta
		},
		coords = { { x = 42.20, y = 65.17, n = L["Karokta"], m = CONSTANTS.UIMAPIDS.ZARALEK_CAVERN } },
	},
	["Skaarn"] = {
		cat = CONSTANTS.ITEM_CATEGORIES.DRAGONFLIGHT,
		type = CONSTANTS.ITEM_TYPES.PET,
		method = CONSTANTS.DETECTION_METHODS.NPC,
		name = L["Skaarn"],
		itemId = 205152,
		spellId = 408264,
		creatureId = 204345,
		chance = 20,
		questId = 75266,
		npcs = {
			203462, -- Kob'rok
		},
		coords = { { x = 65.2, y = 55.8, n = L["Kob'rok"], m = CONSTANTS.UIMAPIDS.ZARALEK_CAVERN } },
	},
	["Aquapo"] = {
		cat = CONSTANTS.ITEM_CATEGORIES.DRAGONFLIGHT,
		type = CONSTANTS.ITEM_TYPES.PET,
		method = CONSTANTS.DETECTION_METHODS.NPC,
		name = L["Aquapo"],
		itemId = 205154,
		spellId = 408308,
		creatureId = 204359,
		chance = 20,
		questId = 75271,
		npcs = {
			203468, -- Aquifon
		},
		coords = { { x = 48.4, y = 75, n = L["Aquifon"], m = CONSTANTS.UIMAPIDS.ZARALEK_CAVERN } },
	},
	["Teardrop Moth"] = {
		cat = CONSTANTS.ITEM_CATEGORIES.DRAGONFLIGHT,
		type = CONSTANTS.ITEM_TYPES.PET,
		method = CONSTANTS.DETECTION_METHODS.NPC,
		name = L["Teardrop Moth"],
		itemId = 205159,
		spellId = 408317,
		creatureId = 204363,
		chance = 20,
		questId = 75297,
		npcs = {
			203593, -- Underlight Queen
		},
		coords = { { x = 58, y = 69.2, n = L["Underlight Queen"], m = CONSTANTS.UIMAPIDS.ZARALEK_CAVERN } },
	},
	["Devourer Lobstrok"] = {
		cat = CONSTANTS.ITEM_CATEGORIES.DRAGONFLIGHT,
		type = CONSTANTS.ITEM_TYPES.PET,
		method = CONSTANTS.DETECTION_METHODS.USE,
		name = L["Devourer Lobstrok"],
		itemId = 205026,
		spellId = 408039,
		creatureId = 204269,
		items = {
			205367, -- Indebted Researcher's Gift
			205368, -- Thankful Researcher's Gift
			205369, -- Appreciative Researcher's Gift
			205374, -- Thankful Researcher's Scrounged Goods
			205372, -- Indebted Researcher's Scrounged Goods
			205371, -- Appreciative Researcher's Scrounged Goods
			205370, -- Researcher's Gift
			205373, -- Researcher's Scrounged Goods
		},
		chance = 7, -- Average over all the containers (not exactly accurate...)
		coords = { { m = CONSTANTS.UIMAPIDS.ZARALEK_CAVERN } },
	},
	["Bunbo"] = {
		cat = CONSTANTS.ITEM_CATEGORIES.DRAGONFLIGHT,
		type = CONSTANTS.ITEM_TYPES.PET,
		method = CONSTANTS.DETECTION_METHODS.SPECIAL,
		name = L["Bunbo"],
		itemId = 193363,
		spellId = 375045,
		creatureId = 189113,
		chance = 20,
		coords = { { m = CONSTANTS.UIMAPIDS.THE_FORBIDDEN_REACH, x = 28.8, y = 52.6 } },
	},
	["Berylmane"] = {
		cat = CONSTANTS.ITEM_CATEGORIES.DRAGONFLIGHT,
		type = CONSTANTS.ITEM_TYPES.PET,
		method = CONSTANTS.DETECTION_METHODS.SPECIAL,
		name = L["Berylmane"],
		itemId = 193854,
		spellId = 375553,
		creatureId = 191287,
		chance = 20,
		coords = { { m = CONSTANTS.UIMAPIDS.THE_FORBIDDEN_REACH, x = 28.8, y = 52.6 } },
	},
	["Brightfeather"] = {
		cat = CONSTANTS.ITEM_CATEGORIES.DRAGONFLIGHT,
		type = CONSTANTS.ITEM_TYPES.PET,
		method = CONSTANTS.DETECTION_METHODS.SPECIAL,
		name = L["Brightfeather"],
		itemId = 193835,
		spellId = 375448,
		creatureId = 189158,
		chance = 20,
		coords = { { m = CONSTANTS.UIMAPIDS.THE_FORBIDDEN_REACH, x = 28.8, y = 52.6 } },
	},
	["Emmah"] = {
		cat = CONSTANTS.ITEM_CATEGORIES.DRAGONFLIGHT,
		type = CONSTANTS.ITEM_TYPES.PET,
		method = CONSTANTS.DETECTION_METHODS.SPECIAL,
		name = L["Emmah"],
		zones = { "2151" },
		spellId = 375511,
		itemId = 193853,
		creatureId = 189694,
		questId = 75488,
		sourceText = L["Fished from Disgusting Vat located within the Zskera Vaults"],
		requiresPool = true,
		coords = {
			{ m = CONSTANTS.UIMAPIDS.THE_FORBIDDEN_REACH, x = 29.2, y = 53.0, n = L["Entrance to Zskera Vaults"] },
		},
	},
	["Brul"] = {
		cat = CONSTANTS.ITEM_CATEGORIES.DRAGONFLIGHT,
		type = CONSTANTS.ITEM_TYPES.PET,
		method = CONSTANTS.DETECTION_METHODS.SPECIAL,
		name = L["Brul"],
		spellId = 408110,
		itemId = 205114,
		creatureId = 204303,
		chance = 35,
		sourceText = format(
			L["Use %s before opening %s, which spawns after %s is defeated."],
			L["Rocks on the Rocks"],
			L["Chest of Massive Gains"],
			L["Brullo the Strong"]
		),
		coords = { { m = CONSTANTS.UIMAPIDS.ZARALEK_CAVERN, x = 41.5, y = 86.2, n = L["Chest of Massive Gains"] } },
	},
}

Rarity.ItemDB.MergeItems(Rarity.ItemDB.pets, dragonflightPets)
