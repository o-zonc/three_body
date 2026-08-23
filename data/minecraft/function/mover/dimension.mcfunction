# 기본 차원 이동기
execute if entity @s[nbt={Dimension:"minecraft:polarnight"}] run function mover/restricted/common
execute if entity @s[nbt={Dimension:"minecraft:dawn"}] run function mover/restricted/dawn
execute unless entity @s[nbt={Dimension:"minecraft:polarnight"}] unless entity @s[nbt={Dimension:"minecraft:dawn"}] run scoreboard players set #GLOBAL user_disaster 1
execute unless entity @s[nbt={Dimension:"minecraft:polarnight"}] unless entity @s[nbt={Dimension:"minecraft:dawn"}] run function common/disaster/do
