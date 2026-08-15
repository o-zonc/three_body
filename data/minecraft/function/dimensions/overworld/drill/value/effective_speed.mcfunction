execute unless score #y var = #y var run scoreboard players set #y var 64000
function dimensions/nether/workshop/effect/5_1/effective
execute if score #5_1_effective tmp matches 1 run scoreboard players set #y var -64000
execute store result score #drill_speed_value tmp run function dimensions/overworld/drill/value/speed_value

scoreboard players operation #drill_effective_speed tmp = #drill_speed_value tmp
scoreboard players set #drill_speed_multiplier tmp 100
scoreboard players set #drill_speed_divisor tmp 100

execute if score #y var matches ..47999 run scoreboard players set #drill_speed_multiplier tmp 90
execute if score #y var matches ..31999 run scoreboard players set #drill_speed_multiplier tmp 80
execute if score #y var matches ..15999 run scoreboard players set #drill_speed_multiplier tmp 65
execute if score #y var matches ..-1 run scoreboard players set #drill_speed_multiplier tmp 50
execute if score #y var matches ..-16001 run scoreboard players set #drill_speed_multiplier tmp 35
execute if score #y var matches ..-32001 run scoreboard players set #drill_speed_multiplier tmp 20
execute if score #y var matches ..-48001 run scoreboard players set #drill_speed_multiplier tmp 10

scoreboard players operation #drill_effective_speed tmp *= #drill_speed_multiplier tmp
scoreboard players operation #drill_effective_speed tmp /= #drill_speed_divisor tmp
scoreboard players operation #drill_depth_speed tmp = #drill_effective_speed tmp


scoreboard players set #drill_void_multiplier tmp 100


return run scoreboard players get #drill_effective_speed tmp
