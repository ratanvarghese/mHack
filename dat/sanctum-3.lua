-- Written for SLASH by Tom Proudfoot ... probably???
-- Converted to Lua and modified heavily for mHack by Ratan Varghese


--GEOMETRY: center,center
des.level_init({ style = "solidfill", fg = " " });
des.level_flags("mazelevel", "hardfloor", "noteleport", "nommap")

--[[
0         1         2         3         4         5         6         7    7
0123456789012345678901234567890123456789012345678901234567890123456789012345
--]]
des.map([[
----------------------------------------------------------------------------0
|................|...............|                                         |1
|-----+-----------...............---------------------                     |2
|    ...    |.......------------..+..................--------------        |3
|     ...   |.......|..........----...............................|        |4
|      .... |...-----.............................................|        |5
|       ....|...|...............-----.-----.-----.-----.-----.....----     |6
|       ....|...|...............|...|.|...|.|...|.|...|.|...|........|     |7
|      .....|...|......----------...---...---...---...---...-----....----  |8
|     ......|...|......|.......|..............................|.|.......|  |9
|    .......+...|......|.......+..............................S.|.......|  |0
|     ......|...|......|.......|..............................|.|.......|  |1
|      .....|...|......----------...---...---...---...---...-----....----  |2
|       ....|...|...............|...|.|...|.|...|.|...|.|...|........|     |3
|       ....|...|...............-----.-----.-----.-----.-----.....----     |4
|      .... |...-----.............................................|        |5
|     ...   |.......|..........----...............................|        |6
|    ...    |.......------------..+..................--------------        |7
|-----+-----------...............---------------------                     |8
|................|...............|                                         |9
----------------------------------------------------------------------------0
]]);
des.region({ region={32,09,61,11}, lit=1, type="temple", filled=2 })
des.altar({ x=60, y=10, align="noalign", type="sanctum" })
des.region({ region={08,08, 11,12}, lit=0, type="morgue", filled=1, irregular=1 })

-- Non diggable and phaseable walls
des.non_diggable(selection.area(00,00,75,19))
des.non_passwall(selection.area(00,00,75,19))

if nh.rn2(2) == 0 then
   des.stair("up",14,01)
else
   des.stair("up",14,19)
end

local function place_secret_door()
   local x = 23 + nh.rn2(8)
   local y = nil
   if x == 23 then
      y = 9 + nh.rn2(3)
   else
      y = 8 + (4 * nh.rn2(2))
   end
   des.replace_terrain({ region = {x, y, x, y}, fromterrain = "|", toterrain='S' })
   des.replace_terrain({ region = {x, y, x, y}, fromterrain = "-", toterrain='S' })
end
place_secret_door()

-- doors
des.door("random",06,02)
des.door("random",06,18)
des.door("random",12,10)
des.door("locked",31,10)
des.door("locked",34,03)
des.door("locked",34,17)

