data remove storage data tmp.cost
data remove storage data tmp.cost_original
data modify storage data tmp.cost set from storage data const.resource.stone.unlock_cost
execute store result score #1_1_cost_check tmp run function dimensions/nether/workshop/effect/1_1/check_cost_no_exp
execute if score #1_1_cost_check tmp matches 1 run function resource/take_cost
execute if score #1_1_cost_check tmp matches 1 run scoreboard players set #stone unlock 1
execute if score #1_1_cost_check tmp matches 1 run title @a[tag=player] actionbar "§6🍀 §3§l아차원 초월§7: 돌 자동 해금"
execute if score #1_1_cost_check tmp matches 1 as @a[tag=player] at @s run playsound entity.breeze.jump weather @s ~ ~ ~ 0.3 2
execute if score #1_1_cost_check tmp matches 1 run scoreboard players set #1_1_done tmp 1
execute if score #1_1_cost_check tmp matches 1 run function resource/overworld/stone/regen/place