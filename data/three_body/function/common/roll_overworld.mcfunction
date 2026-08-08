execute store result score #ROLL roll_chance run random value 0..99
execute store result score #ROLL_EXTREME roll_chance run random value 0..99

# [난세기 중 멸망: 2% (0~1)]
execute if entity @a[nbt={Dimension:"minecraft:overworld"}] if score #GLOBAL state_overworld matches 1 if score #ROLL_EXTREME roll_chance matches 0..1 run tellraw @a[nbt={Dimension:"minecraft:overworld"}] [{"text":"[오버월드] 난세기 중 멸망!","color":"dark_red"}]
execute if entity @a[nbt={Dimension:"minecraft:overworld"}] if score #GLOBAL state_overworld matches 1 if score #ROLL_EXTREME roll_chance matches 0..1 run scoreboard players set #GLOBAL state_overworld 2

# [난세기 발동: 20% (0~19)]
execute if score #GLOBAL state_overworld matches 0 if score #ROLL roll_chance matches 0..19 run tellraw @a[nbt={Dimension:"minecraft:overworld"}] [{"text":"[오버월드] 난세기 시작!","color":"red"}]
execute unless score #GLOBAL state_overworld matches 2 if score #ROLL roll_chance matches 0..19 run scoreboard players set #GLOBAL state_overworld 1
execute unless score #GLOBAL state_overworld matches 2 if score #ROLL roll_chance matches 0..19 run bossbar set three_body:bossbar_overworld color red

execute unless score #GLOBAL state_overworld matches 2 if score #ROLL roll_chance matches 0..3 run scoreboard players set #GLOBAL timer_overworld 600
execute unless score #GLOBAL state_overworld matches 2 if score #ROLL roll_chance matches 0..3 run bossbar set three_body:bossbar_overworld max 600
execute unless score #GLOBAL state_overworld matches 2 if score #ROLL roll_chance matches 3..6 run scoreboard players set #GLOBAL timer_overworld 1200
execute unless score #GLOBAL state_overworld matches 2 if score #ROLL roll_chance matches 3..6 run bossbar set three_body:bossbar_overworld max 1200
execute unless score #GLOBAL state_overworld matches 2 if score #ROLL roll_chance matches 7..10 run scoreboard players set #GLOBAL timer_overworld 1800
execute unless score #GLOBAL state_overworld matches 2 if score #ROLL roll_chance matches 7..10 run bossbar set three_body:bossbar_overworld max 1800
execute unless score #GLOBAL state_overworld matches 2 if score #ROLL roll_chance matches 11..14 run scoreboard players set #GLOBAL timer_overworld 2400
execute unless score #GLOBAL state_overworld matches 2 if score #ROLL roll_chance matches 11..14 run bossbar set three_body:bossbar_overworld max 2400
execute unless score #GLOBAL state_overworld matches 2 if score #ROLL roll_chance matches 15..19 run scoreboard players set #GLOBAL timer_overworld 4800
execute unless score #GLOBAL state_overworld matches 2 if score #ROLL roll_chance matches 15..19 run bossbar set three_body:bossbar_overworld max 4800

# [항성기 복귀: 95% (20~99)]
execute if score #GLOBAL state_overworld matches 1 if score #ROLL roll_chance matches 20..99 run tellraw @a[nbt={Dimension:"minecraft:overworld"}] [{"text":"[오버월드] 평화로운 항성기 도래","color":"green"}]
execute unless score #GLOBAL state_overworld matches 2 if score #ROLL roll_chance matches 20..99 run scoreboard players set #GLOBAL state_overworld 0
execute unless score #GLOBAL state_overworld matches 2 if score #ROLL roll_chance matches 0..19 run bossbar set three_body:bossbar_overworld color green

execute unless score #GLOBAL state_overworld matches 2 if score #ROLL roll_chance matches 20..39 run scoreboard players set #GLOBAL timer_overworld 600
execute unless score #GLOBAL state_overworld matches 2 if score #ROLL roll_chance matches 20..39 run bossbar set three_body:bossbar_overworld max 600
execute unless score #GLOBAL state_overworld matches 2 if score #ROLL roll_chance matches 40..59 run scoreboard players set #GLOBAL timer_overworld 1200
execute unless score #GLOBAL state_overworld matches 2 if score #ROLL roll_chance matches 40..59 run bossbar set three_body:bossbar_overworld max 1200
execute unless score #GLOBAL state_overworld matches 2 if score #ROLL roll_chance matches 60..79 run scoreboard players set #GLOBAL timer_overworld 2400
execute unless score #GLOBAL state_overworld matches 2 if score #ROLL roll_chance matches 60..79 run bossbar set three_body:bossbar_overworld max 2400
execute unless score #GLOBAL state_overworld matches 2 if score #ROLL roll_chance matches 80..99 run scoreboard players set #GLOBAL timer_overworld 4800
execute unless score #GLOBAL state_overworld matches 2 if score #ROLL roll_chance matches 80..99 run bossbar set three_body:bossbar_overworld max 4800