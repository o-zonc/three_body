execute unless score #structure_apply_context var matches 1 run scoreboard players set #structure_trigger var 2321
execute unless score #structure_apply_context var matches 1 run function structure/trigger
execute unless score #structure_apply_context var matches 1 run return 0

execute in frozen run summon firework_rocket 20 68 0 {LifeTime:20,FireworksItem:{id:"firework_rocket",count:1,components:{"minecraft:fireworks":{flight_duration:3,explosions:[{shape:"burst",colors:[65535,65535,65535,8435517],fade_colors:[16777215]},{shape:"star",colors:[65535,65535,65535,16777215],fade_colors:[16777215]},{shape:"large_ball",colors:[65535,65535,8435517,16777215]},{shape:"burst",colors:[65535,65535,16777215],fade_colors:[65535,8435517]}]}}}}

execute in frozen run fill 6 67 -1 6 67 1 air
