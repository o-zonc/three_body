# Prepare the next heat regeneration upgrade cost.
# The resource config is the source of truth for available levels.

data remove storage three_body:resource.input
data remove storage three_body:resource.temp cost

scoreboard players reset #heat_regen_lvl_next tmp
execute store result score #heat_regen_lvl_next tmp run scoreboard players get #heat_regen_lvl upgrade
scoreboard players add #heat_regen_lvl_next tmp 1

data modify storage three_body:resource.temp.type set value "heat"
execute store result storage three_body:resource.temp.lvl int 1 run scoreboard players get #heat_regen_lvl_next tmp
data modify storage three_body:resource.input set value {type:"heat",amount:0}

execute store result storage three_body:resource.input.amount int 1 run function three_body:resource/internal/regen_upgrade_cost with storage three_body:resource.temp
