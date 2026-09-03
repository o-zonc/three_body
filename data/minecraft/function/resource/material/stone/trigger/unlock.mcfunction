execute if score #stone unlock matches 1 run return 0

data remove storage data tmp.cost
data remove storage data tmp.cost_original
data modify storage data tmp.cost set from storage data const.resource.stone.unlock_cost

# 업그레이드 재료 소지 여부 확인
execute store result score #stone_unlock_cost_check tmp run function resource/check_cost

# 소지 시 해금
execute if score #stone_unlock_cost_check tmp matches 1 run function resource/take_cost
execute if score #stone_unlock_cost_check tmp matches 1 run scoreboard players set #stone unlock 1
execute if score #stone_unlock_cost_check tmp matches 1 run function resource/material/stone/regen/place
execute if score #stone_unlock_cost_check tmp matches 1 run playsound entity.firework_rocket.blast weather @a[tag=player] -2.5 -58.5 35.5 1 0.8
execute if score #stone_unlock_cost_check tmp matches 1 run playsound entity.player.levelup weather @a[tag=player] -2.5 -58.5 35.5 0.8 1.2
execute if score #stone_unlock_cost_check tmp matches 1 run particle firework -2.5 -58.5 35.5 0.1 0.1 0.1 0.7 15 force @a[tag=player]
execute if score #stone_unlock_cost_check tmp matches 1 as @a[tag=player] run function util/blank
execute if score #stone_unlock_cost_check tmp matches 1 run return 1

# 미소지 시
execute unless score #stone_unlock_cost_check tmp matches 1 at @s run playsound block.note_block.bass weather @s ~ ~ ~ 0.8 0.5
execute unless entity @a[tag=accelerator_experiment_running] unless score #stone_unlock_cost_check tmp matches 1 run title @s actionbar {text:"재료가 부족합니다.",color:"red",italic:true}
execute unless score #stone_unlock_cost_check tmp matches 1 run return 0
