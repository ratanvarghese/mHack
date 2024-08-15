-- Written for mHack by Ratan Varghese


des.level_flags("mazelevel", "noteleport", "hardfloor", "nommap", "temperate");
des.level_init({ style="mines", fg=".", bg="-", smoothed=true, joined=true,lit=0,walled=true })
--[[
0         1         2         3         4         5         6         7    7
0123456789012345678901234567890123456789012345678901234567890123456789012345
--]]
des.map([[
...................................................
..........-..----...--....------------.............
...-----..-----------------..........|-.-..-------.
.---...----............-|.......B--..|------...|-..
.|.......|....---.......|-......B.|..| ----....---.
.|...-----....|.BB-------------BB.--B---..--.....|.
.|..--...|....|.....|.........|...|........--.-..|.
....|....-....|...................|..----..B..|..|.
..|.|.--.B....--....|.........|.B-|..|  |..B---..|.
..---.---B---..|....-----------BB.|..|  |..--....|.
.--........-B.B-----|.............|..----..|...---.
.....-----..B|B.....B..--------...B........|BB--.|.
.--.--...-----......B---......B..-----.....|.......
....|........---------------------...-------..---..
...................................................
]])
-- Dungeon Description
-- The shrine to Moloch.
des.region({ region={21,06,29,08},lit=1,type="temple",filled=2 })
-- The Morgues
des.region({ region={10,04,13,06},lit=0,type="morgue",filled=1,irregular=1 })
des.region({ region={21,10,22,11},lit=0,type="morgue",filled=1,irregular=1 })
des.region({ region={27,02,31,04},lit=0,type="morgue",filled=1,irregular=1 })
des.region({ region={44,03,46,05},lit=0,type="morgue",filled=1,irregular=1 })

-- Extra walls
if percent(50) then
   des.terrain({ x=20, y=07, typ='|' })
   des.terrain({ x=19, y=06, typ='|' })
   des.terrain({ x=19, y=07, typ='|' })
   des.terrain({ x=19, y=08, typ='|' })
else
   des.terrain({ x=30, y=07, typ='|' })
   des.terrain({ x=31, y=06, typ='|' })
   des.terrain({ x=31, y=07, typ='|' })
   des.terrain({ x=31, y=08, typ='|' })
end

-- Stairs
des.stair("down", 28,07)

-- Branch location
local up_places = {
	{00,00}, {00,07}, {00,14},
	{10,00}, {10,14},
	{20,00}, {20,14},
	{25,00}, {25,14},
	{30,00}, {30,14},
	{40,00}, {40,14},
	{50,00}, {50,07}, {50,14}
}
shuffle(up_places)
local entry_coord = up_places[1]
local entry_region = { entry_coord[1], entry_coord[2], entry_coord[1], entry_coord[2] }
des.levregion({ type="branch", region=entry_region })
des.teleport_region({ type="branch", region={00,00,75,20}, region_islev=1, dir="down",
	exclude={01,01,49,13} })

-- The altar of Moloch.
des.altar({ x=23,y=07,align="noalign", type="shrine" })

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
des.trap("spiked pit")
des.trap("spiked pit")
des.trap("sleep gas")
des.trap("board")
des.trap("board")
des.trap("board")
des.trap("board")
des.trap("magic")
des.trap("magic")
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
