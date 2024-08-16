-- Written by Keith Simpson for EvilHack
-- Modified for mHack by Ratan Varghese

des.level_init({ style = "solidfill", fg = "-" })

des.level_flags("mazelevel", "nommap")

--[[
#         1         2         3         4         5         6         7
#123456789012345678901234567890123456789012345678901234567890123456789012345
]]
des.map({ halign = "center", valign = "center", map = [[
---------------------------------------------------------------------------
|                           ---------------                               |
|  ---------                |wwwwwwwwwwwww|                         ----  |
|  |wwwwwww|----------------|wwwwwww...www|-------------------------|ww|  |
|  |w.....wwwwwwwwwwwwwwwwwwwww.........wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww|  |
|  |wwwwwww|---------w------|wwww.......ww|--w--w-------------w-----|ww|  |
|  -----w---..wwww..|w|     |wwwwwwwwwwwww| |w||w|..wwwwwwwww|w|    ----  |
|      |w| |..wwww..|w|     -------w---------w||ww..wwwwwwww\|w------     |
|      |w| |..wwww..|w|           |w|wwwwwwwww||w|..wwwwwwwww|wwwwww|     |
|      |w------------w------      |w|w----------w---------w--------w|     |
|      |wwwwwwwwwwwwwwwwwww|-------w|w|wwwwwwwwwwwwwww|  |w|      |w|     |
| ---- --------|www....wwwwwwwwwwwww|w|wwwwwwww......w|  |w|    ---w----  |
| |ww|---------|w.........w|-------www|wwwwww.......ww|---w-----|wwwwww|  |
| |wwwwwwwwwwwwwwwww....www|----------|wwww.......wwwwwwwwwwwwwwww...ww|  |
| |ww|---------|wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww|---------|wwwwww|  |
| ----         ----------------------------------------         --------  |
|                                                                         |
---------------------------------------------------------------------------
]] });

local stones = { {03,14},{70,03},{12,07} }
shuffle(stones)

des.region(selection.area(0,0,74,17), "unlit")
-- Secret doors
des.door("locked",05,13)
des.door("locked",15,13)
des.door("locked",49,04)
des.door("locked",49,07)
des.door("locked",58,09)
des.door("locked",58,12)
des.door("locked",61,04)
des.door("locked",68,04)
des.door("locked",67,11)
-- Stairs
des.stair("up", 48,12)
-- Non diggable / non phase walls
-- des.non_diggable(selection.area(0,0,74,17))
-- -0-des.non_passwall(selection.area(0,0,74,17))
-- Niches
-- Note: stones[3] empty
des.object({ id="luckstone", coord=stones[1], buc="not-cursed", achievement=1 })
des.object("loadstone", stones[2])
-- Traps
des.trap("teleport",05,04)
des.trap("teleport",12,08)
des.trap("teleport",68,13)
des.trap()
des.trap()
des.trap()
des.trap()
des.trap()
des.trap()
des.trap()
des.trap()
-- Objects
des.object({ id = "chest", trapped = 0, locked = 1, x = 19, y = 06 ,
            contents = function()
                 des.object("ruby")
                 des.object("emerald")
                 des.object("diamond")
                 des.object("dilithium crystal")
                 des.object("!")
                 des.object("!")
                 des.object("?")
                 des.object("?")
                 des.object("+")
                 des.object("+")
                 -- trying to have a random tool spawn inside
                 -- a container could result in large box or
                 -- chest forming inside of it, so specifiy
                 -- what we want to have spawn
                 local tool_list = {
                     "oilskin sack", "stethoscope", "can of grease", "tinning kit",
                     "fire horn", "frost horn", "magic flute", "magic harp",
                     "drum of earthquake", "magic whistle", "expensive camera",
                     "horn of plenty", "saddle"
                 }
                 des.object(table.remove(tool_list, d(#tool_list)))
                 des.object(table.remove(tool_list, d(#tool_list)))
                 des.object(table.remove(tool_list, d(#tool_list)))
            end
})

-- These sewers are gross
des.object({ id = "corpse", montype = "baby purple worm" })
des.object({ id = "corpse", montype = "baby long worm" })
des.object({ id = "corpse", montype = "giant rat" })
des.object({ id = "corpse", montype = "sewer rat" })
des.object({ id = "corpse", montype = "shark" })
des.object({ id = "corpse", montype = "piranha" })
des.object({ id = "corpse", montype = "giant eel" })
des.object({ id = "corpse", montype = "giant eel" })
des.object({ id = "corpse", montype = "electric eel" })
des.object({ id = "corpse", montype = "electric eel" })
des.object({ id = "corpse", montype = "electric eel" })
des.object({ id = "corpse", montype = "electric eel" })
des.object("kelp frond")
des.object("kelp frond")
des.object("kelp frond")
des.object("kelp frond")
-- RIP
des.object({ id = "corpse", montype = "dwarf" })
des.object({ id = "corpse", montype = "dwarf" })
des.object({ id = "corpse", montype = "gnome" })
des.object({ id = "corpse", montype = "gnome" })
-- Danger!
des.object({ id = "corpse", montype = "water troll", coord = {51, 07} })

des.object("/")
des.object("/")
des.object("=")
des.object("=")
des.object("=")
des.object("=")
des.object("=")
des.object("=")
des.object("=")
des.object("*")
des.object("*")
des.object("*")
des.object("*")
des.object("*")
des.object("*")


-- Monsters
des.monster({ id = "wererat", coord = {60, 07}, peaceful=0, asleep=1, inventory = function()
    des.object({ id = "potion of invisibility", buc = "cursed" })
end })
des.monster('giant spider', 18, 07)
des.monster('scorpion', 52, 07)
des.monster({ id = "sewer rat", coord = {59, 06}, peaceful=0 })
des.monster({ id = "sewer rat", coord = {59, 08}, peaceful=0 })
des.monster({ id = "sewer rat", coord = {60, 06}, peaceful=0 })
des.monster({ id = "sewer rat", coord = {60, 08}, peaceful=0 })
des.monster('green slime', 04, 12)
des.monster('soldier ant', 04, 14)
des.monster('green slime', 69, 03)
des.monster('soldier ant', 69, 05)
des.monster('green slime', 15, 06)
des.monster('soldier ant', 17, 07)
des.monster('green slime', 16, 06)
des.monster('soldier ant', 16, 07)

des.monster("baby crocodile")
des.monster("baby crocodile")
des.monster("crocodile")
des.monster("r")
des.monster("r")
des.monster("r")
des.monster("r")
des.monster("r")
des.monster("r")
des.monster("r")
des.monster("r")
des.monster("r")
des.monster("r")
des.monster("r")
des.monster("r")
des.monster("r")
des.monster("r")
des.monster("r")
des.monster("r")
des.monster("r")
des.monster("r")
des.monster("S")
des.monster("S")
des.monster("S")
des.monster("S")
des.monster("S")
des.monster("S")
des.monster("S")
des.monster("S")
des.monster("S")
des.monster("S")
des.monster("S")
des.monster("b")
des.monster("b")
des.monster("b")
des.monster("b")
des.monster("b")
des.monster("b")
des.monster("b")
des.monster("P")
des.monster("P")
des.monster("P")
des.monster("P")
des.monster("P")
des.monster("P")