execute store result score #ROLL roll_chance run random value 0..99
execute store result score #ROLL_EXTREME roll_chance run random value 0..99

# [난세기 중 멸망: 40% (0~39)]
execute if score #GLOBAL state_dried matches 1 if score #ROLL_EXTREME roll_chance matches 0..39 run tellraw @a[nbt={Dimension:"minecraft:dried"}] [{"text":"[메마른 세계] 난세기 중 멸망!","color":"#a05500"}]
execute if score #GLOBAL state_dried matches 1 if score #ROLL_EXTREME roll_chance matches 0..39 run scoreboard players set #GLOBAL state_dried 2

# [난세기 발동: 10% (0~9)]
execute if score #GLOBAL state_dried matches 0 if score #ROLL roll_chance matches 0..9 run tellraw @a[nbt={Dimension:"minecraft:dried"}] [{"text":"[메마른 세계] 난세기 시작!","color":"gold"}]
execute unless score #GLOBAL state_dried matches 2 if score #ROLL roll_chance matches 0..9 run scoreboard players set #GLOBAL state_dried 1

# 난세기 지속 시간: 30 / 45 / 60초
execute unless score #GLOBAL state_dried matches 2 if score #ROLL roll_chance matches 0..2 run scoreboard players set #GLOBAL timer_dried 600
execute unless score #GLOBAL state_dried matches 2 if score #ROLL roll_chance matches 0..2 run bossbar set bossbar_dried max 600
execute unless score #GLOBAL state_dried matches 2 if score #ROLL roll_chance matches 3..5 run scoreboard players set #GLOBAL timer_dried 900
execute unless score #GLOBAL state_dried matches 2 if score #ROLL roll_chance matches 3..5 run bossbar set bossbar_dried max 900
execute unless score #GLOBAL state_dried matches 2 if score #ROLL roll_chance matches 6..9 run scoreboard players set #GLOBAL timer_dried 1200
execute unless score #GLOBAL state_dried matches 2 if score #ROLL roll_chance matches 6..9 run bossbar set bossbar_dried max 1200

# [항성기 복귀/유지: 90% (10~99)]
execute if score #GLOBAL state_dried matches 1 if score #ROLL roll_chance matches 10..99 run tellraw @a[nbt={Dimension:"minecraft:dried"}] [{"text":"[메마른 세계] 평화로운 항성기 도래","color":"green"}]
execute unless score #GLOBAL state_dried matches 2 if score #ROLL roll_chance matches 10..99 run scoreboard players set #GLOBAL state_dried 0

# 항성기 판정 간격: 2 / 3 / 4분
execute unless score #GLOBAL state_dried matches 2 if score #ROLL roll_chance matches 10..39 run scoreboard players set #GLOBAL timer_dried 2400
execute unless score #GLOBAL state_dried matches 2 if score #ROLL roll_chance matches 10..39 run bossbar set bossbar_dried max 2400
execute unless score #GLOBAL state_dried matches 2 if score #ROLL roll_chance matches 40..69 run scoreboard players set #GLOBAL timer_dried 3600
execute unless score #GLOBAL state_dried matches 2 if score #ROLL roll_chance matches 40..69 run bossbar set bossbar_dried max 3600
execute unless score #GLOBAL state_dried matches 2 if score #ROLL roll_chance matches 70..99 run scoreboard players set #GLOBAL timer_dried 4800
execute unless score #GLOBAL state_dried matches 2 if score #ROLL roll_chance matches 70..99 run bossbar set bossbar_dried max 4800
