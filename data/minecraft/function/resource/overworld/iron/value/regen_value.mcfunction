# Return base iron regen cooldown from current Y only.
# 64 -> 15s, -64 -> 1.5s

execute unless score #y var = #y var run scoreboard players set #y var 64000
function dimensions/nether/workshop/effect/5_1/effective
execute if score #5_1_effective tmp matches 1 run scoreboard players set #y var -64000
scoreboard players operation #iron_regen_y tmp = #y var
scoreboard players set #iron_regen_offset tmp 64000
scoreboard players operation #iron_regen_y tmp += #iron_regen_offset tmp
scoreboard players set #iron_regen_divisor tmp 948
scoreboard players operation #iron_regen_y tmp /= #iron_regen_divisor tmp
scoreboard players set #iron_regen_value tmp 30
scoreboard players operation #iron_regen_value tmp += #iron_regen_y tmp
execute if score #iron_regen_value tmp matches ..0 run scoreboard players set #iron_regen_value tmp 1
return run scoreboard players get #iron_regen_value tmp
