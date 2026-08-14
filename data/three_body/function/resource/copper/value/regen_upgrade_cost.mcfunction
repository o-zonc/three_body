# Return the next copper regeneration upgrade cost.
data remove storage three_body:resource.temp.cost
execute store result storage three_body:resource.temp.lvl int 1 run scoreboard players get #copper_regen_lvl upgrade
scoreboard players set #resource_next_lvl tmp 0
execute store result score #resource_next_lvl tmp run data get storage three_body:resource.temp.lvl 1
scoreboard players add #resource_next_lvl tmp 1
execute store result storage three_body:resource.temp.lvl int 1 run scoreboard players get #resource_next_lvl tmp
data modify storage three_body:resource.temp.type set value "copper"
function three_body:resource/internal/regen_upgrade_cost with storage three_body:resource.temp
