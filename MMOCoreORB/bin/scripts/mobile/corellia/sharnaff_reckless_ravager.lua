sharnaff_reckless_ravager = Creature:new {
	objectName = "@mob/creature_names:sharnaff_reckless_ravager",
	socialGroup = "sharnaff",
	faction = "",
	mobType = MOB_HERBIVORE,
	level = 34,
	chanceHit = 0.41,
	damageMin = 315,
	damageMax = 340,
	baseXp = 3460,
	baseHAM = 8800,
	baseHAMmax = 10800,
	armor = 0,
	resists = {115,115,20,120,120,120,120,120,-1},
	meatType = "meat_carnivore",
	meatAmount = 450,
	hideType = "hide_scaley",
	hideAmount = 300,
	boneType = "bone_mammal",
	boneAmount = 180,
	milk = 0,
	tamingChance = 0.05,
	ferocity = 5,
	pvpBitmask = ATTACKABLE,
	creatureBitmask = PACK + KILLER,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/sharnaff_hue.iff"},
	hues = { 8, 9, 10, 11, 12, 13, 14, 15 },
	controlDeviceTemplate = "object/intangible/pet/sharnaff_hue.iff",
	lootGroups = {
		{
			groups = {
				{group = "sharnaff_common", chance = 10000000}
			},
			lootChance = 1680000
		}
	},

	-- Primary and secondary weapon should be different types (rifle/carbine, carbine/pistol, rifle/unarmed, etc)
	-- Unarmed should be put on secondary unless the mobile doesn't use weapons, in which case "unarmed" should be put primary and "none" as secondary
	primaryWeapon = "unarmed",
	secondaryWeapon = "none",
	conversationTemplate = "",

	-- primaryAttacks and secondaryAttacks should be separate skill groups specific to the weapon type listed in primaryWeapon and secondaryWeapon
	-- Use merge() to merge groups in creatureskills.lua together. If a weapon is set to "none", set the attacks variable to empty brackets
	primaryAttacks = { {"dizzyattack",""}, {"knockdownattack",""} },
	secondaryAttacks = { }
}

CreatureTemplates:addCreatureTemplate(sharnaff_reckless_ravager, "sharnaff_reckless_ravager")
