-- NetHack oracle oracle.lua	$NHDT-Date: 1652196033 2022/05/10 15:20:33 $  $NHDT-Branch: NetHack-3.7 $:$NHDT-Revision: 1.1 $
-- Copyright (c) 2015 by Pasi Kallinen
-- NetHack may be freely redistributed.  See license for details.
--
-- Includes modfications written for xNetHack by aosdict
-- Modified for mHack by Ratan Varghese
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

-- From xNetHack, adjusted to use a room
local content_elemental = function()
    -- The 4 fountains are on the outside corners
    des.feature("fountain", 1,1)
    des.feature("fountain", 9,1)
    des.feature("fountain", 1,7)
    des.feature("fountain", 9,7)

    -- statues of the 4 elements - appropriately neutral
    local statuelocs = { {5,0},{5,8},{0,4},{10,4} }
    shuffle(statuelocs)
    des.object({ id = "statue", coord = statuelocs[1], montype = "water elemental", historic = 1 })
    des.object({ id = "statue", coord = statuelocs[2], montype = "earth elemental", historic = 1 })
    des.object({ id = "statue", coord = statuelocs[3], montype = "fire elemental", historic = 1 })
    des.object({ id = "statue", coord = statuelocs[4], montype = "air elemental", historic = 1 })

    des.room({ type = "delphi", lit = 1, x=3,y=2, w=5,h=5,special_nowall=true, contents = function()
                -- Make a square ring of pools around the Oracle, 2 spaces out
                local ring = selection.new()
                ring = selection.rect(0,0,4,4)
                -- Remove one pool orthogonal to the Oracle so she is reachable
                notpool = { {2,0,"north"},{2,4,"south"},{0,2,"east"},{4,2,"west"} }
                shuffle(notpool)
                ring:set(notpool[1][1], notpool[1][2], 0)
                des.terrain({ selection=ring, typ="}", lit=1 })

                des.monster("Oracle", 2, 2);
             end
    });

    des.monster()
    des.monster()
end

-- From xNetHack, adjusted to use a room
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
    local orthofountain = { {1,0},{0,1},{2,1},{1,2} }
    local dir = math.random(1, #orthopool)
    for i=1,#orthopool do
      if i == dir then
         ring:set(orthopool[i][1], orthopool[i][2], 0)
         table.remove(orthofountain,i)
      end
    end

    -- now actually make the ring
    des.terrain({ selection=ring, typ="}", lit=1 })

    -- four trees
    des.feature("tree", 2,1)
    des.feature("tree", 2,7)
    des.feature("tree", 8,1)
    des.feature("tree", 8,7)

    local statuelocs = { {0,0},{10,0},{0,8},{10,8} }
    shuffle(statuelocs)
    des.object({ id = "statue", coord = statuelocs[1], montype = "snake", historic = 1 })
    des.object({ id = "statue", coord = statuelocs[2], montype = "guardian naga", historic = 1 })
    des.object({ id = "statue", coord = statuelocs[3], montype = "shark", historic = 1 })
    des.object({ id = "statue", coord = statuelocs[4], montype = "water nymph", historic = 1 })

    des.room({ type = "delphi", lit = 1, x=4,y=3, w=3,h=3, special_nowall=true, contents = function()
                for i,p in ipairs(orthofountain) do
                    des.feature("fountain", p[1], p[2])
                end
                des.monster("Oracle", 1, 1);
             end
    });

    des.monster()
    des.monster()
end

-- I hope you like woodchucks
local content_woodchuck = function()
    local tree_list = {
        {3,1}, {4,1}, {6,1}, {7,1},
        {2,2}, {2,3}, {2,5}, {2,6},
        {3,7}, {4,7}, {6,7}, {7,7},
        {8,2}, {8,3}, {8,5}, {8,6} }
    for i,p in ipairs(tree_list) do
        des.feature("tree", p[1],p[2])
    end

    -- The 4 fountains are on the outside corners
    des.feature("fountain", 2,1)
    des.feature("fountain", 8,1)
    des.feature("fountain", 2,7)
    des.feature("fountain", 8,7)

    -- statues of woodchucks and wood golems
    des.object({ id = "statue", x = 0, y = 0, montype = "woodchuck", historic = true });
    des.object({ id = "statue", x = 0, y = 8, montype = "woodchuck", historic = true });
    des.object({ id = "statue", x =10, y = 0, montype = "woodchuck", historic = true });
    des.object({ id = "statue", x =10, y = 8, montype = "woodchuck", historic = true });

    des.room({ type = "delphi", lit = 1, x=4,y=3, w=3,h=3, special_nowall=true, contents = function()
                des.monster("Oracle", 1, 1);
             end
    });

    des.monster('woodchuck')
    des.monster()
end

-- Reading entrails
local content_quadruped  = function()
    des.object({ id = "statue", x = 0, y = 0, montype = "q", historic = true });
    des.object({ id = "statue", x = 0, y = 8, montype = "q", historic = true });
    des.object({ id = "statue", x =10, y = 0, montype = "q", historic = true });
    des.object({ id = "statue", x =10, y = 8, montype = "q", historic = true });
    des.object({ id = "statue", x = 5, y = 1, montype = "q", historic = true });
    des.object({ id = "statue", x = 5, y = 7, montype = "q", historic = true });
    des.object({ id = "statue", x = 2, y = 4, montype = "q", historic = true });
    des.object({ id = "statue", x = 8, y = 4, montype = "q", historic = true });

    des.room({ type = "delphi", lit = 1, x=4,y=3, w=3,h=3, contents = function()
                des.feature("fountain", 0, 1);
                des.feature("fountain", 1, 0);
                des.feature("fountain", 1, 2);
                des.feature("fountain", 2, 1);
                des.object({ id = "corpse", x = 0, y = 0, montype = "q" })
                des.object({ id = "corpse", x = 0, y = 2, montype = "q" })
                des.object({ id = "corpse", x = 2, y = 0, montype = "q" })
                des.object({ id = "corpse", x = 2, y = 2, montype = "q" })
                des.monster("Oracle", 1, 1);
                des.door({ state="nodoor", wall="all" });
             end
    });

    des.monster('rothe');
    des.monster();
end

-- From modern myths
local content_seers = function()
    des.terrain(selection.line(4,1, 6,1), '}')
    des.terrain(selection.line(4,7, 6,7), '}')
    des.terrain(selection.line(2,3, 2,5), '}')
    des.terrain(selection.line(8,3, 8,5), '}')

    des.feature("fountain", 2,1)
    des.feature("fountain", 8,1)
    des.feature("fountain", 2,7)
    des.feature("fountain", 8,7)

    des.object({ id = "statue", x = 0, y = 0, montype = "high priest", name="Meshe", historic = true });
    des.object({ id = "statue", x = 0, y = 8, montype = "archeologist", name="Seldon", historic = true });
    des.object({ id = "statue", x =10, y = 0, montype = "knight", name="Atreides", historic = true });
    des.object({ id = "statue", x =10, y = 8, montype = "alchemist", name="Brown", historic = true });

    des.room({ type = "delphi", lit = 1, x=3,y=2, w=5,h=5, special_nowall=true, contents = function()
                des.monster("Oracle", 2, 2);
             end
    });

    des.monster();
    des.monster();
end

local content_list = { content_classic, content_elemental, content_shark,
    content_woodchuck, content_quadruped, content_seers }
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
