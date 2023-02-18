
lsConf = {
	["confVersion"] = 1,
	["interruptExceptionCriteria"] = {
		[1] = "-ifTargetIsCasting=^Shoot$",
		[2] = "# The following almost always works great, but",
		[3] = "# Reportedly some mobs in Winterspring may have",
		[4] = "# 0 mana but can still cast.",
		[5] = "-ifTarget=0mana-ifTargetNPC",
		[6] = "# example of possibile options",
		[7] = "#-ifTargetClass=Warrior",
		[8] = "# the following is an example for a weird boss that",
		[9] = "# behaves differently under 50% hp (no kicks)",
		[10] = "#-ifTargetNamed=Some%sMajor%sBoss-ifTarget<50%hp",
	},
	["perPlayer"] = {
		["Turtle WoW"] = {
			["Cantherle"] = {
				["clearHistoryAfterCombat"] = false,
				["initiateAutoAttack"] = true,
				["showTargetCasts"] = true,
				["defaultForm"] = "BattleCommon",
				["minionIsVisible"] = true,
				["showReasonForTargetCCd"] = true,
				["BoundFormsTable"] = {
				},
				["deathMinionHidesOutOfCombat"] = false,
				["loadedDefaultForms"] = true,
				["debug"] = false,
				["healthHistorySize"] = 5,
				["Immunities"] = {
					["Intimidating Shout"] = {
						["Remote-Controlled Golem"] = true,
						["Fenektis the Deceiver"] = true,
						["Stitches"] = true,
						["Grovetender Engryss"] = true,
						["Arcane Nullifier X-21"] = true,
						["Hamhock"] = true,
						["Haunted Servitor"] = true,
						["Mechanized Sentry"] = true,
						["Disturbed Spirit"] = true,
						["Overlord Ramtusk"] = true,
						["Dextren Ward"] = true,
						["Gilnid"] = true,
						["Mr. Smite"] = true,
					},
					["Hamstring"] = {
						["Charlga Razorflank"] = true,
					},
					["Shield Bash"] = {
						["Charlga Razorflank"] = true,
					},
					["Disarm"] = {
						["Haunted Servitor"] = true,
					},
					["Rend"] = {
						["Deviate Shambler"] = true,
						["Peacekeeper Security Suit"] = true,
						["Irradiated Horror"] = true,
						["Mechanized Sentry"] = true,
						["Stone Golem"] = true,
						["Befouled Water Elemental"] = true,
						["Compact Harvest Reaper"] = true,
						["Thundering Exile"] = true,
						["Verdan the Everliving"] = true,
						["Crowd Pummeler 9-60"] = true,
						["Mechano-Flamewalker"] = true,
						["Mechano-Frostwalker"] = true,
						["Burning Ravager"] = true,
						["Remote-Controlled Golem"] = true,
						["Deranged Ancient"] = true,
						["Mekgineer Thermaplugg"] = true,
						["Ambassador Infernus"] = true,
						["Thundering Boulderkin"] = true,
						["Burning Destroyer"] = true,
						["Withervine Mire Beast"] = true,
						["Cresting Exile"] = true,
						["Twisted Ancient"] = true,
						["Glade Creeper"] = true,
						["Arcane Nullifier X-21"] = true,
						["Sneed's Shredder"] = true,
						["Haunted Servitor"] = true,
						["Apprentice Training Dummy"] = true,
						["Burning Exile"] = true,
						["Mechanized Guardian"] = true,
						["Viscous Fallout"] = true,
						["Electrocutioner 6000"] = true,
						["Cyclonian"] = true,
					},
					["Charge Stun"] = {
						["Greater Rock Elemental"] = true,
					},
					["Frost Blast"] = {
						["Cresting Exile"] = true,
					},
					["Overpower"] = {
						["Charlga Razorflank"] = true,
					},
				},
				["forms"] = {
					["ThunderClap"] = {
						[1] = "callForm=BattleCommon",
						[2] = "# Thunder Clap 20 rage",
						[3] = "callForm=ThunderClapSub-ifPlayer>45rage-ifNotInCooldown=thunderClap-ifNotTargetHasDebuff=thunderClap-ifNotStance=berserk",
						[4] = "callForm=SweepingStrikes",
					},
					["PummelShieldBash"] = {
						[1] = "# Both Pummel & Shield Bash take 10 rage",
						[2] = "# So just check you have necessary rage before calling this form",
						[3] = "#",
						[4] = "# Because of Whirlwind, we prefer Berserker stance & pummel",
						[5] = "#",
						[6] = "# We will try to avoid 2H vs shield swaps triggered here as the",
						[7] = "# priority",
						[8] = "#",
						[9] = "berserk-echo=Berserk for Pummel!-ifNotStance=berserk-ifEquipped=Whirlwind Axe-ifNotLastAction=berserk-ifPlayer>10%hp",
						[10] = "#",
						[11] = "# Pummel 10 rage 10s cooldown requires Berserker",
						[12] = "#",
						[13] = "pummel-sayInSay=Pummel!-ifStance=berserk-ifNotInCooldown=pummel-ifNotLastAction=pummel-ifNotTargetImmune=pummel",
						[14] = "#",
						[15] = "# Shield Bash 10 rage 12s cooldown Not berserker stance",
						[16] = "#",
						[17] = "callForm=EquipShield-ifNotStance=berserk-ifNotInCooldown=shieldBash-ifNotTargetImmune=shieldBash-ifPlayer<10%hp",
						[18] = "defensive-echo=Defensive for Shield Bash!-ifStance=berserk-ifNotLastAction=defensive-ifNotInCooldown=shieldBash-ifNotTargetImmune=shieldBash-ifPlayer<10%hp",
						[19] = "# Shield Bash has 12 second cooldown",
						[20] = "shieldBash-sayInSay=Shield Bash!-ifNotStance=berserk-ifNotInCooldown=shieldBash-ifNotLastAction=shieldBash-ifNotTargetImmune=shieldBash-ifEquipped=Salbac Shield",
					},
					["Cleave"] = {
						[1] = "callForm=BattleCommon",
						[2] = "#",
						[3] = "# 30 rage 30 sec cooldown but high priority",
						[4] = "#",
						[5] = "battle-echo=Battle stance for Sweeping Strikes!-ifStance=defensive-ifPlayer>30%hp-ifPlayer>25rage-ifNotInCooldown=sweepingStrikes",
						[6] = "sweepingStrikes-echo=Sweeping Strikes!-ifStance=battle-ifPlayer>30rage-ifNotInCooldown=sweepingStrikes",
						[7] = "#",
						[8] = "# Cleave 20 rage",
						[9] = "#",
						[10] = "cleave-echo=Cleave!-ifPlayer>45rage-ifPlayerHasBuff=battleShout",
					},
					["Execute"] = {
						[1] = "battle-echo=Battle Stance for Execute!-ifNotStance=battle",
						[2] = "execute-sayInSay=Execute!",
					},
					["DrinkHealingPotion"] = {
						[1] = "use=Superior Healing Potion-sayInSay=Superior Healing Potion!-ifNotItemInCooldown=Superior Healing Potion",
						[2] = "use=Greater Healing Potion-sayInSay=Greater Healing Potion!-ifNotItemInCooldown=Greater Healing Potion",
						[3] = "use=Healing Potion-sayInSay=Healing Potion!-ifNotItemInCooldown=Healing Potion",
					},
					["ThunderClapSub"] = {
						[1] = "thunderClap-echo=Thunder Clap!",
					},
					["BuffCheck"] = {
						[1] = "sayInSay=Please Blessing of Might-ifNotPlayerHasBuff=blessMight-ifNotLastAction=say",
						[2] = "sayInSay=Please Thorns-ifNotPlayerHasBuff=thorns-ifNotLastAction=say",
						[3] = "sayInSay=Please Mark of the Wild-ifNotPlayerHasBuff=motw-ifNotLastAction=say",
					},
					["Shoot"] = {
						[1] = "gun",
					},
					["OffensiveMulti"] = {
						[1] = "autoAttack",
						[2] = "#",
						[3] = "# Berserker Rage 30s cooldown",
						[4] = "#",
						[5] = "callForm=BerserkerRage-ifPlayerIs=Feared-ifNotLastAction=berserkerRage-ifNotInCooldown=berserkerRage",
						[6] = "callForm=BerserkerRage-ifPlayerIs=Incapacitated-ifNotLastAction=berserkerRage-ifNotInCooldown=berserkerRage",
						[7] = "#",
						[8] = "# Bandage if you just did Intimidating Shout",
						[9] = "#",
						[10] = "callForm=Bandage-ifLastAction=intimidatingShout-ifPlayer<1351hp-ifNotPlayerHasDebuff=recentlyBandaged",
						[11] = "#",
						[12] = "# Lesser Healthstone",
						[13] = "#",
						[14] = "use=Lesser Healthstone-sayInSay=Lesser Healthstone!-ifInCombat-ifPlayer<10%hp-ifNotItemInCooldown=Lesser Healthstone",
						[15] = "#",
						[16] = "# Drink healing potion",
						[17] = "#",
						[18] = "callForm=DrinkHealingPotion-ifInCombat-ifPlayer<10%hp",
						[19] = "#",
						[20] = "# Shield Wall",
						[21] = "#",
						[22] = "shieldWall-sayInSay=Shield Wall!-ifPlayer<15%hp-ifStance=defensive-ifNotInCooldown=shieldWall-ifEquipped=Salbac Shield",
						[23] = "#",
						[24] = "# Bloodrage 0 rage 1 min cooldown",
						[25] = "#",
						[26] = "bloodrage-echo=Bloodrage!-ifNotInCooldown=bloodrage-ifNotPlayerHasBuff=bloodrage-ifPlayer>232hp-ifPlayer>10%hp-ifNotLastAction=bloodrage",
						[27] = "#",
						[28] = "#Intimidating Shout 25 rage 3 min cooldown",
						[29] = "#",
						[30] = "intimidatingShout-sayInSay=Intimidating Shout!-ifNotInCooldown=intimidatingShout-ifPlayer<10%hp-ifPlayer>25rage-ifNotLastAction=intimidatingShout",
						[31] = "#",
						[32] = "# Pummel 10 rage 10s cooldown requires Berserker",
						[33] = "#",
						[34] = "berserk-echo=Berserk for Pummel!-ifNotStance=berserk-ifNotLastAction=berserk-ifTargetIsCasting-ifNotTargetIs=Stunned-ifNotInCooldown=pummel-ifNotTargetImmune=pummel",
						[35] = "pummel-sayInSay=Pummel!-ifStance=berserk-ifNotInCooldown=pummel-ifNotLastAction=pummel-ifNotTargetImmune=pummel-ifTargetIsCasting-ifNotTargetIs=Stunned",
						[36] = "#",
						[37] = "#Overpower 5 rage 5s cooldown",
						[38] = "#",
						[39] = "battle-ifPlayer<25rage-ifNotStance=battle-ifTargetDodged-ifNotInCooldown=overpower-ifNotLastAction=battle",
						[40] = "overpower-ifPlayer>5rage-ifNotInCooldown=overpower-ifTargetDodged-ifNotLastAction=overpower",
						[41] = "#",
						[42] = "# Taunt 0 rage 10 sec cooldown",
						[43] = "#",
						[44] = "defensive-echo=Defensive for Taunt!-ifNotStance=defensive-ifPlayer<25rage-ifNotTargetOfTarget-ifTargetHasTarget-ifNotLastAction=defensive-ifNotInCooldown=taunt",
						[45] = "taunt-sayInSay=Taunt!-ifStance=defensive-ifNotInCooldown=taunt-ifNotLastAction=taunt-ifNotTargetOfTarget-ifTargetHasTarget",
						[46] = "#",
						[47] = "# Mocking Blow 10 rage 2min cooldown",
						[48] = "#",
						[49] = "mockingBlow-sayInSay=Mocking Blow!-ifStance=battle-ifPlayer>10rage-ifNotInCooldown=mockingBlow-ifNotLastAction=mockingBlow-ifNotTargetOfTarget-ifTargetHasTarget",
						[50] = "#",
						[51] = "# Challenging Shout 5 rage 10 min cooldown",
						[52] = "#",
						[53] = "challengingShout-sayInSay=Challenging Shout!-ifNotInCooldown=challengingShout-ifPlayer>5rage-ifNotLastAction=challengingShout-ifNotTargetOfTarget-ifTargetHasTarget",
						[54] = "#",
						[55] = "# Taunt 0 rage 10 sec cooldown",
						[56] = "#",
						[57] = "defensive-echo=Defensive for Taunt!-ifNotStance=defensive-ifNotTargetOfTarget-ifTargetHasTarget-ifNotLastAction=defensive-ifNotInCooldown=taunt",
						[58] = "taunt-sayInSay=Taunt!-ifStance=defensive-ifNotInCooldown=taunt-ifNotLastAction=taunt-ifNotTargetOfTarget-ifTargetHasTarget",
						[59] = "#",
						[60] = "# Berserker Rage 0 rage 30s cooldown",
						[61] = "#",
						[62] = "berserk-echo=Berserker Stance for Berserker Rage-ifNotStance=berserk-ifNotInCooldown=berserkerRage",
						[63] = "berserkerRage-ifNotInCooldown=berserkerRage",
						[64] = "#",
						[65] = "# Battle Shout 10 rage 2 min",
						[66] = "#",
						[67] = "battleShout-echo=Battle Shout!-ifPlayer>10rage-ifNotPlayerHasBuff=battleShout-ifNotLastAction=battleShout",
						[68] = "#",
						[69] = "# Hamstring 10 rage No cooldown",
						[70] = "#",
						[71] = "callForm=Hamstring-ifPlayer>10rage-ifTargetType=Humanoid-ifTarget<50%hp-ifNotTargetHasDebuff=hamstring-ifNotTargetHasDebuff=judgeJustice-ifNotTargetImmune=hamstring",
						[72] = "callForm=Hamstring-ifPlayer>10rage-ifTargetType=Humanoid-ifTimeToDeath<15s-ifNotTargetHasDebuff=hamstring-ifNotTargetHasDebuff=judgeJustice-ifNotTargetImmune=hamstring",
						[73] = "#",
						[74] = "# Whirlwind",
						[75] = "# Let's switch to berserk regardless at this point; want to build",
						[76] = "# rage in Berserk...",
						[77] = "#",
						[78] = "berserk-echo=Berserk for Whirlwind-ifNotStance=berserk-ifNotLastAction=berserk",
						[79] = "whirlwind-echo=Whirlwind-ifPlayer>25rage",
						[80] = "#",
						[81] = "# Revenge 5 rage 5s cooldown",
						[82] = "#",
						[83] = "defensive-echo=Defensive for Revenge!-ifNotStance=defensive-ifPlayer<25rage-ifNotInCooldown=revenge-ifTargetBlocked-ifNotLastAction=defensive",
						[84] = "revenge-sayInSay=Revenge!-ifStance=defensive-ifPlayer>5rage-ifNotInCooldown=revenge-ifTargetBlocked-ifNotLastAction=revenge",
						[85] = "defensive-echo=Defensive for Revenge!-ifNotStance=defensive-ifPlayer<25rage-ifNotInCooldown=revenge-ifTargetParried-ifNotLastAction=defensive",
						[86] = "revenge-sayInSay=Revenge!-ifStance=defensive-ifPlayer>5rage-ifNotInCooldown=revenge-ifTargetParried-ifNotLastAction=revenge",
						[87] = "#",
						[88] = "# Rend 10 rage 18s duration",
						[89] = "#",
						[90] = "rend-echo=Rend!-ifPlayer>35rage-ifNotStance=berserk-ifNotTargetHasDebuff=rend-ifNotTargetImmune=rend-ifTimeToDeath>18s",
						[91] = "#",
						[92] = "# Demoralizing Shout 10 rage",
						[93] = "#",
						[94] = "demoShout-sayInSay=Demoralizing Shout!-ifPlayer>35rage-ifNotTargetHasDebuff=demoShout-ifNotLastAction=demoShout",
						[95] = "#",
						[96] = "# Sunder Armor 15 rage",
						[97] = "#",
						[98] = "sunder-echo=Sunder Armor!-ifPlayer>40rage-ifTargetHasDebuff<5=sunder",
						[99] = "#",
						[100] = "# Cleave 20 rage",
						[101] = "#",
						[102] = "cleave-echo=Heroic Strike!-ifPlayer>40rage",
					},
					["SweepingStrikes"] = {
						[1] = "#",
						[2] = "# 30 rage 30 sec cooldown but high priority",
						[3] = "#",
						[4] = "# Battle Stance",
						[5] = "#",
						[6] = "battle-echo=Battle stance for Sweeping Strikes!-ifStance=defensive-ifPlayer>30%hp-ifPlayer>25rage-ifNotInCooldown=sweepingStrikes-ifNotLastAction=battle",
						[7] = "#",
						[8] = "# Sweeping Strikes",
						[9] = "#",
						[10] = "sweepingStrikes-echo=Sweeping Strikes!-ifStance=battle-ifPlayer>30rage-ifNotInCooldown=sweepingStrikes-ifNotLastAction=sweepingStrikes",
					},
					["Overpower"] = {
						[1] = "battle-echo=Battle Stance for Overpower!-ifStance=defensive-ifNotLastAction=battle",
						[2] = "battle-echo=Battle Stance for Overpower!-ifStance=berserk-ifPlayer<25rage-ifNotLastAction=battle",
						[3] = "overpower-sayInSay=Overpower-ifNotLastAction=overpower!",
					},
					["EquipShield"] = {
						[1] = "# If holding two-handed weapon, and try to equip shield, it will fail.",
						[2] = "# Must first equip one-handed weapon, then can equip shield.",
						[3] = "equipMainHand=Dwarf Captain's Sword-ifNotEquipped=Dwarf Captain's Sword",
						[4] = "equipOffHand=Salbac Shield-echo=Equipping shield-ifNotEquipped=Salbac Shield",
					},
					["EquipTwoHandWeapon"] = {
						[1] = "equipMainHand=Whirlwind Axe-echo=Equipping 2 hander-ifNotEquipped=Whirlwind Axe",
					},
					["BattleCommon"] = {
						[1] = "autoAttack",
						[2] = "#",
						[3] = "# Berserker Rage 30s cooldown",
						[4] = "#",
						[5] = "callForm=BerserkerRage-ifPlayerIs=Feared-ifNotLastAction=berserkerRage-ifNotInCooldown=berserkerRage",
						[6] = "callForm=BerserkerRage-ifPlayerIs=Incapacitated-ifNotLastAction=berserkerRage-ifNotInCooldown=berserkerRage",
						[7] = "#",
						[8] = "# Lesser Healthstone",
						[9] = "#",
						[10] = "use=Lesser Healthstone-sayInSay=Lesser Healthstone!-ifInCombat-ifPlayer<10%hp-ifNotItemInCooldown=Lesser Healthstone",
						[11] = "#",
						[12] = "# Drink healing potion",
						[13] = "#",
						[14] = "callForm=DrinkHealingPotion-ifInCombat-ifPlayer<10%hp",
						[15] = "#",
						[16] = "#Shield Wall: 0 rage 30 min cooldown",
						[17] = "#",
						[18] = "callForm=ShieldWall-ifNotInCooldown=shieldWall-ifPlayer<15%hp-ifNotLastAction=shieldWall",
						[19] = "#",
						[20] = "#Reserve rage potions to pull off Intimidating Shouts",
						[21] = "#",
						[22] = "callForm=DrinkRagePotion-ifPlayer<10%hp-ifPlayer<25rage-ifNotItemInCooldown=Great Rage Potion",
						[23] = "#",
						[24] = "#Intimidating Shout 25 rage 3 min cooldown",
						[25] = "#",
						[26] = "intimidatingShout-sayInSay=Intimidating Shout!-ifNotInCooldown=intimidatingShout-ifPlayer<10%hp-ifPlayer>25rage-ifNotLastAction=intimidatingShout",
						[27] = "#",
						[28] = "# Bandage if you just did Intimidating Shout",
						[29] = "#",
						[30] = "callForm=Bandage-ifLastAction=intimidatingShout-ifPlayer<1351hp-ifNotPlayerHasDebuff=recentlyBandaged",
						[31] = "#",
						[32] = "#Retaliation 0 rage 30min cooldown",
						[33] = "#",
						[34] = "callForm=Retaliation-ifNotInCooldown=retaliation-ifPlayer<20%hp-ifItemInCooldown=Greater Healing Potion-ifInCooldown=shieldWall-ifNotPlayerHasBuff=shieldWall-ifNotLastAction=retaliation",
						[35] = "#",
						[36] = "# Equip 2H if just did Retaliation",
						[37] = "#",
						[38] = "callForm=EquipTwoHandWeapon-ifPlayerHasBuff=retaliation",
						[39] = "stopAll-ifTargetIs=CCd",
						[40] = "#",
						[41] = "# Execute 15 rage",
						[42] = "#",
						[43] = "callForm=DrinkRagePotion-ifTarget<20%hp-ifPlayer<15rage-ifTargetBoss",
						[44] = "callForm=Execute-ifTarget<20%hp-ifPlayer>15rage-ifTargetBoss",
						[45] = "#",
						[46] = "# Pummel / Shield Bash both cost 10 rage",
						[47] = "#",
						[48] = "#callForm=DrinkRagePotion-ifNotInCooldown=shieldBash-ifTargetIsCasting-ifNotTargetIs=Stunned-ifPlayer<10rage",
						[49] = "callForm=PummelShieldBash-ifTargetIsCasting-ifNotTargetIs=Stunned-ifPlayer>10rage",
						[50] = "#callForm=ShieldBash-ifNotInCooldown=shieldBash-ifTargetIsCasting=Sleep,Druid's Slumber-ifNotTargetIs=Stunned-ifPlayer>10rage",
						[51] = "#",
						[52] = "#Overpower 5 rage 5s cooldown",
						[53] = "#",
						[54] = "callForm=DrinkRagePotion-ifPlayer<5rage-ifNotInCooldown=overpower-ifTargetDodged-ifNotLastAction=overpower",
						[55] = "callForm=Overpower-ifPlayer>5rage-ifNotInCooldown=overpower-ifTargetDodged-ifNotLastAction=overpower",
						[56] = "#",
						[57] = "# Revenge 5 rage 5s cooldown",
						[58] = "#",
						[59] = "callForm=Revenge-ifStance=defensive-ifPlayer>5rage-ifNotInCooldown=revenge-ifTargetBlocked-ifNotLastAction=revenge",
						[60] = "callForm=Revenge-ifStance=defensive-ifPlayer>5rage-ifNotInCooldown=revenge-ifTargetParried-ifNotLastAction=revenge",
						[61] = "#",
						[62] = "# Mocking Blow 10 rage 2 min cooldown, Taunt 0 rage",
						[63] = "#",
						[64] = "callForm=MockingBlowTaunt-ifNotTargetOfTarget-ifTargetHasTarget",
						[65] = "#",
						[66] = "# Whirlwind 25 rage 10 sec cooldown",
						[67] = "#",
						[68] = "callForm=Whirlwind-ifStance=defensive-ifPlayer>30%hp-ifNotInCooldown=whirlwind-ifPlayer>25rage-ifNotLastAction=whirlwind",
						[69] = "callForm=Whirlwind-ifNotStance=defensive-ifPlayer>20%hp-ifNotInCooldown=whirlwind-ifPlayer>25rage-ifNotLastAction=whirlwind",
						[70] = "#",
						[71] = "# Hamstring 10 rage No cooldown",
						[72] = "#",
						[73] = "callForm=DrinkRagePotion-ifPlayer<10rage-ifTargetType=Humanoid-ifTarget<50%hp-ifNotTargetHasDebuff=hamstring-ifNotTargetHasDebuff=judgeJustice-ifNotTargetImmune=hamstring",
						[74] = "callForm=Hamstring-ifPlayer>10rage-ifTargetType=Humanoid-ifTarget<50%hp-ifNotTargetHasDebuff=hamstring-ifNotTargetHasDebuff=judgeJustice-ifNotTargetImmune=hamstring",
						[75] = "callForm=DrinkRagePotion-ifPlayer<10rage-ifTargetType=Humanoid-ifNotTargetHasDebuff=hamstring-ifNotTargetHasDebuff=judgeJustice-ifNotTargetImmune=hamstring-ifTimeToDeath<15s",
						[76] = "callForm=Hamstring-ifPlayer>10rage-ifTargetType=Humanoid--ifNotTargetHasDebuff=hamstring-ifNotTargetHasDebuff=judgeJustice-ifNotTargetImmune=hamstring-ifTimeToDeath<15s",
						[77] = "#",
						[78] = "# Bloodrage 0 rage 1 min cooldown",
						[79] = "#",
						[80] = "bloodrage-echo=Bloodrage!-ifNotInCooldown=bloodrage-ifNotPlayerHasBuff=bloodrage-ifPlayer>232hp-ifPlayer>10%hp-ifNotLastAction=bloodrage",
						[81] = "#",
						[82] = "# Shield Block 10 rage 5s cooldown",
						[83] = "#",
						[84] = "callForm=ShieldBlock-ifPlayer>10rage-ifNotInCooldown=shieldBlock-ifPlayer<20%hp-ifNotPlayerHasBuff=shieldBlock-ifNotLastAction=shieldBlock",
						[85] = "callForm=ShieldBlock-ifStance=defensive-ifPlayer>35rage-ifNotInCooldown=shieldBlock-ifPlayer<50%hp-ifNotPlayerHasBuff=shieldBlock-ifNotLastAction=shieldBlock",
						[86] = "#",
						[87] = "# Battle Shout 10 rage 2 min.  Alow recasting when almost out",
						[88] = "#",
						[89] = "battleShout-echo=Battle Shout!-ifPlayer>10rage-ifNotPlayerHasBuff=battleShout-ifNotLastAction=battleShout",
						[90] = "#battleShout-echo=Battle Shout!-ifPlayer>10rage-ifBuffDuration<3s=battleShout-ifNotLastAction=battleShout",
						[91] = "#",
						[92] = "# Disarm 20 rage 1m cooldown",
						[93] = "#",
						[94] = "disarm-sayInSay=Disarm!-ifTargetBoss-ifStance=defensive-ifNotInCooldown=disarm-ifPlayer>45rage-ifNotTargetImmune=disarm-ifNotTargetType=Beast,Critter,Dragonkin,Elemental-ifNotTargetHasDebuff=disarm-ifNotLastAction=disarm",
						[95] = "disarm-sayInSay=Disarm!-ifTargetElite-ifStance=defensive-ifNotInCooldown=disarm-ifPlayer>45rage-ifNotTargetImmune=disarm-ifNotTargetType=Beast,Critter,Dragonkin,Elemental-ifNotTargetHasDebuff=disarm-ifNotLastAction=disarm",
						[96] = "#",
						[97] = "# Rend 10 rage 18s duration",
						[98] = "#",
						[99] = "rend-echo=Not in melee range!-ifNotTargetInMeleeRange",
						[100] = "rend-echo=Rend!-ifPlayer>35rage-ifNotTargetHasDebuff=rend-ifNotTargetImmune=rend-ifTimeToDeath>18s",
						[101] = "#",
						[102] = "# Demoralizing Shout 10 rage",
						[103] = "#",
						[104] = "demoShout-sayInSay=Demoralizing Shout!-ifPlayer>35rage-ifNotTargetHasDebuff=demoShout",
					},
					["tank"] = {
						[1] = "berserkerRage-ifPlayerIs=Feared",
						[2] = "use=Major Healing Potion-ifInCombat-ifPlayer<10%hp",
						[3] = "battleShout-ifNotInCombat-ifNotHistory<5=battleShout",
						[4] = "stopAll-ifTargetIs=CCd",
						[5] = "taunt-ifNotTargetOfTarget-ifTargetHasTarget",
						[6] = "mockingBlow-ifNotTargetOfTarget-ifTargetHasTarget",
						[7] = "battleShout-ifNotPlayerHasBuff=battleShout",
						[8] = "demoShout-ifNotTargetHasDebuff=demoShout",
						[9] = "sunder-ifTargetHasDebuff<5=sunder",
						[10] = "heroicStrike",
					},
					["Hamstring"] = {
						[1] = "# Only switch stance to perform a Hamstring if rage is 25 or less.  ",
						[2] = "# Not worth losing rage to perform a Hamstring (in PvE)",
						[3] = "# battle-echo=Battle Stance!-ifNotStance=battle-ifPlayer<25rage",
						[4] = "battle-echo=Battle Stance for Hamstring!-ifNotStance=battle",
						[5] = "hamstring-sayInSay=Hamstring!-ifStance=battle-ifNotTargetHasDebuff=hamstring",
					},
					["OffensiveSingle"] = {
						[1] = "autoAttack",
						[2] = "#",
						[3] = "# Berserker Rage 30s cooldown",
						[4] = "#",
						[5] = "callForm=BerserkerRage-ifPlayerIs=Feared-ifNotLastAction=berserkerRage-ifNotInCooldown=berserkerRage",
						[6] = "callForm=BerserkerRage-ifPlayerIs=Incapacitated-ifNotLastAction=berserkerRage-ifNotInCooldown=berserkerRage",
						[7] = "#",
						[8] = "# Bandage if you just did Intimidating Shout",
						[9] = "#",
						[10] = "callForm=Bandage-ifLastAction=intimidatingShout-ifPlayer<1351hp-ifNotPlayerHasDebuff=recentlyBandaged",
						[11] = "#",
						[12] = "# Lesser Healthstone",
						[13] = "#",
						[14] = "use=Lesser Healthstone-sayInSay=Lesser Healthstone!-ifInCombat-ifPlayer<10%hp-ifNotItemInCooldown=Lesser Healthstone",
						[15] = "#",
						[16] = "# Drink healing potion",
						[17] = "#",
						[18] = "callForm=DrinkHealingPotion-ifInCombat-ifPlayer<10%hp",
						[19] = "#",
						[20] = "# Shield Wall",
						[21] = "#",
						[22] = "shieldWall-sayInSay=Shield Wall!-ifPlayer<15%hp-ifStance=defensive-ifNotInCooldown=shieldWall-ifEquipped=Salbac Shield",
						[23] = "#",
						[24] = "# Bloodrage 0 rage 1 min cooldown",
						[25] = "#",
						[26] = "bloodrage-echo=Bloodrage!-ifNotInCooldown=bloodrage-ifNotPlayerHasBuff=bloodrage-ifPlayer>232hp-ifPlayer>10%hp-ifNotLastAction=bloodrage",
						[27] = "#",
						[28] = "#Intimidating Shout 25 rage 3 min cooldown",
						[29] = "#",
						[30] = "intimidatingShout-sayInSay=Intimidating Shout!-ifNotInCooldown=intimidatingShout-ifPlayer<10%hp-ifPlayer>25rage-ifNotLastAction=intimidatingShout",
						[31] = "#",
						[32] = "# Execute 15 rage",
						[33] = "#",
						[34] = "callForm=Execute-ifTarget<20%hp-ifTarget>5%hp-ifPlayer>15rage",
						[35] = "#",
						[36] = "# Pummel 10 rage 10s cooldown requires Berserker",
						[37] = "#",
						[38] = "berserk-echo=Berserk for Pummel!-ifNotStance=berserk-ifNotLastAction=berserk-ifTargetIsCasting-ifNotTargetIs=Stunned-ifNotInCooldown=pummel-ifNotTargetImmune=pummel",
						[39] = "pummel-sayInSay=Pummel!-ifStance=berserk-ifNotInCooldown=pummel-ifNotLastAction=pummel-ifNotTargetImmune=pummel-ifTargetIsCasting-ifNotTargetIs=Stunned",
						[40] = "#",
						[41] = "#Overpower 5 rage 5s cooldown",
						[42] = "#",
						[43] = "battle-ifPlayer<25rage-ifNotStance=battle-ifTargetDodged-ifNotInCooldown=overpower-ifNotLastAction=battle",
						[44] = "overpower-ifPlayer>5rage-ifNotInCooldown=overpower-ifTargetDodged-ifNotLastAction=overpower",
						[45] = "#",
						[46] = "# Taunt 0 rage 10 sec cooldown",
						[47] = "#",
						[48] = "defensive-echo=Defensive for Taunt!-ifNotStance=defensive-ifPlayer<25rage-ifNotTargetOfTarget-ifTargetHasTarget-ifNotLastAction=defensive-ifNotInCooldown=taunt",
						[49] = "taunt-sayInSay=Taunt!-ifStance=defensive-ifNotInCooldown=taunt-ifNotLastAction=taunt-ifNotTargetOfTarget-ifTargetHasTarget",
						[50] = "#",
						[51] = "# Mocking Blow 10 rage 2min cooldown",
						[52] = "#",
						[53] = "mockingBlow-sayInSay=Mocking Blow!-ifStance=battle-ifPlayer>10rage-ifNotInCooldown=mockingBlow-ifNotLastAction=mockingBlow-ifNotTargetOfTarget-ifTargetHasTarget",
						[54] = "#",
						[55] = "# Challenging Shout 5 rage 10 min cooldown",
						[56] = "#",
						[57] = "challengingShout-sayInSay=Challenging Shout!-ifNotInCooldown=challengingShout-ifPlayer>5rage-ifNotLastAction=challengingShout-ifNotTargetOfTarget-ifTargetHasTarget",
						[58] = "#",
						[59] = "# Taunt 0 rage 10 sec cooldown",
						[60] = "#",
						[61] = "defensive-echo=Defensive for Taunt!-ifNotStance=defensive-ifNotTargetOfTarget-ifTargetHasTarget-ifNotLastAction=defensive-ifNotInCooldown=taunt",
						[62] = "taunt-sayInSay=Taunt!-ifStance=defensive-ifNotInCooldown=taunt-ifNotLastAction=taunt-ifNotTargetOfTarget-ifTargetHasTarget",
						[63] = "#",
						[64] = "# Berserker Rage 0 rage 30s cooldown",
						[65] = "#",
						[66] = "berserk-echo=Berserker Stance for Berserker Rage-ifNotStance=berserk-ifNotInCooldown=berserkerRage",
						[67] = "berserkerRage-ifNotInCooldown=berserkerRage",
						[68] = "#",
						[69] = "# Battle Shout 10 rage 2 min",
						[70] = "#",
						[71] = "battleShout-echo=Battle Shout!-ifPlayer>10rage-ifNotPlayerHasBuff=battleShout-ifNotLastAction=battleShout",
						[72] = "#",
						[73] = "# Hamstring 10 rage No cooldown",
						[74] = "#",
						[75] = "callForm=Hamstring-ifPlayer>10rage-ifTargetType=Humanoid-ifTarget<50%hp-ifNotTargetHasDebuff=hamstring-ifNotTargetHasDebuff=judgeJustice-ifNotTargetImmune=hamstring",
						[76] = "callForm=Hamstring-ifPlayer>10rage-ifTargetType=Humanoid-ifTimeToDeath<15s-ifNotTargetHasDebuff=hamstring-ifNotTargetHasDebuff=judgeJustice-ifNotTargetImmune=hamstring",
						[77] = "#",
						[78] = "# Rend 10 rage 18s duration",
						[79] = "#",
						[80] = "rend-echo=Rend!-ifPlayer>35rage-ifNotStance=berserk-ifNotTargetHasDebuff=rend-ifNotTargetImmune=rend-ifTimeToDeath>18s",
						[81] = "#",
						[82] = "# Whirlwind",
						[83] = "# Let's switch to berserk regardless at this point; want to build",
						[84] = "# rage in Berserk...",
						[85] = "#",
						[86] = "berserk-echo=Berserk for Whirlwind-ifNotStance=berserk-ifNotLastAction=berserk",
						[87] = "whirlwind-echo=Whirlwind-ifPlayer>25rage",
						[88] = "#",
						[89] = "# Revenge 5 rage 5s cooldown",
						[90] = "#",
						[91] = "defensive-echo=Defensive for Revenge!-ifNotStance=defensive-ifPlayer<25rage-ifNotInCooldown=revenge-ifTargetBlocked-ifNotLastAction=defensive",
						[92] = "revenge-sayInSay=Revenge!-ifStance=defensive-ifPlayer>5rage-ifNotInCooldown=revenge-ifTargetBlocked-ifNotLastAction=revenge",
						[93] = "defensive-echo=Defensive for Revenge!-ifNotStance=defensive-ifPlayer<25rage-ifNotInCooldown=revenge-ifTargetParried-ifNotLastAction=defensive",
						[94] = "revenge-sayInSay=Revenge!-ifStance=defensive-ifPlayer>5rage-ifNotInCooldown=revenge-ifTargetParried-ifNotLastAction=revenge",
						[95] = "#",
						[96] = "# Sunder Armor 15 rage",
						[97] = "#",
						[98] = "sunder-echo=Sunder Armor!-ifPlayer>40rage-ifTargetHasDebuff<5=sunder",
						[99] = "#",
						[100] = "# Heroic Strike 15 rage",
						[101] = "#",
						[102] = "heroicStrike-echo=Heroic Strike!-ifPlayer>40rage",
					},
					["BerserkerRage"] = {
						[1] = "sayInSay=Berserker Rage in cooldown-ifInCooldown=berserkerRage",
						[2] = "berserk-echo=Berserker Stance for Berserker Rage-ifNotStance=berserk-ifNotInCooldown=berserkerRage",
						[3] = "berserkerRage-ifNotInCooldown=berserkerRage",
					},
					["ShieldWall"] = {
						[1] = "callForm=EquipShield",
						[2] = "defensive-echo=Defensive stance for Shield Wall-ifNotStance=defensive",
						[3] = "shieldWall-echo=Shield Wall!",
					},
					["MockingBlowTaunt"] = {
						[1] = "#",
						[2] = "# Mocking Blow 10 rage 2min cooldown",
						[3] = "#",
						[4] = "mockingBlow-sayInSay=Mocking Blow!-ifStance=battle-ifPlayer>10rage-ifNotInCooldown=mockingBlow-ifNotLastAction=mockingBlow",
						[5] = "#",
						[6] = "# Taunt 0 rage 10 sec cooldown",
						[7] = "#",
						[8] = "taunt-sayInSay=Taunt!-ifStance=defensive-ifNotInCooldown=taunt-ifNotLastAction=taunt",
						[9] = "#",
						[10] = "# Challenging Shout 5 rage 10 min cooldown",
						[11] = "#",
						[12] = "challengingShout-sayInSay=Challenging Shout!-ifNotStance=defensive-ifNotInCooldown=challengingShout-ifPlayer>5rage-ifNotLastAction=challengingShout",
						[13] = "challengingShout-sayInSay=Challenging Shout!-ifStance=defensive-ifInCooldown=taunt-ifNotInCooldown=challengingShout-ifPlayer>5rage-ifNotLastAction=challengingShout",
						[14] = "#",
						[15] = "#  Taunt 0 rage 10 sec cooldown",
						[16] = "#",
						[17] = "defensive-echo=Defensive Stance for Taunt!-ifNotLastAction=defensive-ifNotStance=defensive-ifNotInCooldown=taunt-ifNotLastAction=taunt",
						[18] = "taunt-sayInSay=Taunt!-ifStance=defensive-ifNotInCooldown=taunt-ifNotLastAction=taunt",
					},
					["Bandage"] = {
						[1] = "targetUnit=player-use=Heavy Silk Bandage-targetLast-echo=Bandaging!-ifNotPlayerHasDebuff=recentlyBandaged",
						[2] = "#Silk Bandage@self-echo=Bandaging!-ifNotPlayerHasDebuff=recentlyBandaged",
					},
					["DrinkRagePotion"] = {
						[1] = "use=Great Rage Potion-sayInSay=Great Rage Potion!-ifNotItemInCooldown=Great Rage Potion",
						[2] = "use=Rage Potion-sayInSay=Rage Potion!-ifNotItemInCooldown=Rage Potion",
						[3] = "#",
						[4] = "# Below this line everything commented out",
						[5] = "#",
						[6] = "#use=Fire Hardened Hauberk-sayInSay=Hauberk +30 rage! Half health-ifNotItemInCooldown=Fire Hardened Hauberk-ifPlayer<50%hp",
						[7] = "#use=Fire Hardened Hauberk-sayInSay=Hauberk +30 rage!-ifNotItemInCooldown=Fire Hardened Hauberk",
						[8] = "#use=Fire Hardened Hauberk-sayInSay=Hauberk +30 rage! Potions cooldown-ifNotItemInCooldown=Fire Hardened Hauberk!-ifItemInCooldown=Rage Potion",
					},
					["SunderArmorHeroicStrike"] = {
						[1] = "callForm=BattleCommon",
						[2] = "# Sunder Armor 15 rage",
						[3] = "sunder-echo=Sunder Armor!-ifPlayer>40rage-ifPlayerHasBuff=battleShout-ifTargetHasDebuff<5=sunder",
						[4] = "# Heroic Strike 15 rage",
						[5] = "heroicStrike-echo=Heroic Strike!-ifPlayer>40rage-ifTargetHasDebuff>5=sunder",
					},
					["Revenge"] = {
						[1] = "defensive-echo=Defensive Stance for Revenge!-ifNotStance=defensive",
						[2] = "revenge-sayInSay=Revenge!",
					},
					["Retaliation"] = {
						[1] = "battle-echo=Battle Stance for Retaliation!-ifNotStance=battle",
						[2] = "retaliation-sayInSay=Retaliation!",
					},
					["ChargeIntercept"] = {
						[1] = "#",
						[2] = "# Intercept 10 rage 30 sec cooldown",
						[3] = "#",
						[4] = "sayInSay=Not enough rage to Intercept-ifInCombat-ifPlayer<10rage",
						[5] = "sayInSay=Intercept in cooldown-ifInCombat-ifInCooldown=intercept",
						[6] = "berserk-sayInSay=Berserk for Intercept-ifInCombat-ifPlayer>10rage-ifNotStance=berserk-ifNotInCooldown=intercept-ifNotLastAction=intercept",
						[7] = "intercept-ifInCombat-ifPlayer>10rage-ifNotInCooldown=intercept-ifNotLastAction=intercept",
						[8] = "#",
						[9] = "# Charge 0 rage 15 sec cooldown",
						[10] = "#",
						[11] = "sayInSay=Charge in cooldown-ifNotInCombat-ifInCooldown=charge",
						[12] = "battle-sayInSay=Battle Stance for charge-ifNotInCombat-ifNotInCooldown=charge-ifNotStance=battle",
						[13] = "charge-ifNotInCombat-ifNotInCooldown=charge",
					},
					["Whirlwind"] = {
						[1] = "berserk-echo=Berserk for Whirlwind-ifNotStance=berserk-ifNotLastAction=berserk",
						[2] = "whirlwind-echo=Whirlwind",
					},
					["ShieldBlock"] = {
						[1] = "#",
						[2] = "# Shield Block 10 rage 5 sec cooldown",
						[3] = "#",
						[4] = "callForm=EquipShield",
						[5] = "defensive-echo=Defensive Stance for Shield Block!-ifNotStance=defensive",
						[6] = "shieldBlock-echo=Shield Block!",
					},
					["Buff"] = {
						[1] = "findHerbs",
						[2] = "#use=Strong Troll's Blood Potion-ifNotPlayerHasBuffTitle=Regeneration",
						[3] = "use=Weak Troll's Blood Potion-ifNotPlayerHasBuffTitle=Regeneration",
						[4] = "use=Elixir of Minor Fortitude-ifNotPlayerHasBuffTitle=Health",
						[5] = "use=Elixir of Minor Defense-ifNotPlayerHasBuffTitle=Lesser Armor",
						[6] = "use=Elixir of Lion's Strength-ifNotPlayerHasBuffTitle=Lesser Strength",
						[7] = "callForm=EquipShield",
						[8] = "applyMainHandBuff=Rough Weightstone-ifNotPlayerHasBuffTitle=Enhance Blunt Weapon",
						[9] = "callForm=EquipTwoHandWeapon",
						[10] = "applyMainHandBuff=Rough Sharpening Stone-ifNotPlayerHasBuffTitle=Sharpen Blade",
						[11] = "use=Rumsey Rum Light-ifNotPlayerHasBuffTitle=Rumsey Rum Light",
						[12] = "use=Crocolisk Gumbo-ifNotPlayerHasBuffTitle=Well Fed",
						[13] = "#use=Goretusk Liver Pie-ifNotPlayerHasBuffTitle=Well Fed",
					},
				},
				["useImmunities"] = true,
				["autoTarget"] = true,
				["showGankMessage"] = true,
				["showActionAlways"] = true,
				["minimapButtonPos"] = 356.3058970151141,
				["minionHidesOutOfCombat"] = false,
				["mmIsVisible"] = true,
				["deathMinionIsVisible"] = true,
			},
		},
	},
}