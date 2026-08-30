execute store result score #ROLL roll_chance run random value 0..99
execute store result score #ROLL_EXTREME roll_chance run random value 0..99

# [난세기 중 멸망: 85% (0~84)]
execute if score #GLOBAL state_dried matches 1 if score #ROLL_EXTREME roll_chance matches 0..84 run tellraw @a[nbt={Dimension:"minecraft:dried"}] [{"text":"[메마른 세계] 난세기 중 멸망!","color":"#a05500"}]
execute if score #GLOBAL state_dried matches 1 if score #ROLL_EXTREME roll_chance matches 0..84 run scoreboard players set #GLOBAL state_dried 2

# [난세기 발동: 50% (0~49)]
execute if score #GLOBAL state_dried matches 0 if score #ROLL roll_chance matches 0..49 run tellraw @a[nbt={Dimension:"minecraft:dried"}] [{"text":"[메마른 세계] 난세기 시작!","color":"gold"}]
execute unless score #GLOBAL state_dried matches 2 if score #ROLL roll_chance matches 0..49 run scoreboard players set #GLOBAL state_dried 1

# 난세기 지속 시간: 30 / 45 / 60초
execute unless score #GLOBAL state_dried matches 2 if score #ROLL roll_chance matches 0..16 run scoreboard players set #GLOBAL timer_dried 600
execute unless score #GLOBAL state_dried matches 2 if score #ROLL roll_chance matches 0..16 run bossbar set bossbar_dried max 600
execute unless score #GLOBAL state_dried matches 2 if score #ROLL roll_chance matches 17..32 run scoreboard players set #GLOBAL timer_dried 900
execute unless score #GLOBAL state_dried matches 2 if score #ROLL roll_chance matches 17..32 run bossbar set bossbar_dried max 900
execute unless score #GLOBAL state_dried matches 2 if score #ROLL roll_chance matches 33..49 run scoreboard players set #GLOBAL timer_dried 1200
execute unless score #GLOBAL state_dried matches 2 if score #ROLL roll_chance matches 33..49 run bossbar set bossbar_dried max 1200

# [항성기 복귀/유지: 50% (50~99)]
execute if score #GLOBAL state_dried matches 1 if score #ROLL roll_chance matches 50..99 run tellraw @a[nbt={Dimension:"minecraft:dried"}] [{"text":"[메마른 세계] 평화로운 항성기 도래","color":"green"}]
execute unless score #GLOBAL state_dried matches 2 if score #ROLL roll_chance matches 50..99 run scoreboard players set #GLOBAL state_dried 0

# 항성기 판정 간격: 2 / 3 / 4분
execute unless score #GLOBAL state_dried matches 2 if score #ROLL roll_chance matches 50..66 run scoreboard players set #GLOBAL timer_dried 2400
execute unless score #GLOBAL state_dried matches 2 if score #ROLL roll_chance matches 50..66 run bossbar set bossbar_dried max 2400
execute unless score #GLOBAL state_dried matches 2 if score #ROLL roll_chance matches 67..82 run scoreboard players set #GLOBAL timer_dried 3600
execute unless score #GLOBAL state_dried matches 2 if score #ROLL roll_chance matches 67..82 run bossbar set bossbar_dried max 3600
execute unless score #GLOBAL state_dried matches 2 if score #ROLL roll_chance matches 83..99 run scoreboard players set #GLOBAL timer_dried 4800
execute unless score #GLOBAL state_dried matches 2 if score #ROLL roll_chance matches 83..99 run bossbar set bossbar_dried max 4800
