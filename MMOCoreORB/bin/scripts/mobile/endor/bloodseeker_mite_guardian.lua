bloodseeker_mite_guardian = Creature:new {
	objectName = "@mob/creature_names:bloodseeker_mite_guardian",
	socialGroup = "bloodseeker",
	faction = "",
	mobType = MOB_CARNIVORE,
	level = 38,
	chanceHit = 0.4,
	damageMin = 330,
	damageMax = 370,
	baseXp = 3733,
	baseHAM = 8400,
	baseHAMmax = 10200,
	armor = 0,
	resists = {160,140,-1,170,-1,170,170,20,-1},
	meatType = "meat_insect",
	meatAmount = 15,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0,
	ferocity = 0,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/bloodseeker_mite.iff"},
	hues = { 24, 25, 26, 27, 28, 29, 30, 31 },
	scale = 1.15,
	lootGroups = {},

	-- Primary and secondary weapon should be different types (rifle/carbine, carbine/pistol, rifle/unarmed, etc)
	-- Unarmed should be put on secondary unless the mobile doesn't use weapons, in which case "unarmed" should be put primary and "none" as secondary
	primaryWeapon = "object/weapon/ranged/creature/creature_spit_large_red.iff",
	secondaryWeapon = "unarmed",
	conversationTemplate = "",

	-- primaryAttacks and secondaryAttacks should be separate skill groups specific to the weapon type listed in primaryWeapon and secondaryWeapon
	-- Use merge() to merge groups in creatureskills.lua together. If a weapon is set to "none", set the attacks variable to empty brackets
	primaryAttacks = { {"stunattack",""}, {"strongdisease",""} },
	secondaryAttacks = { {"stunattack",""}, {"strongdisease",""} }
}

CreatureTemplates:addCreatureTemplate(bloodseeker_mite_guardian, "bloodseeker_mite_guardian")
