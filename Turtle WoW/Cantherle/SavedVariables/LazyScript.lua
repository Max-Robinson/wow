
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
					["Rend"] = {
						["Deviate Shambler"] = true,
						["Sneed's Shredder"] = true,
						["Apprentice Training Dummy"] = true,
						["Befouled Water Elemental"] = true,
						["Remote-Controlled Golem"] = true,
						["Verdan the Everliving"] = true,
						["Burning Destroyer"] = true,
					},
					["Intimidating Shout"] = {
						["Remote-Controlled Golem"] = true,
						["Gilnid"] = true,
						["Mr. Smite"] = true,
					},
				},
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
					["Execute"] = {
						[1] = "battle-echo=Battle Stance!-ifNotStance=battle",
						[2] = "execute-sayInSay=Execute!",
					},
					["ThunderClapSub"] = {
						[1] = "battle-echo=Battle Stance!-ifNotStance=battle",
						[2] = "thunderClap-echo=Thunder Clap!",
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
						[3] = "equipMainHand=Iridescent Hammer-ifNotEquipped=Iridescent Hammer",
						[4] = "equipOffHand=Sentry's Shield of the Bear-echo=Equipping shield-ifNotEquipped=Sentry's Shield of the Bear",
					},
					["BattleCommon"] = {
						[1] = "autoAttack",
						[2] = "use=Lesser Healthstone-sayInSay=Lesser Healthstone!-ifInCombat-ifPlayer<10%hp-ifNotItemInCooldown=Lesser Healthstone",
						[3] = "use=Healing Potion-sayInSay=Healing Potion!-ifInCombat-ifPlayer<10%hp-ifNotItemInCooldown=Healing Potion",
						[4] = "#Intimidating Shout 25 rage 3 min cooldown",
						[5] = "intimidatingShout-sayInSay=Intimidating Shout!-ifNotInCooldown=intimidatingShout-ifItemInCooldown=Healing Potion-ifPlayer<20%hp-ifPlayer>25rage",
						[6] = "# Bandage if you just did Intimidating Shout",
						[7] = "callForm=Bandage-ifLastAction=intimidatingShout-ifItemInCooldown=Healing Potion-ifPlayer<452hp-ifNotPlayerHasDebuff=recentlyBandaged",
						[8] = "#Retaliation 0 rage 30min cooldown",
						[9] = "callForm=Retaliation-ifNotInCooldown=retaliation-ifPlayer<50%hp-ifItemInCooldown=Healing Potion-ifInCooldown=intimidatingShout",
						[10] = "# Equip 2H if just did Retaliation",
						[11] = "callForm=EquipTwoHandWeapon-ifPlayerHasBuff=retaliation",
						[12] = "stopAll-ifTargetIs=CCd",
						[13] = "# Execute 15 rage",
						[14] = "callForm=Execute-ifTarget<20%hp-ifPlayer>15rage",
						[15] = "# Shield Bash 10 rage",
						[16] = "callForm=ShieldBash-ifNotInCooldown=shieldBash-ifTargetIsCasting=Sleep,Druid's Slumber-ifNotTargetIs=Stunned-ifPlayer>10rage",
						[17] = "#Overpower 5 rage",
						[18] = "callForm=Overpower-ifPlayer>5rage-ifNotInCooldown=overpower-ifTargetDodged",
						[19] = "# Revenge 5 rage",
						[20] = "callForm=Revenge-ifPlayer>5rage-ifNotInCooldown=revenge-ifTargetBlocked",
						[21] = "callForm=Revenge-ifPlayer>5rage-ifNotInCooldown=revenge-ifTargetParried",
						[22] = "# Mocking Blow 10 rage 2 min cooldown, Taunt 0 rage",
						[23] = "callForm=MockingBlowTaunt-ifNotTargetOfTarget-ifTargetHasTarget",
						[24] = "# Hamstring 10 rage",
						[25] = "callForm=Hamstring-ifPlayer>10rage-ifTargetType=Humanoid-ifTarget<25%hp-ifNotTargetHasDebuff=hamstring",
						[26] = "# Bloodrage 0 rage",
						[27] = "bloodrage-echo=Bloodrage!-ifNotInCooldown=bloodrage-ifNotPlayerHasBuff=bloodrage-ifPlayer>60hp-ifPlayer>10%hp",
						[28] = "# Shield Block 10 rage",
						[29] = "callForm=ShieldBlock-ifPlayer>35rage-ifNotInCooldown=shieldBlock-ifPlayer<50%hp-ifNotPlayerHasBuff=shieldBlock",
						[30] = "# Battle Shout 10 rage",
						[31] = "battleShout-echo=Battle Shout!-ifPlayer>10rage-ifNotPlayerHasBuff=battleShout",
						[32] = "battleShout-echo=Battle Shout!-ifPlayer>10rage-ifBuffDuration<3s=battleShout",
						[33] = "# Disarm 20 rage",
						[34] = "callForm=Disarm-ifStance=defensive-ifNotInCooldown=disarm-ifPlayer>45rage-ifNotTargetImmune=disarm-ifNotTargetType=Beast,Critter,Dragonkin,Elemental-ifNotTargetHasDebuff=disarm",
						[35] = "# Rend 10 rage",
						[36] = "rend-echo=Not in melee range!-ifNotTargetInMeleeRange",
						[37] = "rend-echo=Rend!-ifPlayer>35rage-ifPlayerHasBuff=battleShout-ifNotTargetHasDebuff=rend-ifNotTargetImmune=rend-ifTimeToDeath>15s",
						[38] = "# Demoralizing Shout 10 rage",
						[39] = "demoShout-echo=Demoralizing Shout!-ifPlayer>35rage-ifPlayerHasBuff=battleShout-ifNotTargetHasDebuff=demoShout",
					},
					["SunderArmorHeroicStrike"] = {
						[1] = "callForm=BattleCommon",
						[2] = "# Sunder Armor 15 rage",
						[3] = "sunder-echo=Sunder Armor!-ifPlayer>40rage-ifPlayerHasBuff=battleShout-ifTargetHasDebuff<5=sunder",
						[4] = "# Heroic Strike 15 rage",
						[5] = "heroicStrike-echo=Heroic Strike!-ifPlayer>40rage-ifTargetHasDebuff>5=sunder",
					},
					["Hamstring"] = {
						[1] = "# Only switch stance to perform a Hamstring if rage is 25 or less.  Not worth losing rage to perform a Hamstring (in PvE)",
						[2] = "battle-echo=Battle Stance!-ifNotStance=battle-ifPlayer<25rage",
						[3] = "hamstring-sayInSay=Hamstring!-ifStance=battle",
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
					["Cleave"] = {
						[1] = "callForm=BattleCommon",
						[2] = "# Cleave 20 rage",
						[3] = "cleave-echo=Cleave!-ifPlayer>45rage-ifPlayerHasBuff=battleShout",
					},
					["Bandage"] = {
						[1] = "targetUnit=player-use=Heavy Wool Bandage-targetLast-echo=Bandaging!-ifNotPlayerHasDebuff=recentlyBandaged",
					},
					["ShieldBash"] = {
						[1] = "defensive-echo=DefensiveStance!-ifStance=berserk",
						[2] = "callForm=EquipShield",
						[3] = "shieldBash-sayInSay=Shield Bash!",
					},
					["Revenge"] = {
						[1] = "defensive-echo=Defensive Stance!-ifNotStance=defensive",
						[2] = "revenge-sayInSay=Revenge!",
					},
					["Retaliation"] = {
						[1] = "battle-echo=Battle Stance!-ifNotStance=battle",
						[2] = "retaliation-sayInSay=Retaliation!",
					},
					["EquipTwoHandWeapon"] = {
						[1] = "equipMainHand=Onyx Claymore-echo=Equipping 2 hander-ifNotEquipped=Onyx Claymore",
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
					["ShieldBlock"] = {
						[1] = "callForm=EquipShield",
						[2] = "defensive-sayInSay=Half health! Defensive Stance!-ifNotStance=defensive",
						[3] = "shieldBlock-echo=Shield Block!",
					},
					["Disarm"] = {
						[1] = "disarm-sayInSay=Disarm!-ifTargetBoss",
						[2] = "disarm-sayInSay=Disarm!-ifTargetElite",
					},
				},
				["useImmunities"] = true,
				["autoTarget"] = true,
				["showGankMessage"] = true,
				["showActionAlways"] = true,
				["minimapButtonPos"] = 320.8922522660328,
				["minionHidesOutOfCombat"] = false,
				["mmIsVisible"] = true,
				["deathMinionIsVisible"] = true,
			},
		},
	},
}