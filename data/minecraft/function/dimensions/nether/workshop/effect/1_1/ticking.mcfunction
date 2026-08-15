execute if score #1_1_stop var matches 1 run return 0

scoreboard players add #1_1_tick tmp 1
execute if score #6_1 nether_workshop matches 1 run scoreboard players set #1_1_tick tmp 4
execute if score #1_1_tick tmp matches ..3 run return 0
scoreboard players set #1_1_tick tmp 0
scoreboard players set #1_1_done tmp 0

execute unless score #1_1_done tmp matches 1 run function dimensions/nether/workshop/effect/1_1/unlock
execute unless score #1_1_done tmp matches 1 run function dimensions/nether/workshop/effect/1_1/crystal_shop
execute unless score #1_1_done tmp matches 1 run function dimensions/nether/workshop/effect/1_1/material_shop
execute unless score #1_1_done tmp matches 1 run function dimensions/nether/workshop/effect/1_1/resource_upgrade
execute unless score #1_1_done tmp matches 1 run function dimensions/nether/workshop/effect/1_1/drill_tool
execute unless score #1_1_done tmp matches 1 run function dimensions/nether/workshop/effect/1_1/piglin_head
