-- Written for the Lethe patch by Michael Clarke
-- Converted to Lua and modified heavily for mHack by Ratan Varghese

des.level_init({ style = "solidfill", fg = " " });
des.level_flags("mazelevel", "noteleport", "hardfloor", "nommap", "temperate");

--[[
#         1         2         3         4         5         6         7
#123456789012345678901234567890123456789012345678901234567890123456789012345
]]
des.map([[
----------------------------------------------------------------------------0
|                             ###       # # # # # # # # # # #      --......|1
| -----        ########       # #####  -+-+-+-+-+-+-+-+-+-+-+- -----.......|2
| |...+###     #------+------ #     ###+PPPPPPPPPPPPPPPPPPPPP| |...........|3
| -----  #     #|...........| # -----  |PPPPPPPPPPPPPPPPPPPPP| |.....---.--|4
|    ----+---- #|...........+## |...|  |PPPPPPPPPPPPPPPPPPPPP| |.----- --- |5
|    |.......| #|...........|   |...|  |PPPPPPPPPPPPPPPPPPPPP|--B|         |6
|    |.......+##------------- ---B..|  |PPPPPPPPPPPPPPPPPPPPPS...|---------|7
|    |.......|                |..B..|  |PPPPPPPPPPPPPPPPPPPPP|..--|...|.S..|8
|    ----+----  ---------------..|..-- |PPPPPPPPPPPPPPPPPPPPP|..| |.....|--|9
|----    #      |.........B.....|--..| -+-+-+-+-+-+-+-+-+-+-+--.| |.------ |0
|...|    # ------.........BB----- |..|  # # # # # # # # # # # |.| |.|....| |1
|...|##### |................|   ---..|                ---------.| |....|.| |2
|...+#     |................|  --....|    ---------   |.........--------S--|3
|...|   ----BB--..........---  |.....------.......|   |..----....|.........|4
|...|  --.....|.......-----    |.........B........-----..|  |....|.........|5
|...|---....----....---      ---------...B....---........|  |....+.........|6
|...S.....---  |....| --------.......-----....| -----....----....|.........|7
|...|.....|    |....| |.......................|     |............|.........|8
----------------------------------------------------------------------------9
]])
-- Dungeon Description
-- The shrine to Moloch.
des.region({ region={66,14,74,18},lit=1,type="temple",filled=2 })
-- The Morgues
des.region({ region={17,10,22,12},lit=0,type="morgue",filled=1,irregular=1 })
des.region({ region={33,05,35,06},lit=0,type="morgue",filled=1,irregular=1 })
des.region({ region={69,01,74,03},lit=0,type="morgue",filled=1,irregular=1 })
-- Pseudo-swamp
des.replace_terrain({ region={40,03,60,09}, fromterrain="P", toterrain="w", chance="10" })
des.replace_terrain({ region={40,03,60,09}, fromterrain="P", toterrain=".", chance="5" })

-- Stairs
des.stair("down", 74,08)
-- Branch location
des.levregion({ type="branch", region={04,03,04,03} })
des.teleport_region({ region = {03,03,05,03}, dir="down" })

-- Doors
des.door("locked",04,13)
des.door("locked",06,03)
des.door("closed",09,05)
des.door("closed",09,09)
des.door("closed",13,07)
des.door("closed",22,03)
des.door("closed",28,05)
des.door("locked",39,03)
des.door("closed",40,02)
des.door("closed",40,10)
des.door("closed",42,02)
des.door("closed",42,10)
des.door("closed",44,02)
des.door("closed",44,10)
des.door("closed",46,02)
des.door("closed",46,10)
des.door("closed",48,02)
des.door("closed",48,10)
des.door("closed",50,02)
des.door("closed",50,10)
des.door("closed",52,02)
des.door("closed",52,10)
des.door("closed",54,02)
des.door("closed",54,10)
des.door("closed",56,02)
des.door("closed",56,10)
des.door("closed",58,02)
des.door("closed",58,10)
des.door("closed",60,02)
des.door("closed",60,10)
des.door("random",65,16)

-- The altar of Moloch.
des.altar({ x=70,y=16,align="noalign", type="shrine" })

-- Non diggable walls - everywhere!
des.non_diggable(selection.area(00,00,75,19))

-- Objects
-- **LOTS** of dead bodies (all human).
-- note: no priest(esse)s or monks - maybe Moloch has a *special*
--       fate reserved for members of *those* classes.
--
des.object({ id="corpse",montype="archeologist" })
des.object({ id="corpse",montype="archeologist" })
des.object({ id="corpse",montype="barbarian" })
des.object({ id="corpse",montype="barbarian" })
des.object({ id="corpse",montype="caveman" })
des.object({ id="corpse",montype="cavewoman" })
des.object({ id="corpse",montype="healer" })
des.object({ id="corpse",montype="healer" })
des.object({ id="corpse",montype="knight" })
des.object({ id="corpse",montype="knight" })
des.object({ id="corpse",montype="ranger" })
des.object({ id="corpse",montype="ranger" })
des.object({ id="corpse",montype="rogue" })
des.object({ id="corpse",montype="rogue" })
des.object({ id="corpse",montype="samurai" })
des.object({ id="corpse",montype="samurai" })
des.object({ id="corpse",montype="tourist" })
des.object({ id="corpse",montype="tourist" })
des.object({ id="corpse",montype="valkyrie" })
des.object({ id="corpse",montype="valkyrie" })
des.object({ id="corpse",montype="wizard" })
des.object({ id="corpse",montype="wizard" })


