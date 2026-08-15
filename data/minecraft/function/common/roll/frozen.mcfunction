execute store result score #ROLL roll_chance run random value 0..99
execute store result score #ROLL_EXTREME roll_chance run random value 0..99

# [난세기 중 멸망: 98% (0~97)]
execute if score #GLOBAL state_frozen matches 1 if score #ROLL_EXTREME roll_chance matches 0..97 run tellraw @a[nbt={Dimension:"minecraft:frozen"}] [{"text":"[얼어붙은 세계] 난세기 중 멸망!","color":"dark_aqua"}]
execute if score #GLOBAL state_frozen matches 1 if score #ROLL_EXTREME roll_chance matches 0..97 run scoreboard players set #GLOBAL state_frozen 2
execute if score #GLOBAL state_frozen matches 1 if score #ROLL_EXTREME roll_chance matches 98..99 run advancement grant @a only minecraft:1_frozen/01_chaotic

# [난세기 발동: 80% (0~79)]
execute if score #GLOBAL state_frozen matches 0 if score #ROLL roll_chance matches 0..79 run tellraw @a[nbt={Dimension:"minecraft:frozen"}] [{"text":"[얼어붙은 세계] 난세기 시작!","color":"aqua"}]
execute unless score #GLOBAL state_frozen matches 2 if score #ROLL roll_chance matches 0..79 run scoreboard players set #GLOBAL state_frozen 1

#  [난세기 지속 시간 랜덤]
execute unless score #GLOBAL state_frozen matches 2 if score #ROLL roll_chance matches 0..19 run scoreboard players set #GLOBAL timer_frozen 400
execute unless score #GLOBAL state_frozen matches 2 if score #ROLL roll_chance matches 0..19 run bossbar set minecraft:bossbar_frozen max 400
execute unless score #GLOBAL state_frozen matches 2 if score #ROLL roll_chance matches 20..39 run scoreboard players set #GLOBAL timer_frozen 800
execute unless score #GLOBAL state_frozen matches 2 if score #ROLL roll_chance matches 20..39 run bossbar set minecraft:bossbar_frozen max 800
execute unless score #GLOBAL state_frozen matches 2 if score #ROLL roll_chance matches 40..59 run scoreboard players set #GLOBAL timer_frozen 1200
execute unless score #GLOBAL state_frozen matches 2 if score #ROLL roll_chance matches 40..59 run bossbar set minecraft:bossbar_frozen max 1200
execute unless score #GLOBAL state_frozen matches 2 if score #ROLL roll_chance matches 60..79 run scoreboard players set #GLOBAL timer_frozen 1600
execute unless score #GLOBAL state_frozen matches 2 if score #ROLL roll_chance matches 60..79 run bossbar set minecraft:bossbar_frozen max 1600

# [항성기 복귀: 20% (80~99)]
execute if score #GLOBAL state_frozen matches 1 if score #ROLL roll_chance matches 80..99 run tellraw @a[nbt={Dimension:"minecraft:frozen"}] [{"text":"[얼어붙은 세계] 평화로운 항성기 도래","color":"green"}]
execute unless score #GLOBAL state_frozen matches 2 if score #ROLL roll_chance matches 80..99 run scoreboard players set #GLOBAL state_frozen 0

execute unless score #GLOBAL state_frozen matches 2 if score #ROLL roll_chance matches 80..99 run scoreboard players set #GLOBAL timer_frozen 400
execute unless score #GLOBAL state_frozen matches 2 if score #ROLL roll_chance matches 80..99 run bossbar set minecraft:bossbar_frozen max 400