-- From the Lethe patch

des.level_init({ style = "solidfill", fg = " " });

des.level_flags("mazelevel", "noteleport", "hardfloor", "nommap", "temperate");

--[[
#         1         2         3         4         5         6         7
#123456789012345678901234567890123456789012345678901234567890123456789012345
]]
des.map([[
----------------------------------------------}}}}--------------------------0
|...| |...............|   |................| }}}} |-.....|  |.....|..|.S...|1
|.-.---........---....-----.-----..........--}}}} |......|  |.---.--.|.|---|2
|--...........-| |---.......|   |.............}}}}|......-- |.| |..|.|.|   |3
| -------......---..--------|   |------.......}}}}---.....| |.| |..S...|   |4
|  ---- ----................-----...| --...|...}}}}F.....-| |.| -----------|5
|---..---- -----------..............|  |...|...}}}}--.....| |.---....S.....|6
|........------      -FF---..---....|  ---......}}}}|.....| |......|.|.....|7
|.............--------..------ --BB----| --.....}}}}--....| |------|.|.....|8
|---.....................--    |.......|  --...| }}}}|-BBB---......--|.....|9
|  ----..............||...|    |.......|   |...--}}}}|.....|...||....S.....|0
|     --.............||...| ----.......|   |.....}}}}|.....S..-||-...|.....|1
|    --...----.----.......| |..........--------.}}}}......---......--|.....|2
|  ---....|  |.| ----..---------..........|..}}}.}}}..|...---------| |.....|3
|---.....-| --.---..----.......---........}}}}}}}.}------.B.|......| |.....|4
}}}}}}}}..---...........}}}}}}..BBBBB--}}}}}}}}}}}...|.|---........| ------|5
}}}}}}}}}}}}}}}.....}}}}}}}}}}}}}}}}}}}}}}}}}}}}}..|...|  |........|       |6
}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}|..-----------.....--       |7
|   }}}}}}}}}}}}}}}}}}}}}}    }}}}}}}}}}}}...   |.........B....|..|        |8
-----------}}}}}}}}}}}}-----------------------------------------------------9
]])

-- Dungeon Description
-- The shrine to Moloch.
des.region({ region={70,06,74,14},lit=1,type="temple",filled=2 })
-- The Morgues
des.region({ region={52,01,57,08},lit=0,type="morgue",filled=1,irregular=1 })
des.region({ region={59,14,66,18},lit=0,type="morgue",filled=1,irregular=1 })
des.region({ region={32,09,42,14},lit=0,type="morgue",filled=1,irregular=1 })
-- Stairs
des.stair("down", 74,01)
-- Branch location
des.levregion({ type="branch", region={05,09,05,09} })
des.teleport_region({ region = {01,06,20,11}, dir="down" })

-- Secret Doors
des.door("locked",71,01)
des.door("locked",67,04)
des.door("locked",69,06)
des.door("locked",69,10)
des.door("locked",59,11)

-- The altar of Moloch.
des.altar({ x=72,y=10,align="noalign", type="shrine" })

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

--
-- Some random weapons and armor.
--
des.object("[")
des.object("[")
des.object("[")
des.object("[")
des.object(")")
des.object(")")
des.object(")")
des.object(")")
--
-- Some random loot.
--
des.object("ruby")
des.object("*")
des.object("*")
des.object("!")
des.object("!")
des.object("!")
des.object("?")
des.object("?")
des.object("?")
des.object("/")
des.object("/")
des.object("=")
des.object("=")
des.object("+")
des.object("+")
des.object("(")
des.object("(")
des.object("(")

-- (Not so) Random traps.
des.trap("spiked pit", 70,02)
des.trap("spiked pit", 61,05)
des.trap("sleep gas", 72,01)
des.trap("board", 56,12)
des.trap("board")
des.trap("dart", 15,01)
des.trap("dart", 49,17)
des.trap("anti magic")
des.trap("anti magic")
des.trap("magic")
des.trap("magic")

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
des.monster("V")
des.monster("V")
des.monster("V")
des.monster("Z")
des.monster("Z")
des.monster("Z")
des.monster("Z")
des.monster("M")
des.monster("M")
des.monster("M")
des.monster("M")
