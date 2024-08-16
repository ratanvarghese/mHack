-- Written for Orc Temple Patch by Khor
-- Modified by Keith Simpson for EvilHack
-- Converted to Lua and modified for mHack by Ratan Varghese

des.level_init({ style = "solidfill", fg = "-" })

des.level_flags("mazelevel", "nommap")

--[[
#         1         2         3         4         5         6         7
#123456789012345678901234567890123456789012345678901234567890123456789012345
]]
des.map({ halign = "center", valign = "bottom", map = [[
                                                                   |-----|  
                                             -------        ----- |-LLLLL-| 
                         ---------------     |.....|        |...||-LL...LL-|
                        -|..|..........|     |.....|        |...||LL.....LL|
                       -|...F..........|     |.....|        |...||L.......L|
         |-------|    -|....|-+------+-|    ----+----       |LLL||L.......L|
        |-.......-|  -|.....F..........|----|.......|---------S---L.......L|
 -------|.........|--|.....--...............F.......F.....||.....|LL.....LL|
-|..........}}}...........-|..............................--.....|-LL...LL-|
|...........}{}...........+...............................+......||-LL.LL-| 
-|..........}}}...........-|..............................--.....| |--S--|  
 -------|.........|--|.....--...............F.......F.....||.....|    .     
        |-.......-|  -|.....F..........|----|.......|---------S---    .     
         |-------|    -|....|-+------+-|    ----+----         .       .     
                       -|...F..........|     |.....|                        
                        -|..|..........|     |.....|                        
                         ---------------     |.....|                        
                                             -------                     ..}
                                                                         .}}
                                                                        .}}{
]] });

local stones = { {0,18},{0,12},{2,18},{12,14},{22,14},{16,16},{72,18},{52,14},{44,14} }
shuffle(stones)

des.region(selection.area(0,0,75,19), "unlit")
des.region(selection.area(61,2,63,5), "lit")
des.region(selection.area(66,1,75,9), "lit")

des.stair("up", 1,9)

-- SOME ORCS (The religious kind)
des.monster("goblin")
des.monster("goblin")
des.monster("goblin")
des.monster("hobgoblin")
des.monster("hill orc")
des.monster("hill orc")
des.monster("hill orc")
des.monster("hill orc")
des.monster("hill orc")
des.monster("hill orc")
des.monster("hill orc")
des.monster("hill orc")
des.monster("Mordor orc")
des.monster("Mordor orc")
des.monster("Mordor orc")
des.monster("Mordor orc")
des.monster("Mordor orc")
des.monster("Mordor orc")
des.monster("Mordor orc")
des.monster("Mordor orc")
des.monster("o")
des.monster("o")
des.monster("o")
des.monster("o")
des.monster("o")
des.monster("o")
des.monster("o")
des.monster("o")
des.monster("o")
des.monster("o")

-- SECRET CAVE
des.altar({ x=70,y=5,align="noalign", type="shrine" })
des.door("closed",62,12)
des.door("closed",70,10)
des.object({ id = "scroll of scare monster", coord = {70,5}, buc = "cursed" })
des.engraving({ coord = {70,5}, type = "burn", text = "Moloch" })
des.object({ id = "figurine", x = 70, y=5, montype="balrog" })
des.object({ id="luckstone", coord=stones[1], buc="not-cursed", achievement=1 })
des.object("flint", stones[2])
des.object("*", stones[3])
des.object("*", stones[4])
des.object("*", stones[5])
des.object("*", stones[6])
des.object("*", stones[7])
des.object("*", stones[8])

-- Magic marker in a chest
des.object({ id = "chest", trapped = 0, locked = 1, coord = stones[9] ,
             contents = function()
                des.object("magic marker");
             end
});

