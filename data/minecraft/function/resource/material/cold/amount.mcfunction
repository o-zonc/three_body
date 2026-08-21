execute store result score #production_amount tmp run function resource/production/base
execute if score #special_second_lvl upgrade matches 1 run scoreboard players add #production_amount tmp 1
execute if score #special_second_lvl upgrade matches 2 run scoreboard players add #production_amount tmp 2
execute if score #special_second_lvl upgrade matches 3 run scoreboard players add #production_amount tmp 5
execute if score #special_second_lvl upgrade matches 4.. run scoreboard players add #production_amount tmp 10

# [파괴되지 않은 세계] 얼어붙은 세계에 플레이어가 존재하는 동안 최종 수급량 ×2
execute if entity @a[nbt={Dimension:"minecraft:frozen"}] if entity @a[advancements={1_frozen/01_chaos_survivor=true}] run scoreboard players set #advancement_reward_multiplier tmp 2
execute if entity @a[nbt={Dimension:"minecraft:frozen"}] if entity @a[advancements={1_frozen/01_chaos_survivor=true}] run scoreboard players operation #production_amount tmp *= #advancement_reward_multiplier tmp

return run scoreboard players get #production_amount tmp
