-- NetHack oracle oracle.lua	$NHDT-Date: 1652196033 2022/05/10 15:20:33 $  $NHDT-Branch: NetHack-3.7 $:$NHDT-Revision: 1.1 $
-- Copyright (c) 2015 by Pasi Kallinen
-- NetHack may be freely redistributed.  See license for details.
--
-- Oracle level
des.level_flags("noflip");

-- The classic Oracle level
local content_classic = function()
    des.object({ id = "statue", x = 0, y = 0, montype = "C", historic = true });
    des.object({ id = "statue", x = 0, y = 8, montype = "C", historic = true });
    des.object({ id = "statue", x =10, y = 0, montype = "C", historic = true });
    des.object({ id = "statue", x =10, y = 8, montype = "C", historic = true });
    des.object({ id = "statue", x = 5, y = 1, montype = "C", historic = true });
    des.object({ id = "statue", x = 5, y = 7, montype = "C", historic = true });
    des.object({ id = "statue", x = 2, y = 4, montype = "C", historic = true });
    des.object({ id = "statue", x = 8, y = 4, montype = "C", historic = true });

    des.room({ type = "delphi", lit = 1, x=4,y=3, w=3,h=3, contents = function()
                des.feature("fountain", 0, 1);
                des.feature("fountain", 1, 0);
                des.feature("fountain", 1, 2);
                des.feature("fountain", 2, 1);
                des.monster("Oracle", 1, 1);
                des.door({ state="nodoor", wall="all" });
             end
    });

    des.monster();
    des.monster();
end

-- From xNetHack
local content_elemental = function()
    -- Make a square ring of pools around the Oracle, 2 spaces out
    local ring = selection.new()
    ring = selection.rect(3,2,7,6)
    -- Remove one pool orthogonal to the Oracle so she is reachable
    notpool = { {5,2},{3,4},{7,4},{5,6} }
    shuffle(notpool)
    ring:set(notpool[1][1], notpool[1][2], 0)
    des.terrain({ selection=ring, typ="}", lit=1 })

    -- The 4 fountains are on the outside corners
    des.feature("fountain", 2,1)
    des.feature("fountain", 8,1)
    des.feature("fountain", 2,7)
    des.feature("fountain", 8,7)

    -- statues of the 4 elements - appropriately neutral
    local statuelocs = { {5,0},{5,8},{0,4},{10,4} }
    shuffle(statuelocs)
    des.object({ id = "statue", coord = statuelocs[1], montype = "water elemental", historic = 1 })
    des.object({ id = "statue", coord = statuelocs[2], montype = "earth elemental", historic = 1 })
    des.object({ id = "statue", coord = statuelocs[3], montype = "fire elemental", historic = 1 })
    des.object({ id = "statue", coord = statuelocs[4], montype = "air elemental", historic = 1 })

    des.monster("Oracle", 5, 4)

    des.monster()
    des.monster()
end

-- From xNetHack
local content_shark = function()
    -- Make a squarish ring of pools around the Oracle, 3 spaces out
    local ring = selection.rect(2,1,8,7)
    -- cut corners
    ring:set(2,1, 0)
    ring:set(2,7, 0)
    ring:set(8,1, 0)
    ring:set(8,7, 0)

    -- Close off three of the four passages into the center; there are also only
    -- three fountains; make sure that no fountain is aligned with the open square
    local orthopool = { {5,1},{2,4},{8,4},{5,7} }
    local fountain = { {5,2},{3,4},{7,4},{5,6} }
    local dir = math.random(1, #orthopool)
    for i=1,#orthopool do
      if i == dir then
         ring:set(orthopool[i][1], orthopool[i][2], 0)
      else
         des.feature("fountain", fountain[i][1], fountain[i][2])
      end
    end

    -- now actually make the ring
    des.terrain({ selection=ring, typ="}", lit=1 })

    -- four trees
    des.feature("tree", 3,2)
    des.feature("tree", 3,6)
    des.feature("tree", 7,2)
    des.feature("tree", 7,6)

    local statuelocs = { {0,0},{10,0},{0,8},{10,8} }
    shuffle(statuelocs)
    des.object({ id = "statue", coord = statuelocs[1], montype = "snake", historic = 1 })
    des.object({ id = "statue", coord = statuelocs[2], montype = "guardian naga", historic = 1 })
    des.object({ id = "statue", coord = statuelocs[3], montype = "shark", historic = 1 })
    des.object({ id = "statue", coord = statuelocs[4], montype = "water nymph", historic = 1 })

    des.monster("Oracle", 5, 4)

    des.monster()
    des.monster()
end

local content_list = {content_classic,content_elemental,content_shark}
shuffle(content_list)

des.room({ type = "ordinary", lit=1, x=3,y=3, xalign="center",yalign="center", w=11,h=9,
            contents = content_list[1]
});

des.room({ contents = function()
                 des.stair("up");
                 des.object();
              end
});

des.room({ contents = function()
                 des.stair("down");
                 des.object();
                 des.trap();
                 des.monster();
                 des.monster();
              end
});

des.room({ contents = function()
                 des.object();
                 des.object();
                 des.monster();
              end
});

des.room({ contents = function()
                 des.object();
                 des.trap();
                 des.monster();
              end
});

des.room({ contents = function()
                 des.object();
                 des.trap();
                 des.monster();
              end
});

des.random_corridors();
