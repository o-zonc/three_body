execute in polarnight run summon firework_rocket 0 65 0 {LifeTime:25,FireworksItem:{id:"firework_rocket",count:1,components:{"minecraft:fireworks":{flight_duration:3,explosions:[{shape:"large_ball",colors:[725030,1522270,7232230],fade_colors:[9431295,16777215]},{shape:"burst",colors:[3718648,9431295,16777215],fade_colors:[16777215]},{shape:"large_ball",colors:[1522270,7232230,9431295],fade_colors:[16777215]},{shape:"burst",colors:[7232230,3718648],fade_colors:[9431295,16777215]}]}}}}

execute in polarnight run data modify block -7 61 7 name set value "deepslate_hole"
execute in polarnight run setblock -8 61 7 redstone_block
execute in polarnight run setblock -8 61 7 air
