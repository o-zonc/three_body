# 리액터
execute if entity @s[nbt={Dimension:"minecraft:polarnight"}] run return run function mover/restricted/reactor
execute unless entity @s[nbt={Dimension:"minecraft:dawn"}] run return run function mover/restricted/common
execute if entity @s[nbt={Dimension:"minecraft:dawn"}] run clear @a minecraft:white_dye[minecraft:custom_data~{epiphany:1b}]
execute if entity @s[nbt={Dimension:"minecraft:dawn"}] run clear @a minecraft:gray_dye[minecraft:custom_data~{reactor:1b}]
execute if entity @s[nbt={Dimension:"minecraft:dawn"}] run scoreboard players set #GLOBAL user_disaster 1
execute if entity @s[nbt={Dimension:"minecraft:dawn"}] run function common/disaster/do
