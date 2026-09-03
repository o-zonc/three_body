# 매크로 인수: id
$execute unless score #$(id)_storage_lvl upgrade = #$(id)_storage_lvl upgrade run scoreboard players set #$(id)_storage_lvl upgrade 0
$scoreboard players operation #third_lvl tmp = #$(id)_storage_lvl upgrade
$scoreboard players operation #third_capacity tmp = #$(id)_capacity meta
$scoreboard players operation #third_wallet tmp = #$(id)_wallet tmp
$scoreboard players operation #third_bank tmp = #$(id)_bank meta
scoreboard players set #third_next_capacity tmp 0
execute if score #third_lvl tmp matches 0 run scoreboard players set #third_next_capacity tmp 16
execute if score #third_lvl tmp matches 1 run scoreboard players set #third_next_capacity tmp 32
execute if score #third_lvl tmp matches 2 run scoreboard players set #third_next_capacity tmp 64
data remove storage data tmp.cost
execute if score #third_lvl tmp matches 0 run data modify storage data tmp.cost set value [{type:"gold",amount:10},{type:"diamond",amount:5}]
$execute if score #third_lvl tmp matches 1 run function shop/third/storage_cost/$(id)
execute if score #third_lvl tmp matches 2 run data modify storage data tmp.cost set value [{type:"information",amount:96},{type:"time",amount:24}]
