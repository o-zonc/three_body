data remove storage data tmp.cost
data remove storage data tmp.cost_original
data modify storage data tmp.cost set from storage data const.dimensions.overworld.entrance[{id:"nether_entrance"}].cost
execute store result score #1_1_cost_check tmp run function dimensions/nether/workshop/effect/1_1/check_cost_no_exp
execute if score #1_1_cost_check tmp matches 1 run function product/take_cost
execute if score #1_1_cost_check tmp matches 1 run scoreboard players set #nether_entrance unlock 1
execute if score #1_1_cost_check tmp matches 1 run title @a[tag=player] actionbar "§6🍀 §3§l아차원 초월§7: 네더 포탈 구역 자동 해금"
execute if score #1_1_cost_check tmp matches 1 as @a[tag=player] at @s run playsound entity.breeze.jump weather @s ~ ~ ~ 0.3 2
execute if score #1_1_cost_check tmp matches 1 run scoreboard players set #1_1_done tmp 1
execute if score #1_1_cost_check tmp matches 1 run setblock -18 4 -15 redstone_block replace