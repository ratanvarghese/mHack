-- Based on "Creek Town" by L.
-- No fountains in this town, for obvious reasons.
--

des.level_init({ style = "solidfill", fg = " " })
des.level_flags("mazelevel")
des.map([[
                     ----            --         |www|             ------    
                     |..----        |.-----  ----www|             |....---- 
          ----  ---- |.....---------|.....-- |..www--             ---.....| 
      ----|..----..-------.................---.www--|       ---     |.....| 
      |...+..----..|.....|---..................ww.| |--------.----- |...--- 
      |...|....|...+.....|..|.----------+-....w.w.---.............| |...|   
      |...|........|.....|..|.|..|..||...|....ww......--------+--.---...|   
      |---|........-------+--.|F+-F+||...|...wwww.....|.....|...|.......--  
         |....................|.....||---|..wwPww.....|.....|...|........|  
  ----  --...........-+-----+-|.....||...|.wwPPww.....|.....|---|.---....|  
  |..----...---+---..|..|..|..|.....||...|.wwPPw......--+---|...|.| ------  
 --...--....|.....|..|..|..|..--+----|...|..wPPww...........|...|.|         
 |..........|.....|..----+-----......|...|.wwwPPww..........--+--.----      
 |.....T....|.....|..................-+---.wwwwPww-+---+-............---    
 |..........|.....|...------..............ww..wPww|..|..|.........-....---  
 |....-..T..--------..+....|.....----....ww..wwPw.|..|..|....----........|  
 |....--.........-----|....|.....+..|...w.w..wwww.-------...--..--.......|  
 --...--.----.....----------.....|..|..www....www................|.......|  
  |......---.....................|---.www.....www.---..................---  
  --...--- ----------------------- --www.---.wwww.| ----------......----    
   -----                            |ww--- ---wwww|          --------       
]])
-- Dungeon Description
des.region(selection.area(00,00,75,20), "lit")
-- Stairs
des.stair("up", 67,01)
des.stair("down", 05,19)

-- Town Square
local tx = 6
local ty = 3
local t_area = selection.area(tx, ty, 36, 18)
des.region({ region={(1+tx),(1+ty), (3+tx),(3+ty)}, lit=1, type="candle shop", filled=1 })
des.region({ region={(14+tx),(1+ty), (18+tx),(3+ty)}, lit=1, type="shop", filled=1 })
des.region({ region={(8+tx),(8+ty), (11+tx),(11+ty)}, lit=1, type="temple", filled=1 })
des.altar({ x=(9+tx), y=(10+ty), type="shrine" })
-- Protect the watch-house walls
des.non_diggable(selection.area((24+tx),(02+ty),(30+tx),(8+ty)))
-- Doors
des.door("closed",(4+tx),(1+ty))
des.door("closed",(13+tx),(2+ty))
des.door("closed",(9+tx),(7+ty))
des.door("locked",(16+tx),(6+ty))
des.door("locked",(19+tx),(9+ty))
des.door("locked",(20+tx),(4+ty))
des.door("locked",(22+tx),(6+ty))
des.door("locked",(16+tx),(12+ty))
des.door("locked",(29+tx),(4+ty))
des.door("locked",(26+tx),(4+ty))
des.door("open",(26+tx),(8+ty))
des.door("locked",(27+tx),(13+ty))
-- Loose floorboard
des.trap("board", t_area:rndcoord(1))
-- Furniture
des.object("chest", (17+tx), (8+ty))
des.object("chest", (19+tx), (7+ty))
des.object("chest", (20+tx), (12+ty))
des.object({ id = "statue", x=(7+tx), y=(4+ty), montype="gnome king", historic=1 })
-- Guards
des.monster({ id = "watchman", x=(26+tx), y=(6+ty), peaceful = 1 })
des.monster({ id = "watchman", x=(7+tx), y=(4+ty), peaceful = 1 })
des.monster({ id = "watchman", x=(24+tx), y=(11+ty), peaceful = 1 })
-- Watchdog
des.monster({ id = "large dog", x=(29+tx), y=(5+ty), peaceful = 1, asleep=1 })
-- Citizens
des.monster({ id = "gnome", x=(16+tx), y=(7+ty), hostile = 1 })
des.monster({ id = "gnome king", x=(19+tx), y=(13+ty), hostile = 1 })
des.monster("gnome", t_area:rndcoord(1))
des.monster("gnome", t_area:rndcoord(1))
des.monster("gnome lord", t_area:rndcoord(1))
des.monster("gnome lord", t_area:rndcoord(1))
des.monster("gnome lord", t_area:rndcoord(1))
des.monster("dwarf lord", t_area:rndcoord(1))
des.monster("quantum mechanic", t_area:rndcoord(1))
des.monster("quantum mechanic", t_area:rndcoord(1))

--The creek
local cx=37
local cy=0
local c_area = selection.area(cx, cy, 52, 20)
des.region({ region={(1+cx),(9+cy), (3+cx),(12+cy)}, lit=1, type="scroll shop", filled=1 })
-- Doors
des.door("locked",(3+cx),(5+cy))
des.door("closed",(1+cx),(13+cy))
des.door("locked",(14+cx),(13+cy))
-- Furniture
des.object("chest", (14+cx), (15+cy))
-- Monsters
des.monster({ id = "watch captain", coord = c_area:rndcoord(1), peaceful = 1 })
des.monster('G', (14+cx), (14+cy))
-- River feeders
des.monster("jellyfish", (cx+0), (20+cy))
des.monster("jellyfish", (cx+1), (20+cy))
des.monster("jellyfish", (cx+9), (20+cy))
des.monster("jellyfish", (cx+10), (20+cy))
des.monster("piranha", (cx+12), (0+cy))
des.monster("piranha", (cx+13), (0+cy))
-- Junk
des.object({ coord = c_area:rndcoord(1) })
des.object({ coord = c_area:rndcoord(1) })
des.object({ coord = c_area:rndcoord(1) })

-- Town outskirts
local ox=53
local oy=05
local o_area = selection.area(ox, oy, 65, 17)
des.region({ region={(2+ox),(2+oy), (6+ox),(4+oy)}, lit=1, type="food shop", filled=1 })
-- Doors
des.door("closed",(3+ox),(5+oy))
des.door("closed",(2+ox),(8+oy))
des.door("locked",(9+ox),(1+oy))
des.door("locked",(9+ox),(7+oy))
-- Monsters
des.monster("hobbit", o_area:rndcoord(1))
des.monster("bugbear", o_area:rndcoord(1))
des.monster("bugbear", o_area:rndcoord(1))
des.monster("dwarf", o_area:rndcoord(1))
des.monster({ id = "watchman", x=(1+ox), y=(6+oy), peaceful = 1 })