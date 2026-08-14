# Prepare the next copper regeneration upgrade cost.
# The resource config is the source of truth for available levels.

data remove storage three_body:resource input
data remove storage three_body:resource temp.cost

scoreboard players reset #copper_regen_lvl_next tmp
execute store result score #copper_regen_lvl_next tmp run scoreboard players get #copper_regen_lvl upgrade
scoreboard players add #copper_regen_lvl_next tmp 1

data modify storage three_body:resource temp.type set value "copper"
execute store result storage three_body:resource temp.lvl int 1 run scoreboard players get #copper_regen_lvl_next tmp
data modify storage three_body:resource input set value {type:"copper",amount:0}

# Ask the generic API for the next level's configured cost.
execute store result storage three_body:resource input.amount int 1 run function three_body:resource/internal/regen_upgrade_cost with storage three_body:resource
