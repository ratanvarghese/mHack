-- Written for the New Castle Levels patch by Pasi Kallinen
-- Modified for UnNetHack by Patric Mueller
-- Converted to Lua and modified for mHack by Ratan Varghese

des.level_init({ style="mazegrid", bg ="-" });
des.level_flags("mazelevel", "noteleport", "noflipy")
--[[
#000000000111111111122222222223333333333444444444455555555556666666666777777
#123456789012345678901234567890123456789012345678901234567890123456789012345
--]]
des.map([[
T.ww}}}}}}}}}ww}}}}}}}}}}}}}}T}}}}}}ww}}www}}}}}}}}}}}}}ww..T..www}}}}ww.T..
..w}}}}}}}}}}}}}}}}}}ww}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}wwwww.w}}}}}}}w....
wwwww}ww----------------------------------------------}}}}}}}ww---------S---
}}}}www.F...-|.........|........|......S......+......|}}}}}}}}}| - - - - - -
}}wwwwww|....|.........+........|......--------......|}w}}}}}}}|------------
}}w..ww}|....+.........|........+......|......|......|}ww}}}}}wS - - - - - -
}}w.T.w}|....|----------........|......|......|-.....|}}}}}}}}w|------------
}}w...w}|----|.......|..........|......|......--FFFF--}}}}wwwww| - - - - - -
wwwwwww}|....|.LLLLL.|..........--FFFF-|......|}}}}}}}}}www.T..|------------
..w}}}ww|....S.LLLLL.S.\........S......+..{...|}.........www...| - - - - - -
T.ww}w}w|....|.LLLLL.|..........--FFFF-|......|}}}}}}}}www}w...|------------
..w}w}}}|----|.......|..........|......|......--FFFF--}}w}}}w..| - - - - - -
www}}w}}|....|----------........|......|......|-.....|}}}}}www.|------------
}}}}}w}}|....+.........|........+......|......|......|}}}}}}}ww| - - - - - -
}}}}wwww|....|.........+........|......--------......|}}}}}}}}w|------------
}}}www..F...-|.........|........|......S......+......|}}wwww}}}| - - - - - -
}}ww}w..----------------------------------------------}ww}www}}|------------
wwwwwww.www}}}}www}}}}}}}ww}}ww.www}}}}}}}}}}}}}}}}}}}}wwwww}}}S - - - - - -
w...w}www}}}}}}}}www}}w}ww}}}}wTw}}}}}}}}}www}}}}}w}}}}}}}www}}|------------
w.T.w}}}}}}}ww}}}}}}}}}}w}}}}}}}ww}}w}}}www..ww}}w}}www}}}}}}}w| - - - - - -
w...w}}}}wwTww}}}}ww}}}}}}}}}}}}}}}}}}www..T.w}}}}}}}}w}}}}}}ww-------------
]]);

local object = { '[', ')' }
local place = { {09,08},{09,09},{09,10},{52,03},{52,15} }
local monster = { 'L','N','E','V','M','O','R','T','X','Z' }
shuffle(object)
shuffle(place)
shuffle(monster)
des.teleport_region({ region = {64,03,75,20}, region_islev=1, exclude={07,01,54,17}, dir="down" })
des.teleport_region({ region = {01,01,07,18}, region_islev=1, exclude={07,01,75,20}, dir="up" })
des.levregion({ region = {66,05,75,20}, region_islev=1, exclude={07,01,66,20}, type="stair-up" })

-- the inner courtyard
des.feature("fountain", 42,09)
des.drawbridge({ dir="west", state="closed", x=47,y=09})
des.door("locked",39,09)

-- doors leading to dragon pens
des.door("locked",39,03)
des.door("locked",46,03)
des.door("locked",39,15)
des.door("locked",46,15)

-- doors to the throne room
des.door("locked",32,05)
des.door("locked",32,09)
des.door("locked",32,13)

-- doors to the barracks
des.door("closed",23,04)
des.door("closed",23,14)

-- doors to the armouries
des.door("locked",13,05)
des.door("locked",13,13)

des.trap("trap door",38,09)
des.trap("trap door",36,09)
des.trap("trap door",34,09)

des.trap("trap door",41,03)
des.trap("trap door",44,03)

des.trap("trap door",41,15)
des.trap("trap door",44,15)

-- ensure way back down if player can't cross water
des.trap("trap door",07,03)
des.trap("trap door",07,15)

des.mazewalk(63,09,"east")

-- only the inner walls of the maze are diggable
des.non_diggable(selection.area(00,00,63,20))
des.non_diggable(selection.area(63,00,75,02))

-- the maze is unlit
des.region(selection.area(00,00,62,20),"unlit")
des.region(selection.area(63,00,75,01),"unlit")

-- and the dragon pens are unlit
des.region(selection.area(47,03,52,06),"unlit")
des.region(selection.area(47,12,52,15),"unlit")

des.region({ region={24,03, 31,15},lit=1,type="throne", irregular=1, filled=2 })

