-- NetHack tower tower2.lua	$NHDT-Date: 1652196037 2022/05/10 15:20:37 $  $NHDT-Branch: NetHack-3.7 $:$NHDT-Revision: 1.2 $
--	Copyright (c) 1989 by Jean-Christophe Collet
-- NetHack may be freely redistributed.  See license for details.
--

-- Modified for mHack by Ratan Varghese
-- tower2-2 has similar niches to tower2-1, but a modified center

des.level_init({ style = "solidfill", fg = " " });

des.level_flags("mazelevel", "noteleport", "hardfloor", "solidify")
des.map({ halign = "half-left", valign = "center", map = [[
  --- --- ---  
  |.| |.| |.|  
---S---S---S---
|.S......|..S.|
---......|..---
  |..--+--..|  
---..|......---
|.S..|......S.|
---S---S---S---
  |.| |.| |.|  
  --- --- ---  
]] });
-- Random places are the 10 niches
local place = { {03,01},{07,01},{11,01},{01,03},{13,03},
	   {01,07},{13,07},{03,09},{07,09},{11,09} }
shuffle(place)

des.ladder("up", 11,03)
des.ladder("down", 03,07)
des.door("locked",07,05)
des.monster("&",03,03)
des.monster("&",11,07)
des.monster("hell hound",07,04)
des.monster("hell hound",07,06)
des.monster("winter wolf cub",06,04)
des.object({ id = "chest", coord = place[5],
             contents = function()
                des.object("amulet of life saving")
             end
});
des.object({ id = "chest", coord = place[6],
             contents = function()
                des.object("amulet of flying")
             end
});
des.object("fumble boots",place[7])
des.object("crystal plate mail",place[8])

local spbooks = {
   "spellbook of invisibility",
   "spellbook of cone of cold",
   "spellbook of create familiar",
   "spellbook of clairvoyance",
   "spellbook of charm monster",
   "spellbook of stone to flesh",
   "spellbook of polymorph"
}
shuffle(spbooks);
des.object(spbooks[1],place[9])
des.object(spbooks[2],place[1])

-- Walls in the tower are non diggable
des.non_diggable(selection.area(00,00,14,10))

