execute if score #nether_entrance unlock matches 1 run return 0

data remove storage data tmp.cost
data remove storage data tmp.cost_original
data modify storage data tmp.cost set from storage data const.dimensions.overworld.entrance[{id:"nether_entrance"}].cost

execute store result score #nether_entrance_unlock_cost_check tmp run function resource/check_cost

execute if score #nether_entrance_unlock_cost_check tmp matches 1 run function resource/take_cost
execute if score #nether_entrance_unlock_cost_check tmp matches 1 run scoreboard players set #nether_entrance unlock 1
execute if score #nether_entrance_unlock_cost_check tmp matches 1 run setblock -18 4 -15 redstone_block replace
execute if score #nether_entrance_unlock_cost_check tmp matches 1 run return 1

execute unless score #nether_entrance_unlock_cost_check tmp matches 1 at @s run playsound block.note_block.bass weather @s ~ ~ ~ 0.8 0.5
execute unless score #nether_entrance_unlock_cost_check tmp matches 1 run title @s actionbar "§c재료가 부족합니다."
execute unless score #nether_entrance_unlock_cost_check tmp matches 1 run return 0