des.region({ region={14,03, 22,05},lit=1,type="barracks", filled=1 })
des.region({ region={14,13, 22,15},lit=1,type="barracks", filled=1 })

-- the armouries and the treasure room are unlit
des.region(selection.area(09,03,12,15),"unlit")

-- northern armoury
des.object(object[2],09,03)
des.object(object[2],10,03)
des.object(object[2],11,03)
des.object(object[2],09,04)
des.object(object[2],10,04)
des.object(object[2],11,04)
des.object(object[2],12,04)
des.object(object[2],09,05)
des.object(object[2],10,05)
des.object(object[2],11,05)
des.object(object[2],12,05)
des.object(object[2],09,06)
des.object(object[2],10,06)
des.object(object[2],11,06)
des.object(object[2],12,06)
-- southern armoury
des.object(object[1],09,12)
des.object(object[1],10,12)
des.object(object[1],11,12)
des.object(object[1],12,12)
des.object(object[1],09,13)
des.object(object[1],10,13)
des.object(object[1],11,13)
des.object(object[1],12,13)
des.object(object[1],09,14)
des.object(object[1],10,14)
des.object(object[1],11,14)
des.object(object[1],12,14)
des.object(object[1],09,15)
des.object(object[1],10,15)
des.object(object[1],11,15)

-- treasure room
local loc = place[1]
des.object({ id = "chest", trapped = 0, locked = 1, coord = loc,
             contents = function()
                des.object("wishing");
             end
});
-- Prevent monsters from eating it.  (@'s never eat objects)
des.engraving({ coord = loc, type="burn", text="Elbereth" })
des.object({ id = "scroll of scare monster", coord = loc, buc="cursed" })

des.object({ id = "chest", coord = place[2],
             contents = function()
                des.object("?")
                des.object("?")
                des.object("+")
                des.object("*")
                des.object("*")
             end
})

des.object({ id = "chest", coord = place[3],
             contents = function()
                des.object("/")
                des.object("\"")
                des.object("*")
                des.object("*")
             end
})

des.object({ id = "chest", coord = place[4],
             contents = function()
                des.object("?")
                des.object("?")
                des.object("+")
                des.object("*")
                des.object("*")
                des.object("!")
             end
})

des.object("chest", place[5])

-- statues behind the throne
des.object({ id = "statue", x = 22, y = 07 })
des.object({ id = "statue", x = 22, y = 11 })

-- the king (and his adviser[s])
if percent(25) then
	des.monster({ id = 'titan', asleep = 1, peaceful = 0, x = 23, y = 09 })
end
if percent(50) then
	des.monster({ class = 'V', asleep = 1, peaceful = 0, x = 23, y = 09 })
end
des.monster({ class = 'V', asleep = 1, peaceful = 0, x = 23, y = 09 })

-- monsters in the water around the castle
des.monster("shark",57,01)
des.monster("shark",57,02)
des.monster("shark",57,03)
des.monster("jellyfish",57,04)
des.monster("jellyfish",57,05)
des.monster("jellyfish",57,06)
des.monster("giant eel",57,14)
des.monster("giant eel",57,15)
des.monster("giant eel",57,17)
des.monster("electric eel",57,18)
des.monster("electric eel",57,19)
des.monster("electric eel",57,20)

-- monsters in attendance in the throne room
des.monster(monster[9],25,04)
des.monster(monster[1],27,04)
des.monster(monster[2],29,04)
des.monster(monster[3],26,05)
des.monster(monster[4],28,05)
des.monster(monster[5],30,05)
des.monster(monster[6],25,06)
des.monster(monster[7],27,06)
des.monster(monster[8],29,06)
des.monster(monster[9],25,14)
des.monster(monster[1],27,14)
des.monster(monster[2],29,14)
des.monster(monster[3],26,13)
des.monster(monster[4],28,13)
des.monster(monster[5],30,13)
des.monster(monster[6],25,12)
des.monster(monster[7],27,12)
des.monster(monster[8],29,12)

-- welcoming committee, certain dragons need not apply
local welcome_list = {
	"blue dragon", "red dragon", "gray dragon",
	"silver dragon", "yellow dragon", "gold dragon"
}
shuffle(welcome_list)
des.monster({ id = table.remove(welcome_list, d(#welcome_list)), x = 48, y = 06 })
des.monster({ id = table.remove(welcome_list, d(#welcome_list)), x = 50, y = 05 })
des.monster({ id = table.remove(welcome_list, d(#welcome_list)), x = 51, y = 13 })
des.monster({ id = table.remove(welcome_list, d(#welcome_list)), x = 52, y = 14 })

-- guardians in the antechamber of the treasure room
des.monster("fire elemental",14,09)
des.monster("fire elemental",17,09)
des.monster("fire vortex",20,09)
des.monster("fire vortex",18,09)

-- sharpshooters in the chambers next to the hallway
des.monster('C',35,06)
des.monster('C',36,04)
des.monster('C',35,11)
des.monster('C',36,12)
des.monster('C',37,13)