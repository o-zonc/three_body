execute if score #nether_portal unlock matches 1 run return 0

data remove storage data tmp.cost
data remove storage data tmp.cost_original
data modify storage data tmp.cost set from storage data const.dimensions.overworld.entrance[{id:"nether_portal"}].cost

execute store result score #nether_portal_unlock_cost_check tmp run function product/check_cost

execute if score #nether_portal_unlock_cost_check tmp matches 1 run function product/take_cost
execute if score #nether_portal_unlock_cost_check tmp matches 1 run scoreboard players set #nether_portal unlock 1
execute if score #nether_portal_unlock_cost_check tmp matches 1 at @s run playsound block.portal.trigger weather @a[tag=player] ~ ~ ~ 0.8 1.0
execute if score #nether_portal_unlock_cost_check tmp matches 1 at @s run particle reverse_portal ~ ~1 ~ 1 1 1 0.08 120 force @a[tag=player]
execute if score #nether_portal_unlock_cost_check tmp matches 1 as @a[tag=player] run function util/blank
execute if score #nether_portal_unlock_cost_check tmp matches 1 run return 1

execute unless score #nether_portal_unlock_cost_check tmp matches 1 at @s run playsound block.note_block.bass weather @s ~ ~ ~ 0.8 0.5
execute unless score #nether_portal_unlock_cost_check tmp matches 1 run title @s actionbar "§c재료가 부족합니다."
execute unless score #nether_portal_unlock_cost_check tmp matches 1 run return 0