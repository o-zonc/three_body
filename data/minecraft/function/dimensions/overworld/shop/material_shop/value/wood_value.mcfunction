execute store result storage data tmp.material_shop.wood.lvl int 1 run scoreboard players get #poss_effective_lvl tmp
function dimensions/overworld/shop/material_shop/value/wood_data_by_lvl with storage data tmp.material_shop.wood
data remove storage data tmp.material_shop.wood.now
data modify storage data tmp.material_shop.wood.now set from storage data tmp.material_shop.wood.tmp
data remove storage data tmp.material_shop.wood.lvl
data remove storage data tmp.material_shop.wood.tmp
execute store result score #wood_value tmp run data get storage data tmp.material_shop.wood.now.value
scoreboard players set #wood_advancement_multiplier tmp 1
execute if score #overworld_9 advancement matches 1 unless score #overworld_advancement_reward_disabled var matches 1 run scoreboard players set #wood_advancement_multiplier tmp 3
execute if score #obsidian material matches 1.. run scoreboard players set #wood_advancement_multiplier tmp 3
execute unless score #overworld_advancement_reward_disabled var matches 1 if entity @a[tag=player,advancements={minecraft:overworld/9=true}] run scoreboard players set #wood_advancement_multiplier tmp 3
scoreboard players operation #wood_value tmp *= #wood_advancement_multiplier tmp
return run scoreboard players get #wood_value tmp
