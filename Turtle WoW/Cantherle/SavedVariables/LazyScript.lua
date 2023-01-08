
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
				["forms"] = {
					["ThunderClap"] = {
						[1] = "callForm=BattleCommon",
						[2] = "# Thunder Clap 20 rage",
						[3] = "callForm=ThunderClapSub-ifPlayer>45rage-ifPlayerHasBuff=battleShout-ifNotInCooldown=thunderClap-ifNotTargetHasDebuff=thunderClap",
					},
					["Charge"] = {
						[1] = "echo=Charge in cooldown-ifInCooldown=charge",
						[2] = "battle-echo=Battle Stance!-ifNotInCooldown=charge-ifNotStance=battle",
						[3] = "charge-ifNotInCooldown=charge",
					},
					["Cleave"] = {
						[1] = "callForm=BattleCommon",
						[2] = "# 30 rage 30 sec cooldown but high priority",
						[3] = "sweepingStrikes-echo=Sweeping Strikes!-ifPlayer>30rage-ifNotInCooldown=sweepingStrikes",
						[4] = "# Cleave 20 rage",
						[5] = "cleave-echo=Cleave!-ifPlayer>45rage-ifPlayerHasBuff=battleShout",
					},
					["Execute"] = {
						[1] = "battle-echo=Battle Stance!-ifNotStance=battle",
						[2] = "execute-sayInSay=Execute!",
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
					["Overpower"] = {
						[1] = "battle-echo=Battle Stance!-ifNotStance=battle",
						[2] = "overpower-sayInSay=Overpower!",
					},
					["EquipShield"] = {
						[1] = "# If holding two-handed weapon, and try to equip shield, it will fail.",
						[2] = "# Must first equip one-handed weapon, then can equip shield.",
						[3] = "equipMainHand=Reforged Blade of Heroes-ifNotEquipped=Reforged Blade of Heroes",
						[4] = "equipOffHand=Heart of Agamaggan-echo=Equipping shield-ifNotEquipped=Heart of Agamaggan",
					},
					["BattleCommon"] = {
						[1] = "autoAttack",
						[2] = "use=Lesser Healthstone-sayInSay=Lesser Healthstone!-ifInCombat-ifPlayer<10%hp-ifNotItemInCooldown=Lesser Healthstone",
						[3] = "use=Superior Healing Potion-sayInSay=Healing Potion!-ifInCombat-ifPlayer<10%hp-ifNotItemInCooldown=Superior Healing Potion",
						[4] = "#Intimidating Shout 25 rage 3 min cooldown",
						[5] = "intimidatingShout-sayInSay=Intimidating Shout!-ifNotInCooldown=intimidatingShout-ifItemInCooldown=Greater Healing Potion-ifPlayer<20%hp-ifPlayer>25rage",
						[6] = "# Bandage if you just did Intimidating Shout",
						[7] = "callForm=Bandage-ifLastAction=intimidatingShout-ifItemInCooldown=Greater Healing Potion-ifPlayer<452hp-ifNotPlayerHasDebuff=recentlyBandaged",
						[8] = "#Shield Wall: 0 rage 30 min cooldown",
						[9] = "callForm=ShieldWall-ifNotInCooldown=shieldWall-ifPlayer<20%hp-ifItemInCooldown=Greater Healing Potion-ifNotPlayerHasBuff=retaliation",
						[10] = "#Retaliation 0 rage 30min cooldown",
						[11] = "callForm=Retaliation-ifNotInCooldown=retaliation-ifPlayer<20%hp-ifItemInCooldown=Greater Healing Potion-ifInCooldown=shieldWall-ifNotPlayerHasBuff=shieldWall",
						[12] = "# Equip 2H if just did Retaliation",
						[13] = "callForm=EquipTwoHandWeapon-ifPlayerHasBuff=retaliation",
						[14] = "stopAll-ifTargetIs=CCd",
						[15] = "# Execute 15 rage",
						[16] = "callForm=DrinkRagePotion-ifTarget<20%hp-ifPlayer<15rage",
						[17] = "callForm=Execute-ifTarget<20%hp-ifPlayer>15rage",
						[18] = "# Shield Bash 10 rage",
						[19] = "#callForm=ShieldBash-ifNotInCooldown=shieldBash-ifTargetIsCasting=Sleep,Druid's Slumber-ifNotTargetIs=Stunned-ifPlayer>10rage",
						[20] = "# Shield Bash 10 rage",
						[21] = "callForm=DrinkRagePotion-ifNotInCooldown=shieldBash-ifTargetIsCasting-ifNotTargetIs=Stunned-ifPlayer<10rage",
						[22] = "callForm=ShieldBash-ifNotInCooldown=shieldBash-ifTargetIsCasting-ifNotTargetIs=Stunned-ifPlayer>10rage",
						[23] = "#Overpower 5 rage",
						[24] = "callForm=DrinkRagePotion-ifPlayer<5rage-ifNotInCooldown=overpower-ifTargetDodged",
						[25] = "callForm=Overpower-ifPlayer>5rage-ifNotInCooldown=overpower-ifTargetDodged",
						[26] = "# Revenge 5 rage",
						[27] = "#callForm=DrinkRagePotion-ifPlayer<5rage-ifNotInCooldown=revenge-ifTargetBlocked",
						[28] = "callForm=Revenge-ifPlayer>5rage-ifNotInCooldown=revenge-ifTargetBlocked",
						[29] = "#callForm=DrinkRagePotion-ifPlayer<5rage-ifNotInCooldown=revenge-ifTargetParried",
						[30] = "callForm=Revenge-ifPlayer>5rage-ifNotInCooldown=revenge-ifTargetParried",
						[31] = "# Mocking Blow 10 rage 2 min cooldown, Taunt 0 rage",
						[32] = "callForm=MockingBlowTaunt-ifNotTargetOfTarget-ifTargetHasTarget",
						[33] = "# Hamstring 10 rage",
						[34] = "callForm=DrinkRagePotion-ifPlayer<10rage-ifTargetType=Humanoid-ifTarget<50%hp-ifNotTargetHasDebuff=hamstring-ifNotTargetImmune=hamstring",
						[35] = "callForm=Hamstring-ifPlayer>10rage-ifTargetType=Humanoid-ifTarget<50%hp-ifNotTargetHasDebuff=hamstring-ifNotTargetImmune=hamstring",
						[36] = "callForm=DrinkRagePotion-ifPlayer<10rage-ifTargetType=Humanoid-ifNotTargetHasDebuff=hamstring-ifNotTargetImmune=hamstring-ifTimeToDeath<15s",
						[37] = "callForm=Hamstring-ifPlayer>10rage-ifTargetType=Humanoid--ifNotTargetHasDebuff=hamstring-ifNotTargetImmune=hamstring-ifTimeToDeath<15s",
						[38] = "# Bloodrage 0 rage",
						[39] = "bloodrage-echo=Bloodrage!-ifNotInCooldown=bloodrage-ifNotPlayerHasBuff=bloodrage-ifPlayer>60hp-ifPlayer>10%hp",
						[40] = "# Shield Block 10 rage",
						[41] = "callForm=ShieldBlock-ifPlayer>10rage-ifNotInCooldown=shieldBlock-ifPlayer<33%hp-ifNotPlayerHasBuff=shieldBlock",
						[42] = "callForm=ShieldBlock-ifStance=defensive-ifPlayer>35rage-ifNotInCooldown=shieldBlock-ifPlayer<50%hp-ifNotPlayerHasBuff=shieldBlock",
						[43] = "# Battle Shout 10 rage",
						[44] = "battleShout-echo=Battle Shout!-ifPlayer>10rage-ifNotPlayerHasBuff=battleShout",
						[45] = "battleShout-echo=Battle Shout!-ifPlayer>10rage-ifBuffDuration<3s=battleShout",
						[46] = "# Disarm 20 rage",
						[47] = "callForm=Disarm-ifStance=defensive-ifNotInCooldown=disarm-ifPlayer>45rage-ifNotTargetImmune=disarm-ifNotTargetType=Beast,Critter,Dragonkin,Elemental-ifNotTargetHasDebuff=disarm",
						[48] = "# Rend 10 rage",
						[49] = "rend-echo=Not in melee range!-ifNotTargetInMeleeRange",
						[50] = "rend-echo=Rend!-ifPlayer>35rage-ifPlayerHasBuff=battleShout-ifNotTargetHasDebuff=rend-ifNotTargetImmune=rend-ifTimeToDeath>15s",
						[51] = "# Demoralizing Shout 10 rage",
						[52] = "demoShout-echo=Demoralizing Shout!-ifPlayer>35rage-ifPlayerHasBuff=battleShout-ifNotTargetHasDebuff=demoShout",
					},
					["SunderArmorHeroicStrike"] = {
						[1] = "callForm=BattleCommon",
						[2] = "# Sunder Armor 15 rage",
						[3] = "sunder-echo=Sunder Armor!-ifPlayer>40rage-ifPlayerHasBuff=battleShout-ifTargetHasDebuff<5=sunder",
						[4] = "# Heroic Strike 15 rage",
						[5] = "heroicStrike-echo=Heroic Strike!-ifPlayer>40rage-ifTargetHasDebuff>5=sunder",
					},
					["Hamstring"] = {
						[1] = "# Only switch stance to perform a Hamstring if rage is 25 or less.  ",
						[2] = "# Not worth losing rage to perform a Hamstring (in PvE)",
						[3] = "# battle-echo=Battle Stance!-ifNotStance=battle-ifPlayer<25rage",
						[4] = "battle-echo=Battle Stance!-ifNotStance=battle",
						[5] = "hamstring-sayInSay=Hamstring!-ifStance=battle-ifNotTargetHasDebuff=hamstring",
					},
					["Disarm"] = {
						[1] = "disarm-sayInSay=Disarm!-ifTargetBoss",
						[2] = "disarm-sayInSay=Disarm!-ifTargetElite",
					},
					["Bandage"] = {
						[1] = "targetUnit=player-use=Heavy Silk Bandage-targetLast-echo=Bandaging!-ifNotPlayerHasDebuff=recentlyBandaged",
						[2] = "#use=Silk Bandage@self-echo=Bandaging!-ifNotPlayerHasDebuff=recentlyBandaged",
					},
					["MockingBlowTaunt"] = {
						[1] = "# Mocking Blow 10 rage 2min cooldown",
						[2] = "mockingBlow-sayInSay=Mocking Blow!-ifStance=battle-ifPlayer>10rage-ifNotInCooldown=mockingBlow",
						[3] = "# Taunt 0 rage 10 sec cooldown",
						[4] = "defensive-echo=Defensive Stance!-ifNotStance=defensive-ifInCooldown=mockingBlow-ifNotInCooldown=taunt",
						[5] = "taunt-sayInSay=Taunt!-ifNotInCooldown=taunt-ifStance=defensive",
						[6] = "# 5 rage 10 min cooldown",
						[7] = "challengingShout-sayInSay=Challenging Shout!-ifInCooldown=taunt-ifNotInCooldown=challengingShout-ifPlayer>5rage",
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
					["DrinkRagePotion"] = {
						[1] = "use=Rage Potion-sayInSay=Rage Potion!-ifNotItemInCooldown=Rage Potion-ifPlayer>50%hp",
						[2] = "#use=Fire Hardened Hauberk-sayInSay=Hauberk +30 rage! Half health-ifNotItemInCooldown=Fire Hardened Hauberk-ifPlayer<50%hp",
						[3] = "#use=Fire Hardened Hauberk-sayInSay=Hauberk +30 rage!-ifNotItemInCooldown=Fire Hardened Hauberk",
						[4] = "#use=Fire Hardened Hauberk-sayInSay=Hauberk +30 rage! Potions cooldown-ifNotItemInCooldown=Fire Hardened Hauberk!-ifItemInCooldown=Rage Potion",
					},
					["Retaliation"] = {
						[1] = "battle-echo=Battle Stance!-ifNotStance=battle",
						[2] = "retaliation-sayInSay=Retaliation!",
					},
					["Revenge"] = {
						[1] = "defensive-echo=Defensive Stance!-ifNotStance=defensive",
						[2] = "revenge-sayInSay=Revenge!",
					},
					["ShieldBash"] = {
						[1] = "defensive-echo=DefensiveStance!-ifStance=berserk",
						[2] = "callForm=EquipShield",
						[3] = "shieldBash-sayInSay=Shield Bash!",
					},
					["EquipTwoHandWeapon"] = {
						[1] = "equipMainHand=Whirlwind Axe-echo=Equipping 2 hander-ifNotEquipped=Whirlwind Axe",
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
					["ShieldBlock"] = {
						[1] = "callForm=EquipShield",
						[2] = "defensive-sayInSay=Half health! Defensive Stance!-ifNotStance=defensive",
						[3] = "shieldBlock-echo=Shield Block!",
					},
					["ShieldWall"] = {
						[1] = "callForm=EquipShield",
						[2] = "defensive-ifNotStance=defensive",
						[3] = "shieldWall-echo=Shield Wall!",
					},
				},
				["deathMinionIsVisible"] = true,
				["mmIsVisible"] = true,
				["autoTarget"] = true,
				["showGankMessage"] = true,
				["minionHidesOutOfCombat"] = false,
				["minimapButtonPos"] = 320.8922522660328,
				["showActionAlways"] = true,
				["useImmunities"] = true,
				["Immunities"] = {
					["Intimidating Shout"] = {
						["Remote-Controlled Golem"] = true,
						["Gilnid"] = true,
						["Stitches"] = true,
						["Grovetender Engryss"] = true,
						["Arcane Nullifier X-21"] = true,
						["Hamhock"] = true,
						["Haunted Servitor"] = true,
						["Mr. Smite"] = true,
						["Overlord Ramtusk"] = true,
						["Dextren Ward"] = true,
						["Disturbed Spirit"] = true,
						["Mechanized Sentry"] = true,
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
						["Glade Creeper"] = true,
						["Verdan the Everliving"] = true,
						["Crowd Pummeler 9-60"] = true,
						["Mechano-Flamewalker"] = true,
						["Mechano-Frostwalker"] = true,
						["Burning Ravager"] = true,
						["Remote-Controlled Golem"] = true,
						["Deranged Ancient"] = true,
						["Sneed's Shredder"] = true,
						["Ambassador Infernus"] = true,
						["Thundering Boulderkin"] = true,
						["Burning Destroyer"] = true,
						["Electrocutioner 6000"] = true,
						["Cresting Exile"] = true,
						["Twisted Ancient"] = true,
						["Arcane Nullifier X-21"] = true,
						["Cyclonian"] = true,
						["Haunted Servitor"] = true,
						["Apprentice Training Dummy"] = true,
						["Burning Exile"] = true,
						["Viscous Fallout"] = true,
						["Mechanized Guardian"] = true,
						["Mekgineer Thermaplugg"] = true,
						["Thundering Exile"] = true,
					},
					["Frost Blast"] = {
						["Cresting Exile"] = true,
					},
					["Overpower"] = {
						["Charlga Razorflank"] = true,
					},
				},
			},
		},
	},
}