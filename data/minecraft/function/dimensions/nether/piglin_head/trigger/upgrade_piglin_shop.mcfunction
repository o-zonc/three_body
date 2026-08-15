function dimensions/nether/piglin_head/value/piglin_shop_upgrade_cost

execute unless data storage data tmp.cost at @s run playsound block.note_block.bass weather @s ~ ~ ~ 0.8 0.5
execute unless data storage data tmp.cost run title @s actionbar "§c더 이상 업그레이드할 수 없습니다."
execute unless data storage data tmp.cost run return 0

execute store result score #piglin_shop_upgrade_cost_check tmp run function resource/check_cost

execute if score #piglin_shop_upgrade_cost_check tmp matches 1 run function resource/take_upgrade_cost
execute if score #piglin_shop_upgrade_cost_check tmp matches 1 run scoreboard players add #piglin_shop_lvl piglin_head 1
execute if score #piglin_shop_upgrade_cost_check tmp matches 1 at @s run playsound entity.piglin.admiring_item weather @s ~ ~ ~ 0.8 1.2
execute if score #piglin_shop_upgrade_cost_check tmp matches 1 run function dimensions/nether/piglin_head/ui/piglin_shop
execute if score #piglin_shop_upgrade_cost_check tmp matches 1 run return 1

execute unless score #piglin_shop_upgrade_cost_check tmp matches 1 at @s run playsound block.note_block.bass weather @s ~ ~ ~ 0.8 0.5
execute unless score #piglin_shop_upgrade_cost_check tmp matches 1 run title @s actionbar "§c재료가 부족합니다."
return 0