-- shamans guarding the inner temple/figurine
des.monster({ id = "orc shaman", x=69, y=3, asleep=1, peaceful=0 })
des.monster({ id = "orc shaman", x=71, y=3, asleep=1, peaceful=0 })
des.monster({ id = "orc shaman", x=68, y=4, asleep=1, peaceful=0 })
des.monster({ id = "orc shaman", x=72, y=4, asleep=1, peaceful=0 })
des.monster({ id = "orc shaman", x=68, y=6, asleep=1, peaceful=0 })
des.monster({ id = "orc shaman", x=72, y=6, asleep=1, peaceful=0 })
des.monster({ id = "orc shaman", x=69, y=7, asleep=1, peaceful=0 })
des.monster({ id = "orc shaman", x=71, y=7, asleep=1, peaceful=0 })

-- TEMPLE
local unholy_text = {
	"Blessed are the destroyers of false hope.", -- The Satanic Bible
	"Morality is an illusion, a shield for the weak.", -- Animorphs VISSER
	"Destruction, hence, like creation, is one of Nature's mandates.", -- Marquis de Sade
	"Agh burzum-ishi krimpatul." --"and in the darkness bind them", Lord of the Rings
}
des.engraving({ coord = {55,9}, type = "burn", text = unholy_text[1] })
des.monster({ id = "orc shaman", x=55,y=9, asleep=1 })
des.engraving({ coord = {48,3}, type = "burn", text = unholy_text[2] })
des.monster({ id = "orc shaman", x=48,y=3, asleep=1 })
des.engraving({ coord = {48,15}, type = "burn", text = unholy_text[3] })
des.monster({ id = "orc shaman", x=48,y=15, asleep=1 })
des.engraving({ coord = {25,09}, type = "burn", text = unholy_text[4] })
des.monster({ id = "orc shaman", x=25,y=09, asleep=1 })
des.object({ id = "statue", x = 56, y=8, montype="orc shaman", historic = true })
des.object({ id = "statue", x = 56, y=10, montype="orc-captain", historic = true })
des.object({ id = "statue", x = 50, y=3, montype="hill orc", historic = true })
des.object({ id = "statue", x = 46, y=3, montype="hill orc", historic = true })
des.object({ id = "statue", x = 50, y=15, montype="Mordor orc", historic = true })
des.object({ id = "statue", x = 46, y=15, montype="Mordor orc", historic = true })
des.object({ id = "statue", x = 29, y=03, montype="Mordor orc", historic = true })
des.object({ id = "statue", x = 32, y=03, montype="hill orc", historic = true })
des.object({ id = "statue", x = 35, y=03, montype="hill orc", historic = true })
des.object({ id = "statue", x = 38, y=03, montype="orc shaman", historic = true })
des.object({ id = "statue", x = 29, y=15, montype="Mordor orc", historic = true })
des.object({ id = "statue", x = 32, y=15, montype="hill orc", historic = true })
des.object({ id = "statue", x = 35, y=15, montype="orc-captain", historic = true })
des.object({ id = "statue", x = 38, y=15, montype="orc shaman", historic = true })
des.object("chest", 61, 2)
des.object("chest", 63, 2)
des.altar({ x=48,y=2,align="noalign", type="shrine" })
des.altar({ x=48,y=16,align="noalign", type="shrine" })
des.altar({ x=56,y=9,align="noalign", type="shrine" })
-- A hidden elven temple from the days of old before this
-- site had been overrun by orcs. Chance that some elves
-- are barricaded inside.
des.altar({ x=62,y=2,align="noncoaligned", type="shrine" })
des.engraving({ coord = {62,2}, type = "burn", text = "Moloch" })
if d(4) == 4 then
	des.monster({ id = "green-elf", x = 61, y = 3, asleep = 1})
	des.monster({ id = "green-elf", x = 63, y = 3, asleep = 1})
end
des.door("closed",58,9)
des.door("closed",26,9)
des.door("closed",30,5)
des.door("closed",37,5)
des.door("closed",48,5)
des.door("locked",62,6)
des.door("closed",30,13)
des.door("closed",37,13)
des.door("closed",48,13)
-- Wake the shamans if anyone tries to take the figurine
des.trap("board",69,04)
des.trap("board",69,05)
des.trap("board",69,06)
des.trap("board",70,04)
des.trap("board",70,06)
des.trap("board",71,04)
des.trap("board",71,05)
des.trap("board",71,06)
-- Random traps
des.trap("board")
des.trap("dart")