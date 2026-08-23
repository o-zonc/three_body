# 문명 초월
execute if entity @s[nbt={Dimension:"minecraft:dawn"}] run return run function mover/restricted/transcendence
execute unless entity @s[nbt={Dimension:"minecraft:polarnight"}] run function mover/restricted/common

# 극야에서 깨달음을 처음 사용하면 박명 발전과제를 획득한다.
execute if entity @s[nbt={Dimension:"minecraft:polarnight"}] run advancement grant @s only 3_polarnight/02_twilight
execute if entity @s[nbt={Dimension:"minecraft:polarnight"}] run scoreboard players set #GLOBAL user_disaster 1
execute if entity @s[nbt={Dimension:"minecraft:polarnight"}] run function common/disaster/do
