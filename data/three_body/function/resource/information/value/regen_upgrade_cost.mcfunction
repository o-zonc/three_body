# Prepare the next information regeneration upgrade cost.
# The resource config is the source of truth for available levels.

data remove storage three_body:resource input
data remove storage three_body:resource temp.cost

scoreboard players reset #information_regen_lvl_next tmp
execute store result score #information_regen_lvl_next tmp run scoreboard players get #information_regen_lvl upgrade
scoreboard players add #information_regen_lvl_next tmp 1

data modify storage three_body:resource temp.type set value "information"
execute store result storage three_body:resource temp.lvl int 1 run scoreboard players get #information_regen_lvl_next tmp
data modify storage three_body:resource input set value {type:"information",amount:0}

execute store result storage three_body:resource input.amount int 1 run function three_body:resource/internal/regen_upgrade_cost with storage three_body:resource
