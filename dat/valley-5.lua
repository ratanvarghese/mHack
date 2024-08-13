-- Lost Tomb
-- Copyright (c) 1989 by Jean-Christophe Collet
-- Copyright (c) 1991 by M. Stephenson
-- NetHack may be freely redistributed. See license for details.

-- Converted to Lua for SpliceHack
-- Modified to be a Valley variant for mHack

des.level_init({ style = "solidfill", fg = " " });

des.level_flags("mazelevel", "noteleport", "hardfloor", "nommap", "temperate");

--[[
0         1         2         3         4         5         6         7    7
0123456789012345678901234567890123456789012345678901234567890123456789012345
--]]
des.map({ halign = "center", valign = "center", map = [[
             --------       ------------      ------                        0
             |......|      --..........---    |....|    ----   ---------    1
             |......|      |....------...---- |..--- ----..-----.......|    2
             |---.--|      |....--------....| --.|   |.....B...........--   3
                 #         ---......----....|  |.|----.....------.......--  4
                 #           ---...........-- --.--.B......|    |........|  5
            |----S---|     ---------.......|  |.....B......|    |........|  6
|------|    |........|     |.......|.......| --.---.B.---..---- --......--  7
|......------........|------.......|......-- |..| ---.| |.....|  |......|   8
|......+.............+.....+.......S......|  |..|   |.| -----.|  |.------   9
|......+.............+.....+.......S....--- --..-----.|     |.-- ---        0
|......------........|------.......|....|   |......B..|     |..------------ 1
|------|    |........|     |.......|--..|   |...----..|     --....+.......| 2
            |---S----|     --------- |..|   -----  |..--     ------.......| 3
                #               --.| |..|          |...-- ----    |.......| 4
                #              --..---BB| ----- ----....| |..|----|.......| 5
             |--.---|          |........---...---.......| |.--....S.......| 6
             |......|          ---..............B.......| |....---|.......| 7
             |......|            |..............B.....--- |.----  --------- 8
             --------            ----------------------   ---               9
]]});

-- Dungeon Description
-- The shrine to Moloch.
des.region({ region={67,12, 73,17},lit=1,type="temple",filled=2 })
-- The Morgues
des.region({ region={35,16, 39,18},lit=0,type="morgue",filled=1,irregular=1 })
des.region({ region={45,11, 47,12},lit=0,type="morgue",filled=1,irregular=1 })
des.region({ region={65,02, 70,08},lit=0,type="morgue",filled=1,irregular=1 })
-- Stairs
des.stair("down", 60,15)
-- Branch location
des.levregion({ type="branch", region={01,09,01,09} })
des.teleport_region({ region = {01,08,06,11}, dir="down" })

-- Doors
des.door("locked", 7, 09)
des.door("locked", 7, 10)
des.door("locked", 21, 09)
des.door("locked", 21, 10)
des.door("locked", 27, 09)
des.door("locked", 27, 10)
des.door("nodoor", 66, 12)

-- The altar of Moloch.
des.altar({ x=70,y=14,align="noalign", type="shrine" })

-- Non diggable walls - everywhere!
des.non_diggable(selection.area(00,00,75,19))

-- Traps
des.trap("spiked pit")
des.trap("spiked pit")
des.trap("spiked pit")
des.trap("spiked pit")
des.trap("spiked pit")

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
des.object("chest", 34, 09)
des.gold({x = 34, y = 09})
des.gold({x = 34, y = 09})
des.gold({x = 34, y = 09})
des.gold({x = 34, y = 09})
des.gold({x = 34, y = 09})
des.gold({x = 34, y = 09})
des.gold({x = 34, y = 09})
des.gold({x = 34, y = 09})
des.gold({x = 34, y = 09})
des.gold({x = 34, y = 09})
des.object("?", 34, 09)
des.object("?", 34, 09)
des.object("?", 34, 09)
des.object("?", 34, 09)
des.object("!", 34, 09)
des.object("!", 34, 09)
des.object("!", 34, 09)
des.object({x = 34, y = 09})
des.object({x = 34, y = 09})
des.object({x = 34, y = 09})
des.object()
des.object("chest", 16, 01)
des.object({x = 16, y = 01})
des.object({x = 16, y = 01})
des.object({x = 16, y = 01})
des.object("chest", 17, 18)
des.object({x = 17, y = 18})
des.object({x = 17, y = 18})
des.object({x = 17, y = 18})
des.object("chest", 34, 10)
des.gold({x = 34, y = 10})
des.gold({x = 34, y = 10})
des.gold({x = 34, y = 10})
des.gold({x = 34, y = 10})
des.gold({x = 34, y = 10})
des.gold({x = 34, y = 10})
des.gold({x = 34, y = 10})
des.gold({x = 34, y = 10})
des.gold({x = 34, y = 10})
des.gold({x = 34, y = 10})
des.object("?", 34, 10)
des.object("?", 34, 10)
des.object("?", 34, 10)
des.object("?", 34, 10)
des.object("+", 34, 10)
des.object("+", 34, 10)
des.object("+", 34, 10)
des.object("+", 34, 10)
des.object({x = 34, y = 10})
des.object({x = 34, y = 10})
des.object({x = 34, y = 10})
des.object({x = 34, y = 10})
des.object({x = 34, y = 10})

-- Monsters
des.monster("L", 34, 9)
des.monster("ghost", 13, 09)
des.monster("ghost", 13, 10)
des.monster("ghost", 14, 09)
des.monster("ghost", 14, 10)
des.monster("ghost", 19, 09)
des.monster("ghost", 19, 10)
des.monster("ghost", 20, 09)
des.monster("ghost", 20, 10)
des.monster("ghost")
des.monster("ghost")
des.monster("ghost")
des.monster("ghost")
des.monster("ghost")
des.monster("Z", 13, 07)
des.monster("Z", 13, 12)
des.monster("Z", 16, 07)
des.monster("Z", 16, 12)
des.monster("Z", 17, 07)
des.monster("Z", 17, 12)
des.monster("Z", 20, 07)
des.monster("Z", 20, 12)
des.monster("Z")
des.monster("Z")
des.monster("Z")
des.monster("Z")
des.monster("Z")
des.monster("Z")
des.monster("Z")
des.monster("Z")
des.monster("Z")
des.monster("Z")
des.monster("Z")
des.monster("M", 14, 07)
des.monster("M", 14, 12)
des.monster("M", 15, 07)
des.monster("M", 15, 12)
des.monster("M", 18, 07)
des.monster("M", 18, 12)
des.monster("M", 19, 07)
des.monster("M", 19, 12)
des.monster("M")
des.monster("M")
des.monster("M")