# 문명 초월
execute if entity @s[nbt={Dimension:"minecraft:dawn"}] run return run function mover/restricted/transcendence
execute unless entity @s[nbt={Dimension:"minecraft:polarnight"}] run function mover/restricted/common
execute if entity @s[nbt={Dimension:"minecraft:polarnight"}] run scoreboard players set #GLOBAL user_disaster 1
execute if entity @s[nbt={Dimension:"minecraft:polarnight"}] run function common/disaster/do
