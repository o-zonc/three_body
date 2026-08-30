# 기본 차원 이동기
execute store result score #chaos_end_potion_count tmp run clear @s minecraft:potion[minecraft:custom_data~{chaos_end_potion:1b}] 0
execute if score #chaos_end_potion_count tmp matches 1.. run return run function mover/restricted/chaos_end_potion
execute if entity @s[nbt={Dimension:"minecraft:polarnight"}] run function mover/restricted/common
execute if entity @s[nbt={Dimension:"minecraft:dawn"}] run function mover/restricted/dawn
execute unless entity @s[nbt={Dimension:"minecraft:polarnight"}] unless entity @s[nbt={Dimension:"minecraft:dawn"}] run scoreboard players set #GLOBAL user_disaster 1
execute unless entity @s[nbt={Dimension:"minecraft:polarnight"}] unless entity @s[nbt={Dimension:"minecraft:dawn"}] run function common/disaster/do