-- around the temple entrance
des.trap("fire",22,07)
des.trap("fire",22,08)
des.trap("fire",22,09)
des.trap("fire",22,10)
des.trap("fire",22,11)
des.trap("fire",22,12)
des.trap("fire",22,13)
des.trap("fire",23,07)
des.trap("fire",23,13)
des.trap("fire",24,07)
des.trap("fire",24,13)
des.trap("fire",25,07)
des.trap("fire",25,13)
des.trap("fire",26,07)
des.trap("fire",26,13)
des.trap("fire",27,07)
des.trap("fire",27,13)
des.trap("fire",28,07)
des.trap("fire",28,13)
des.trap("fire",29,07)
des.trap("fire",29,13)
des.trap("fire",30,07)
des.trap("fire",30,13)
des.trap("fire",31,07)
des.trap("fire",31,13)
-- Some random objects
des.object("!")
des.object("!")
des.object("!")
des.object("!")
des.object("?")
des.object("?")
des.object("?")
des.object("?")
des.object("?")
des.object("/")
des.object("/")
des.object("/")
des.object("=")
des.object("=")
des.object("=")
-- Some treasure
des.object("magic marker", 63, 09)
des.object("chest", 63, 09)
des.object("amulet of flying", 63, 10)
des.object("chest", 63, 10)
des.object("helm of opposite alignment", 63, 11)
des.object("chest", 63, 11)
-- five gargoyles on either side, in the niches of the temple
des.monster({ id = "winged gargoyle", coord = {34,07}, asleep = 1, peaceful = 0 })
des.monster({ id = "winged gargoyle", coord = {40,07}, asleep = 1, peaceful = 0 })
des.monster({ id = "winged gargoyle", coord = {46,07}, asleep = 1, peaceful = 0 })
des.monster({ id = "winged gargoyle", coord = {52,07}, asleep = 1, peaceful = 0 })
des.monster({ id = "winged gargoyle", coord = {58,07}, asleep = 1, peaceful = 0 })
des.monster({ id = "winged gargoyle", coord = {34,13}, asleep = 1, peaceful = 0 })
des.monster({ id = "winged gargoyle", coord = {40,13}, asleep = 1, peaceful = 0 })
des.monster({ id = "winged gargoyle", coord = {46,13}, asleep = 1, peaceful = 0 })
des.monster({ id = "winged gargoyle", coord = {52,13}, asleep = 1, peaceful = 0 })
des.monster({ id = "winged gargoyle", coord = {58,13}, asleep = 1, peaceful = 0 })
-- clerics
des.monster({ id = "aligned cleric", coord = {33,09}, align="noalign", asleep = 1, peaceful = 0 })
des.monster({ id = "aligned cleric", coord = {33,11}, align="noalign", asleep = 1, peaceful = 0 })
des.monster({ id = "aligned cleric", coord = {35,09}, align="noalign", asleep = 1, peaceful = 0 })
des.monster({ id = "aligned cleric", coord = {35,11}, align="noalign", asleep = 1, peaceful = 0 })
-- demons down by the altar...
des.monster({ id = "bone devil", coord = {57,8}, asleep = 1, peaceful = 0 })
des.monster({ id = "marilith", coord = {58,8}, asleep = 1, peaceful = 0 })
des.monster({ id = "barbed devil", coord = {59,8}, asleep = 1, peaceful = 0 })
des.monster({ id = "vrock", coord = {57,12}, asleep = 1, peaceful = 0 })
des.monster({ id = "horned devil", coord = {58,12}, asleep = 1, peaceful = 0 })
des.monster({ id = "hezrou", coord = {59,12}, asleep = 1, peaceful = 0 })
-- a horde of zombies is also inside....
des.monster({ class = 'Z', coord = {37,09}, asleep = 1, peaceful = 0 })
des.monster({ class = 'Z', coord = {38,09}, asleep = 1, peaceful = 0 })
des.monster({ class = 'Z', coord = {39,09}, asleep = 1, peaceful = 0 })
des.monster({ class = 'Z', coord = {40,09}, asleep = 1, peaceful = 0 })
des.monster({ class = 'Z', coord = {41,09}, asleep = 1, peaceful = 0 })
des.monster({ class = 'Z', coord = {42,09}, asleep = 1, peaceful = 0 })
des.monster({ class = 'Z', coord = {43,09}, asleep = 1, peaceful = 0 })
des.monster({ class = 'Z', coord = {37,10}, asleep = 1, peaceful = 0 })
des.monster({ class = 'Z', coord = {38,10}, asleep = 1, peaceful = 0 })
des.monster({ class = 'Z', coord = {39,10}, asleep = 1, peaceful = 0 })
des.monster({ class = 'Z', coord = {40,10}, asleep = 1, peaceful = 0 })
des.monster({ class = 'Z', coord = {41,10}, asleep = 1, peaceful = 0 })
des.monster({ class = 'Z', coord = {42,10}, asleep = 1, peaceful = 0 })
des.monster({ class = 'Z', coord = {43,10}, asleep = 1, peaceful = 0 })
des.monster({ class = 'Z', coord = {37,11}, asleep = 1, peaceful = 0 })
des.monster({ class = 'Z', coord = {38,11}, asleep = 1, peaceful = 0 })
des.monster({ class = 'Z', coord = {39,11}, asleep = 1, peaceful = 0 })
des.monster({ class = 'Z', coord = {40,11}, asleep = 1, peaceful = 0 })
des.monster({ class = 'Z', coord = {41,11}, asleep = 1, peaceful = 0 })
des.monster({ class = 'Z', coord = {42,11}, asleep = 1, peaceful = 0 })
des.monster({ class = 'Z', coord = {43,11}, asleep = 1, peaceful = 0 })
-- some monsters for the surrounding areas
des.monster("gargoyle", 13,03)
des.monster("gargoyle", 13,17)
des.monster("gargoyle", 15,10)
des.monster("J", 25,01)
des.monster("J", 25,19)
des.monster("iron golem", 63,09)
des.monster("iron golem", 63,10)
des.monster("iron golem", 63,11)
des.monster({ id = "aligned cleric", coord = {20,08}, align="noalign", asleep = 1, peaceful = 0 })
des.monster({ id = "aligned cleric", coord = {20,12}, align="noalign", asleep = 1, peaceful = 0 })
des.monster({ id = "aligned cleric", coord = {40,04}, align="noalign", asleep = 1, peaceful = 0 })
des.monster({ id = "aligned cleric", coord = {40,16}, align="noalign", asleep = 1, peaceful = 0 })
-- A few nasties
des.monster("L")
des.monster("L")
des.monster("V")
des.monster("V")
des.monster("V")
des.monster("D")
des.monster("D")
des.monster("&")
des.monster("&")
des.monster("&")
des.monster("&")
-- Teleporting to this level is allowed after the invocation creates its
-- entrance.  Force arrival in that case to be on leftmost portion of level.
des.teleport_region({ region = {01,01,11,19}, region_islev=1, dir="down" })
