-- Based on Mall 1 from SLASH'EM

des.room({ type = "ordinary", lit=1,
           xalign="center", yalign="center", w=48, h=15,
           contents = function()
              des.feature("fountain", 20, 7)

              -- The Town Watch
              des.monster({ id = "watchman", x=19, y=6, peaceful = 1 })
              des.monster({ id = "watchman", x=19, y=7, peaceful = 1 })
              des.monster({ id = "watchman", x=19, y=8, peaceful = 1 })
              des.monster({ id = "watchman", x=21, y=6, peaceful = 1 })
              des.monster({ id = "watch captain", x = 21, y = 8, peaceful = 1 })
              -- (The Town non-Watch)
              des.monster({ id = "monkey", x=0, y=2, peaceful = 0 })
              des.monster({ id = "monkey", x=47, y=2, peaceful = 0 })
              des.monster({ id = "monkey", x=0, y=12, peaceful = 0 })
              des.monster({ id = "water nymph", x=47, y=12, peaceful = 0, asleep =1 })
              des.monster({ id = "gnome", x=5, y=7 })
              des.monster({ id = "dwarf", x=10, y=7 })
              des.monster({ id = "gnome leader", x=25, y=7 })
              des.monster({ id = "dwarf leader", x=30, y=7 })

              des.room({ type = "temple", lit=1, x=2,y=2, w=6,h=4,
                         contents = function()
                            des.door({ state="open", wall="south" })
                            des.altar({ x=02, y=02, align=align[1],type="shrine" })
                            des.monster("gnomish wizard")
                            des.monster("gnomish wizard")
                         end
              });

              des.room({ type = monkfoodshop(), chance=40, lit=1, x=2,y=9, w=6,h=4,
                         contents = function()
                            des.door({ state="open", wall="north" })
                         end
              });
              des.room({ type = "scroll shop", chance=20, lit=1, x=9,y=2, w=6,h=4,
                         contents = function()
                            des.door({ state="open", wall="south" })
                         end
              });
              des.room({ type = "potion shop", chance=30, lit=1, x=9,y=9, w=6,h=4,
                         contents = function()
                            des.door({ state="open", wall="north" })
                         end
              });
              des.room({ type = "ring shop", chance=12, lit=1, x=16,y=2, w=4,h=3,
                         contents = function()
                            des.door({ state="open", wall="south" })
                         end
              });
              des.room({ type = "candle shop", lit=1, x=23,y=2, w=6,h=3,
                         contents = function()
                            des.door({ state="open", wall="south" })
                         end
              });
              des.room({ type = "book shop", chance=12, lit=1, x=16,y=10, w=4,h=3,
                         contents = function()
                            des.door({ state="open", wall="east" })
                         end
              });
              des.room({ type = "shop", chance=20, lit=1, x=23,y=9, w=10,h=4,
                         contents = function()
                            des.door({ state="open", wall="north" })
                         end
              });
              des.room({ type = "wand shop", chance=17, lit=1, x=33,y=2, w=3,h=3,
                         contents = function()
                            des.door({ state="open", wall="west" })
                         end
              });
              des.room({ type = "tool shop", chance=20, lit=1, x=39,y=2, w=7,h=4,
                         contents = function()
                            des.door({ state="open", wall="south" })
                         end
              });
              des.room({ type = "tool shop", chance=22, lit=1, x=38,y=10, w=7,h=3,
                         contents = function()
                            des.door({ state="open", wall="north" })
                         end
              });
           end
});

des.room({ contents = function()
              des.stair("up")
              des.stair("down")
              des.trap()
              des.monster("gnome")
              des.monster("dwarf")
                      end
});

des.random_corridors()