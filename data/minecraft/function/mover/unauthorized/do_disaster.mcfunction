# 실제 목적지 차원을 기준으로 기존 disaster/do의 차원별 random 연출을 재사용한다.
execute unless entity @a[nbt={Dimension:"minecraft:dried"}] unless entity @a[nbt={Dimension:"minecraft:frozen"}] run return 0
scoreboard players set #GLOBAL user_disaster 0
execute if entity @a[nbt={Dimension:"minecraft:dried"}] run scoreboard players set #GLOBAL state_dried 2
execute if entity @a[nbt={Dimension:"minecraft:frozen"}] run scoreboard players set #GLOBAL state_frozen 2
execute as @a[tag=player,gamemode=adventure,nbt={Dimension:"minecraft:dried"},limit=1] at @s run function common/disaster/do
execute as @a[tag=player,gamemode=adventure,nbt={Dimension:"minecraft:frozen"},limit=1] at @s run function common/disaster/do
