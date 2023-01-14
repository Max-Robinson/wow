
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
			["Galilea"] = {
				["clearHistoryAfterCombat"] = false,
				["initiateAutoAttack"] = true,
				["showTargetCasts"] = false,
				["minionIsVisible"] = true,
				["showReasonForTargetCCd"] = false,
				["BoundFormsTable"] = {
				},
				["deathMinionHidesOutOfCombat"] = false,
				["loadedDefaultForms"] = true,
				["debug"] = false,
				["healthHistorySize"] = 5,
				["forms"] = {
					["Shoot"] = {
						[1] = "callForm=OhShit",
						[2] = "wand",
					},
					["lowbie"] = {
						[1] = "stop-ifCasting",
						[2] = "stop-ifChannelling",
						[3] = "stop-ifNotInCombat-ifHasBuff=spiritTap-if<100%mana",
						[4] = "sayInMinion=Global cooldown-ifGlobalCooldown-ifNotWanding",
						[5] = "## Out of combat",
						[6] = "pws@self-ifNotInCombat-ifNotHasDebuff=weakenedSoul-if>95%mana",
						[7] = "pwf@self-ifNotHasBuff=pwf-ifNotInCombat",
						[8] = "innerFire-ifNotHasBuff=innerFire-ifNotInCombat",
						[9] = "cureDisease@self-ifPlayerIs=Diseased-ifNotInCombat",
						[10] = "## In combat heal",
						[11] = "pws@self-ifInCombat-ifNotHasBuff=pws-ifNotHasDebuff=weakenedSoul",
						[12] = "pws@self-ifPlayer<40%hp-ifInCombat-ifNotHasBuff=pws-ifNotHasDebuff=weakenedSoul",
						[13] = "flashHeal@self-ifPlayer>245hpDeficit",
						[14] = "## Open combat",
						[15] = "holyFire-ifNotInCombat-ifLastUsed>4.0s=holyFire",
						[16] = "## In combat",
						[17] = "swp-ifLastUsed>1.5s=swp-ifNotTargetHasDebuff=swp",
						[18] = "smite-ifTarget>50%hp",
						[19] = "## Wands",
						[20] = "stopWand-ifPlayer<40%hp",
						[21] = "wand-ifTarget<50%hp",
						[22] = "wand-ifPlayer<40%mana",
					},
					["OhShit"] = {
						[1] = "#pws@self-ifNotHasBuff=pws-ifNotHasDebuff=weakenedSoul",
						[2] = "pws@self-ifPlayer<40%hp-ifNotHasBuff=pws-ifNotHasDebuff=weakenedSoul",
						[3] = "flashHeal@self-ifPlayer>125mana-ifPlayer>237hpDeficit",
					},
					["Buff"] = {
						[1] = "#pwf-ifNotTargetHasBuff=pwf-ifHaveTarget",
						[2] = "#fearWard-ifNotTargetHasBuff=fearWard-ifHaveTarget",
						[3] = "pwf-ifNotTargetHasBuff=pwf",
						[4] = "fearWard-ifNotInCooldown=fearWard-ifNotTargetHasBuff=fearWard",
						[5] = "pwf@self-ifNotHasBuff=pwf",
						[6] = "pwf@party1-ifNotParty1HasBuff=pwf",
						[7] = "pwf@party2-ifNotParty2HasBuff=pwf",
						[8] = "pwf@party3-ifNotParty3HasBuff=pwf",
						[9] = "#pwf@party4-ifNotParty4HasBuff=pwf",
						[10] = "#pwf@partypet1-ifNotPartypet1HasBuff=pwf",
						[11] = "pwf@partypet2-ifNotPartypet2HasBuff=pwf",
						[12] = "#pwf@partypet3-ifNotPartypet3HasBuff=pwf",
						[13] = "#pwf@partypet4-ifNotPartypet4HasBuff=pwf",
						[14] = "innerFire-ifNotHasBuff=innerFire",
						[15] = "fearWard@self-ifNotInCooldown=fearWard-ifNotHasBuff=fearWard",
						[16] = "fearWard@party1-ifNotInCooldown=fearWard-ifNotParty1HasBuff=fearWard",
						[17] = "fearWard@party2-ifNotInCooldown=fearWard-ifNotParty2HasBuff=fearWard",
						[18] = "fearWard@party3-ifNotInCooldown=fearWard-ifNotParty3HasBuff=fearWard",
						[19] = "#fearWard@party4-ifNotParty4HasBuff=fearWard",
						[20] = "#fearWard@partypet1-ifNotPartypet1HasBuff=fearWard",
						[21] = "fearWard@partypet2-ifNotInCooldown=fearWard-ifNotPartypet2HasBuff=fearWard",
						[22] = "#fearWard@partypet3-ifNotPartypet3HasBuff=fearWard",
						[23] = "#fearWard@partypet4-ifNotPartypet4HasBuff=fearWard",
					},
				},
				["showGankMessage"] = false,
				["mmIsVisible"] = true,
				["autoTarget"] = true,
				["deathMinionIsVisible"] = false,
				["minionHidesOutOfCombat"] = false,
				["minimapButtonPos"] = 0,
				["showActionAlways"] = true,
				["Immunities"] = {
				},
				["useImmunities"] = true,
			},
		},
	},
}