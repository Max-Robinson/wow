
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
						["Sneed's Shredder"] = true,
						["Remote-Controlled Golem"] = true,
						["Apprentice Training Dummy"] = true,
						["Befouled Water Elemental"] = true,
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
						[1] = "callForm=BuffCheck",
						[2] = "sayInSay=Charge in cooldown-ifInCooldown=charge",
						[3] = "battle-sayInSay=Battle Stance!-ifNotInCooldown=charge-ifNotStance=battle",
						[4] = "charge-ifNotInCooldown=charge",
					},
					["Cleave"] = {
						[1] = "callForm=BattleCommon",
						[2] = "# Cleave 20 rage",
						[3] = "cleave-sayInSay=Cleave!-ifPlayer>45rage-ifPlayerHasBuff=battleShout",
					},
					["Disarm"] = {
						[1] = "disarm-sayInSay=Disarm!-ifTargetBoss",
						[2] = "disarm-sayInSay=Disarm!-ifTargetElite",
					},
					["ThunderClapSub"] = {
						[1] = "battle-sayInSay=Battle Stance!-ifNotStance=battle",
						[2] = "thunderClap-sayInSay=Thunder Clap!",
					},
					["BuffCheck"] = {
						[1] = "sayInSay=Please Blessing of Might-ifNotPlayerHasBuff=blessMight-ifNotLastAction=say",
						[2] = "sayInSay=Please Thorns-ifNotPlayerHasBuff=thorns-ifNotLastAction=say",
						[3] = "sayInSay=Please Mark of the Wild-ifNotPlayerHasBuff=motw-ifNotLastAction=say",
					},
					["Shoot"] = {
						[1] = "callForm=BuffCheck",
						[2] = "gun",
					},
					["Overpower"] = {
						[1] = "battle-sayInSay=Battle Stance!-ifNotStance=battle",
						[2] = "overpower-sayInSay=Overpower!",
					},
					["EquipShield"] = {
						[1] = "# If holding two-handed weapon, and try to equip shield, it will fail.",
						[2] = "# Must first equip one-handed weapon, then can equip shield.",
						[3] = "equipMainHand=Iridescent Hammer-ifNotEquipped=Iridescent Hammer",
						[4] = "equipOffHand=Battleforge Shield of Strength-sayInSay=Equipping shield-ifNotEquipped=Battleforge Shield of Strength",
					},
					["BattleCommon"] = {
						[1] = "autoAttack",
						[2] = "use=Healing Potion-sayInSay=Healing Potion!-ifInCombat-ifPlayer<10%hp-ifNotItemInCooldown=Healing Potion",
						[3] = "#Intimidating Shout 25 rage",
						[4] = "intimidatingShout-sayInSay=Intimidating Shout!-ifNotInCooldown=intimidatingShout-ifItemInCooldown=HealingPotion-ifPlayer<20%hp-ifPlayer>25rage",
						[5] = "# Bandage if you just did Intimidating Shout",
						[6] = "callForm=Bandage-ifLastAction=intimidatingShout-ifItemInCooldown=Healing Potion-ifPlayer<452hp-ifNotPlayerHasDebuff=recentlyBandaged",
						[7] = "#Retaliation 0 rage 30min cooldown",
						[8] = "callForm=Retaliation-ifNotInCooldown=retaliation-ifPlayer<50%hp-ifItemInCooldown=Healing Potion-ifInCooldown=intimidatingShout",
						[9] = "# Equip 2H if just did Retaliation",
						[10] = "callForm=EquipTwoHandWeapon-ifLastAction=retaliation",
						[11] = "stopAll-ifTargetIs=CCd",
						[12] = "# Execute 15 rage",
						[13] = "callForm=Execute-ifTarget<20%hp-ifPlayer>15rage",
						[14] = "# Shield Bash 10 rage",
						[15] = "callForm=ShieldBash-ifNotInCooldown=shieldBash-ifTargetIsCasting-ifNotTargetIs=Stunned-ifPlayer>10rage",
						[16] = "#Overpower 5 rage",
						[17] = "callForm=Overpower-ifPlayer>5rage-ifNotInCooldown=overpower-ifUsable=overpower",
						[18] = "# Revenge 5 rage",
						[19] = "callForm=Revenge-ifPlayer>5rage-ifNotInCooldown=revenge-ifUsable=revenge",
						[20] = "# Mocking Blow 10 rage 2 min cooldown, Taunt 0 rage",
						[21] = "callForm=MockingBlowTaunt-ifNotTargetOfTarget-ifTargetHasTarget",
						[22] = "# Hamstring 10 rage",
						[23] = "callForm=Hamstring-ifPlayer>10rage-ifTargetType=Humanoid-ifTarget<25%hp-ifNotTargetHasDebuff=hamstring",
						[24] = "# Bloodrage 0 rage",
						[25] = "bloodrage-sayInSay=Bloodrage!-ifNotInCooldown=bloodrage-ifNotPlayerHasBuff=bloodrage-ifPlayer>60hp-ifPlayer>10%hp",
						[26] = "# Shield Block 10 rage",
						[27] = "callForm=ShieldBlock-ifPlayer>35rage-ifNotInCooldown=shieldBlock-ifPlayer<50%hp-ifNotPlayerHasBuff=shieldBlock",
						[28] = "# Battle Shout 10 rage",
						[29] = "battleShout-sayInSay=Battle Shout!-ifPlayer>10rage-ifNotPlayerHasBuff=battleShout",
						[30] = "battleShout-sayInSay=Battle Shout!-ifPlayer>10rage-ifBuffDuration<3s=battleShout",
						[31] = "# Disarm 20 rage",
						[32] = "callForm=Disarm-ifStance=defensive-ifNotInCooldown=disarm-ifPlayer>45rage-ifNotTargetImmune=disarm-ifNotTargetType=Beast,Critter,Dragonkin,Elemental-ifNotTargetHasDebuff=disarm",
						[33] = "# Rend 10 rage",
						[34] = "rend-sayInSay=Not in melee range!-ifNotTargetInMeleeRange",
						[35] = "rend-sayInSay=Rend!-ifPlayer>35rage-ifPlayerHasBuff=battleShout-ifNotTargetHasDebuff=rend-ifNotTargetImmune=rend-ifTimeToDeath>15s",
						[36] = "# Demoralizing Shout 10 rage",
						[37] = "demoShout-sayInSay=Demoralizing Shout!-ifPlayer>35rage-ifPlayerHasBuff=battleShout-ifNotTargetHasDebuff=demoShout",
					},
					["SunderArmorHeroicStrike"] = {
						[1] = "callForm=BattleCommon",
						[2] = "# Sunder Armor 15 rage",
						[3] = "sunder-sayInSay=Sunder Armor!-ifPlayer>40rage-ifPlayerHasBuff=battleShout-ifTargetHasDebuff<5=sunder",
						[4] = "# Heroic Strike 15 rage",
						[5] = "heroicStrike-sayInSay=Heroic Strike!-ifPlayer>40rage-ifTargetHasDebuff>5=sunder",
					},
					["Execute"] = {
						[1] = "battle-sayInSay=Battle Stance!-ifNotStance=battle",
						[2] = "execute-sayInSay=Execute!",
					},
					["MockingBlowTaunt"] = {
						[1] = "# Mocking Blow 10 rage 2min cooldown",
						[2] = "mockingBlow-sayInSay=Mocking Blow!-ifStance=battle-ifPlayer>10rage-ifNotInCooldown=mockingBlow",
						[3] = "# Taunt 0 rage",
						[4] = "defensive-sayInSay=Defensive Stance!-ifNotStance=defensive-ifInCooldown=mockingBlow-ifNotInCooldown=taunt",
						[5] = "taunt-sayInSay=Taunt!-ifNotInCooldown=taunt-ifStance=defensive",
					},
					["Hamstring"] = {
						[1] = "# Only switch stance to perform a Hamstring if rage is 25 or less.  Not worth losing rage to perform a Hamstring (in PvE)",
						[2] = "battle-sayInSay=Battle Stance!-ifNotStance=battle-ifPlayer<25rage",
						[3] = "hamstring-sayInSay=Hamstring!-ifStance=battle",
					},
					["Bandage"] = {
						[1] = "targetUnit=player-use=Heavy Wool Bandage-targetLast-sayInSay=Bandaging!-ifNotPlayerHasDebuff=recentlyBandaged",
					},
					["ShieldBash"] = {
						[1] = "defensive-sayInSay=DefensiveStance!-ifStance=berserk",
						[2] = "callForm=EquipShield",
						[3] = "shieldBash-sayInSay=Shield Bash!",
					},
					["Revenge"] = {
						[1] = "defensive-sayInSay=Defensive Stance!-ifNotStance=defensive",
						[2] = "revenge-sayInSay=Revenge!",
					},
					["Retaliation"] = {
						[1] = "battle-sayInSay=Battle Stance!-ifNotStance=battle",
						[2] = "retaliation-sayInSay=Retaliation!",
					},
					["EquipTwoHandWeapon"] = {
						[1] = "equipMainHand=Onyx Claymore-sayInSay=Equipping 2 hander-ifNotEquipped=Onyx Claymore",
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
						[2] = "defensive-sayInSay=Defensive Stance!-ifNotStance=defensive",
						[3] = "shieldBlock-sayInSay=Shield Block!",
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
				["minimapButtonPos"] = 257.7749767778977,
				["minionHidesOutOfCombat"] = false,
				["mmIsVisible"] = true,
				["deathMinionIsVisible"] = true,
			},
		},
	},
}