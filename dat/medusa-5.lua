-- Ouroboros

des.level_init({ style = "solidfill", fg = " " });
des.level_flags("noteleport", "mazelevel")

--[[
#         1         2         3         4         5         6         7 
#123456789012345678901234567890123456789012345678901234567890123456789012345
--]]
des.map([[
}}}ww}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}0
}ww.w}}}}}}}}}}}}}}}}}}}}}wwwwwww}}}}}}}}}}}www}}}}}}}wwww}}}}}}}}}}}wwwww}}1
}w..w}}}}}}}}}}}}}}}}}}}}}w.....w}}}}}}}}}}}w.w}}}}}}wwww}}}}}}}}}}}}w...w}}2
}wwww}}}}w}}wwww}}}}}}}}}}wwwwwww}}}}}}}}}}}www}}}}}}}}}}}}}ww}}}ww}}www.w}}3
}}}}}}}}ww}ww..wwwwwwww}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}   wwwwwww}}}ww}}}w.w}}4
}}}}}}}w.w}ww.........wwwwwwwwwww}}}}}}}}}}}}}        .+.....ww}}}www}}www}}5
}www}}ww.w}}wwwww.............ww}}}}           ........ ...www}}}ww.ww}}}}}}6
}w.w}ww.ww}}}}}}wwwwwwww....www}}}   .........+.....    wwww}}}}}}ww.ww}}}}}7
}www}w..w}}}}}}}}}}}}}}wwwwww}}}   .+........        }}}}}}}}}}}}}}w..w}}}}}8
}}w}}w..w}}}}}}}}}}}}}}}}}}}}}   ... +        }}}}}}}}}}}}}}}}}}}}}w..w}}}}}9
}www}w..w}}}}}}}}}}}}}}}}}}}}  }}}}}..  }}}}}}}}}}}}}}}}}}}}}}}}}}}w..w}}}}}0
}w.w}w..w}}}}}}}}}}}}}}}}}}}} }}}..}.  }}wwwwww}}}}}}}}}}}}}}}}}}}}w..w}}}}}1
}www}w..w}}}}}}}}}}}}}}}}}}}}}}...}}  }}ww....wwwwwww}}}}}}}}}}}}}}w..w}}}}}2
}}}}}ww.ww}}}}}}}}}}}}}}}}}   ...}}  }}ww...........wwwwwwww}}}}}}ww.ww}www}3
}}}}}}ww.ww}}}www           ... }}  }}wwwwwwwww............wwww}}ww.ww}}w.w}4
}}}}}}}www}}}ww..+.........+.   }}}}}}}}}}}}}}wwwwwwwww.......ww}w.ww}}ww.w}5
}}www}}}ww}}}wwww             }}}}wwwwwwwww}}}}}}}}}}wwwwwwww.ww}www}}}w..w}6
}ww.ww}}}ww}}}ww}}}}}}}}}}}}}}}}}ww...w...ww}}}wwww}}}}}}}}}www}}ww}}www..w}7
}w...w}}}}}}}}}}}}}www}}}}}}}}}}}w.www.www.w}}}w..w}}}}}}}}}}}}}}}}}}w...ww}8
}wwwww}}}}}}}}}}}}}www}}}}}}}}}}}ww...w...ww}}}wwww}}}}}}}}}}}}}}}}}}wwwww}}9
}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}wwwwwwwww}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}0
]]);

-- Teleport: down to up stairs island, up to Medusa's island
des.teleport_region({ region = {25,05,27,07}, dir="down" })
des.teleport_region({ region = {37,07,44,08}, dir="up" })
-- Stairs
des.stair("up", 27,06)
des.stair("down", 40,08)

des.region(selection.area(00,00,75,20),"lit")
des.region(selection.area(17,14,28,16),"unlit")
des.region(selection.area(29,10,35,14),"unlit")
des.region(selection.area(32,08,38,11),"unlit")
des.region(selection.area(34,07,39,10),"unlit")
des.region(selection.area(37,07,45,09),"unlit")
des.region(selection.area(46,05,52,08),"unlit")
des.region(selection.area(53,04,55,07),"unlit")


-- fixup_special hack: The first "room" region in Medusa levels gets filled
-- with some leaderboard statues, so this needs to be a room; setting
-- irregular=1 will force this
des.region({ region={37,07,44,08}, lit=1, type="ordinary", irregular=1 })

des.door("locked",17,15)
des.door("locked",27,05)
des.door("locked",36,08)
des.door("locked",37,09)
des.door("locked",46,07)
des.door("locked",55,05)

des.object({ id="statue", coord={40,08}, buc="uncursed",
                      montype="knight", historic=1, male=1,name="Perseus",
                      contents = function()
                         if percent(75) then
                            des.object({ id = "shield of reflection", buc="cursed", spe=0 })
                         end
                         if percent(25) then
                            des.object({ id = "levitation boots", spe=0 })
                         end
                         if percent(50) then
                            des.object({ id = "scimitar", buc="blessed", spe=2 })
                         end
                         if percent(50) then
                            des.object("sack")
                         end
                      end
});

des.object({ id = "statue", contents=0 })
des.object({ id = "statue", contents=0 })
des.object({ id = "statue", contents=0 })
des.object({ id = "statue", contents=0 })
des.object({ id = "statue", contents=0 })
des.object({ id = "statue", contents=0 })
des.object({ id = "statue", contents=0 })
for i=1,8 do
   des.object()
end
--
for i=1,7 do
   des.trap()
end

-- place Medusa before placing other monsters so that they won't be able to
-- unintentionally steal her spot on the downstairs
des.monster({ id = "Medusa", coord={40,08}, asleep=1 })
des.monster("kraken", 07,07)

des.monster("giant eel")
des.monster("giant eel")
des.monster("jellyfish")
des.monster("jellyfish")
for i=1,14 do
   des.monster("S")
end
for i=1,4 do
   des.monster("black naga hatchling")
   des.monster("black naga")
end
