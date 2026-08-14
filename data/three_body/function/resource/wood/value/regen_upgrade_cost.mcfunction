# Prepare the next wood regeneration upgrade cost in Material API storage.
# The resource config is the source of truth for available levels.

data remove storage three_body:resource.input
data remove storage three_body:resource.temp cost

scoreboard players reset #wood_regen_lvl_next tmp
execute store result score #wood_regen_lvl_next tmp run scoreboard players get #wood_regen_lvl upgrade
scoreboard players add #wood_regen_lvl_next tmp 1

# Prepare the generic API input.
data modify storage three_body:resource.temp.type set value "wood"
execute store result storage three_body:resource.temp.lvl int 1 run scoreboard players get #wood_regen_lvl_next tmp
data modify storage three_body:resource.input set value {type:"wood",amount:0}

# Ask the generic API for the next level's configured cost.
execute store result storage three_body:resource.input.amount int 1 run function three_body:resource/internal/regen_upgrade_cost with storage three_body:resource.temp
