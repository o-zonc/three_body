execute if score #trial_active trial matches 1 if score #trial_id trial matches 5 unless score #creation_available_mob trial matches 1 run function trial/creation/lost
execute if score #trial_active trial matches 1 if score #trial_id trial matches 5 unless score #creation_available_mob trial matches 1 run return 0
execute if score #mob unlock matches 1 run return 0

data remove storage data tmp.cost
data remove storage data tmp.cost_original
data modify storage data tmp.cost set from storage data const.resource.mob.unlock_cost

# 업그레이드 재료 소지 여부 확인
execute store result score #mob_unlock_cost_check tmp run function resource/check_cost

# 소지 시 해금
execute if score #mob_unlock_cost_check tmp matches 1 run function resource/take_cost
execute if score #mob_unlock_cost_check tmp matches 1 run scoreboard players set #mob unlock 1
execute if score #mob_unlock_cost_check tmp matches 1 run function resource/overworld/mob/regen/summon
execute if score #mob_unlock_cost_check tmp matches 1 run playsound entity.firework_rocket.blast weather @a[tag=player] 3.5 1.5 4.5 1 0.8
execute if score #mob_unlock_cost_check tmp matches 1 run playsound entity.player.levelup weather @a[tag=player] 3.5 1.5 4.5 0.8 1.2
execute if score #mob_unlock_cost_check tmp matches 1 run particle firework 3.5 1.5 4.5 0.1 0.1 0.1 0.7 15 force @a[tag=player]
execute if score #mob_unlock_cost_check tmp matches 1 as @a[tag=player] run function util/blank
execute if score #mob_unlock_cost_check tmp matches 1 run return 1

# 미소지 시 
execute unless score #mob_unlock_cost_check tmp matches 1 at @s run playsound block.note_block.bass weather @s ~ ~ ~ 0.8 0.5
execute unless score #mob_unlock_cost_check tmp matches 1 run title @s actionbar "§c재료가 부족합니다."
execute unless score #mob_unlock_cost_check tmp matches 1 run return 0
