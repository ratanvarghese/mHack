-- NetHack tower tower2.lua	$NHDT-Date: 1652196037 2022/05/10 15:20:37 $  $NHDT-Branch: NetHack-3.7 $:$NHDT-Revision: 1.2 $
--	Copyright (c) 1989 by Jean-Christophe Collet
-- NetHack may be freely redistributed.  See license for details.
--

-- tower2-3 has many spellbooks, but they're difficult to reach

des.level_init({ style = "solidfill", fg = " " });

des.level_flags("mazelevel", "noteleport", "hardfloor", "solidify")
des.map({ halign = "half-left", valign = "center", map = [[
  --- --- ---  
  |.| |.| |.|  
---S---S---S---
|.S.........S.|
---.-------.---
  |.|.....|.|  
---.|.....|.---
|.S.|.....|.S.|
---S-------S---
  |.|     |.|  
  ---     ---  
]] });
-- Random places are the 9 niches
local place = { {03,01},{07,01},{11,01},{01,03},{13,03},
	   {01,07},{13,07},{03,09},{11,09} }
shuffle(place)

des.ladder("up", 11,07)
des.ladder("down", 03,07)
des.monster("&",05,06)
des.monster("&",09,06)
des.monster("hell hound",11,05)
des.monster("hell hound",03,05)
des.monster("winter wolf cub",07,03)
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
   "spellbook of cone of cold",
   "spellbook of finger of death",
   "spellbook of create familiar",
   "spellbook of clairvoyance",
   "spellbook of detect treasure",
   "spellbook of cause fear",
   "spellbook of charm monster",
   "spellbook of invisibility",
   "spellbook of teleport away",
   "spellbook of stone to flesh",
   "spellbook of polymorph",
}
shuffle(spbooks);
des.object(spbooks[1],06,05)
des.object(spbooks[2],06,06)
des.object(spbooks[3],06,07)
des.object(spbooks[4],07,05)
des.object(spbooks[5],07,06)
des.object(spbooks[6],07,07)
des.object(spbooks[7],08,05)
des.object(spbooks[8],08,06)
des.object(spbooks[9],08,07)

-- Walls in the tower are non diggable
des.non_diggable(selection.area(00,00,14,10))

