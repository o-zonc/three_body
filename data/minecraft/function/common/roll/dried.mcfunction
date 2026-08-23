execute store result score #ROLL roll_chance run random value 0..99
execute store result score #ROLL_EXTREME roll_chance run random value 0..99

# [난세기 중 멸망: 40% (0~39)]
execute if score #GLOBAL state_dried matches 1 if score #ROLL_EXTREME roll_chance matches 0..39 run tellraw @a[nbt={Dimension:"minecraft:dried"}] [{"text":"[메마른 세계] 난세기 중 멸망!","color":"#a05500"}]
execute if score #GLOBAL state_dried matches 1 if score #ROLL_EXTREME roll_chance matches 0..39 run scoreboard players set #GLOBAL state_dried 2

# [난세기 발동: 10% (0~9)]
execute if score #GLOBAL state_dried matches 0 if score #ROLL roll_chance matches 0..9 run tellraw @a[nbt={Dimension:"minecraft:dried"}] [{"text":"[메마른 세계] 난세기 시작!","color":"gold"}]
execute unless score #GLOBAL state_dried matches 2 if score #ROLL roll_chance matches 0..9 run scoreboard players set #GLOBAL state_dried 1

execute unless score #GLOBAL state_dried matches 2 if score #ROLL roll_chance matches 0..9 run scoreboard players set #GLOBAL timer_dried 100
execute unless score #GLOBAL state_dried matches 2 if score #ROLL roll_chance matches 0..9 run bossbar set bossbar_dried max 100

# [항성기 복귀: 90% (10~99)]
execute if score #GLOBAL state_dried matches 1 if score #ROLL roll_chance matches 10..99 run tellraw @a[nbt={Dimension:"minecraft:dried"}] [{"text":"[메마른 세계] 평화로운 항성기 도래","color":"green"}]
execute unless score #GLOBAL state_dried matches 2 if score #ROLL roll_chance matches 10..99 run scoreboard players set #GLOBAL state_dried 0

execute unless score #GLOBAL state_dried matches 2 if score #ROLL roll_chance matches 10..54 run scoreboard players set #GLOBAL timer_dried 300
execute unless score #GLOBAL state_dried matches 2 if score #ROLL roll_chance matches 10..54 run bossbar set bossbar_dried max 300
execute unless score #GLOBAL state_dried matches 2 if score #ROLL roll_chance matches 55..99 run scoreboard players set #GLOBAL timer_dried 600
execute unless score #GLOBAL state_dried matches 2 if score #ROLL roll_chance matches 55..99 run bossbar set bossbar_dried max 600