-- Wine Cellar
des.object("!", 01,11)
des.object("!", 01,12)
des.object("!", 01,13)
des.object("!", 01,14)
des.object("!", 01,15)
des.object("!", 01,16)
des.object("!", 01,17)
des.object("!", 01,18)
des.object("!", 02,11)
des.object("!", 02,12)
des.object("!", 02,13)
des.object("!", 02,14)
des.object("!", 02,15)
des.object("!", 02,16)
des.object("!", 02,17)
des.object("!", 02,18)


-- (Not so) Random traps.
des.trap("spiked pit")
des.trap("spiked pit")
des.trap("sleep gas")
des.trap("board")
des.trap("board")
des.trap("dart")
des.trap("dart")
des.trap("anti magic")
des.trap("anti magic")
des.trap("magic")
des.trap("magic")

-- Pseudo-barracks
for bar_x=06,12 do
	for bar_y=06,08 do
		local bar_m_i = nh.rn2(9) + 1
		if bar_m_i < 6 then
			des.monster({ id = "barrow wight", coord = {bar_x, bar_y}, asleep=1, inventory = function()
					des.object({ id = "spetum", material="copper" })
					if nh.rn2(2) == 0 then
						des.object({ id = "short sword", material="copper" })
					else
						des.object({ id = "spear", material="copper" })
					end
					if nh.rn2(4) ~= 0 then
						des.object({ id = "knife", material="copper" })
					end
					des.object({ id = "dented pot", material="copper" })
					des.object({ id = "ring mail", material="copper" })
					des.object("plain cloak")
					des.object("small shield")
					des.object("low boots")
					des.object("c-ration")
				end
			})
		elseif bar_m_i == 6 or bar_m_i == 7 then
			des.monster({ id = "vampire", coord = {bar_x, bar_y}, waiting=1, inventory = function()
					if nh.rn2(2) == 0 then
						des.object({ id = "flail", material="iron" })
					else
						des.object({ id = "mace", material="iron" })
					end
					if nh.rn2(4) ~= 0 then
						des.object({ id = "knife", material="iron" })
					end
					des.object({ id = "helmet", material="iron" })
					des.object({ id = "splint mail", material="iron" })
					des.object("small shield")
					des.object("low boots")
					des.object("c-ration")
				end
			})
		elseif bar_m_i == 8 then
			des.monster({ id = "vampire leader", coord = {bar_x, bar_y}, waiting=1, inventory = function()
					if nh.rn2(2) == 0 then
						des.object({ id = "broadsword", material="iron" })
					else
						des.object({ id = "long sword", material="iron" })
					end
					if nh.rn2(4) ~= 0 then
						des.object({ id = "knife", material="iron" })
					end
					des.object({ id = "helmet", material="iron" })
					des.object({ id = "splint mail", material="iron" })
					des.object({ id = "large shield", material="iron" })
					des.object("high boots")
					des.object("k-ration")
				end
			})
		elseif bar_m_i == 9 then
			des.monster({ id = "vampire leader", coord = {bar_x, bar_y}, waiting=1, inventory = function()
					if nh.rn2(2) == 0 then
						des.object({ id = "saber", material="adamantine" })
					else
						des.object({ id = "long sword", material="adamantine" })
					end
					if nh.rn2(4) ~= 0 then
						des.object({ id = "knife", material="adamantine" })
					end
					des.object({ id = "helmet", material="adamantine" })
					des.object({ id = "plate mail", material="adamantine" })
					des.object({ id = "large shield", material="adamantine" })
					des.object("opera cloak")
					des.object("high boots")
					des.object("k-ration")
				end
			})
		end
	end
end
-- Some pool monsters
des.monster("vampire", 40,03)
des.monster("vampire", 45,03)
des.monster("vampire", 50,03)
des.monster("vampire leader", 55,03)
des.monster("vampire leader", 60,03)
des.monster("vampire leader", 40,06)
des.monster("water demon", 45,06)
des.monster("water demon", 50,06)
des.monster("water demon", 55,06)
des.monster("water troll", 60,06)
des.monster("water troll", 40,09)
des.monster("water troll", 45,09)
des.monster("wraith", 50,09)
des.monster("wraith", 55,09)
des.monster("wraith", 60,09)

-- Guardians
des.monster("&", 18,4)
des.monster("&", 18,6)
des.monster("&", 19,5)
des.monster("&", 20,4)
des.monster("&", 20,6)

-- Random monsters.
-- The ghosts.
des.monster("ghost")
des.monster("ghost")
des.monster("ghost")
des.monster("ghost")
des.monster("ghost")
des.monster("ghost")
-- Add a few bats for atmosphere.
des.monster("vampire bat")
des.monster("vampire bat")
des.monster("vampire bat")
-- And a lich for good measure.
des.monster("L")
-- Some undead nasties for good measure
des.monster("W")
des.monster("W")
des.monster("W")
des.monster("Z")
des.monster("Z")
des.monster("Z")
des.monster("Z")
des.monster("M")
des.monster("M")
des.monster("M")
des.monster("M")
