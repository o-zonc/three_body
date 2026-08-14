# Prepare the next time regeneration upgrade cost.
# The resource config is the source of truth for available levels.

data remove storage three_body:resource.input
data remove storage three_body:resource.temp cost

scoreboard players reset #time_regen_lvl_next tmp
execute store result score #time_regen_lvl_next tmp run scoreboard players get #time_regen_lvl upgrade
scoreboard players add #time_regen_lvl_next tmp 1

data modify storage three_body:resource.temp.type set value "time"
execute store result storage three_body:resource.temp.lvl int 1 run scoreboard players get #time_regen_lvl_next tmp
data modify storage three_body:resource.input set value {type:"time",amount:0}

execute store result storage three_body:resource.input.amount int 1 run function three_body:resource/internal/regen_upgrade_cost with storage three_body:resource.temp
