# Return base coal regen cooldown from current Y only.
# 64 -> 5s, -64 -> 0.5s

execute unless score #y var = #y var run scoreboard players set #y var 64000
function dimensions/nether/workshop/effect/5_1/effective
execute if score #5_1_effective tmp matches 1 run scoreboard players set #y var -64000
scoreboard players operation #coal_regen_y tmp = #y var
scoreboard players set #coal_regen_offset tmp 64000
scoreboard players operation #coal_regen_y tmp += #coal_regen_offset tmp
scoreboard players set #coal_regen_divisor tmp 2844
scoreboard players operation #coal_regen_y tmp /= #coal_regen_divisor tmp
scoreboard players set #coal_regen_value tmp 10
scoreboard players operation #coal_regen_value tmp += #coal_regen_y tmp
execute if score #coal_regen_value tmp matches ..0 run scoreboard players set #coal_regen_value tmp 1
return run scoreboard players get #coal_regen_value tmp
