execute store result score #ROLL roll_chance run random value 0..99
execute store result score #ROLL_EXTREME roll_chance run random value 0..99

# [난세기 중 멸망: 20% (0~19)]
execute if entity @a[nbt={Dimension:"minecraft:overworld"}] if score #GLOBAL state_overworld matches 1 if score #ROLL_EXTREME roll_chance matches 0..19 run tellraw @a[nbt={Dimension:"minecraft:overworld"}] [{"text":"[오버월드] 난세기 중 멸망!","color":"dark_red"}]
execute if entity @a[nbt={Dimension:"minecraft:overworld"}] if score #GLOBAL state_overworld matches 1 if score #ROLL_EXTREME roll_chance matches 0..19 run scoreboard players set #GLOBAL state_overworld 2

# [난세기 발동: 5% (0~4)]
execute if score #GLOBAL state_overworld matches 0 if score #ROLL roll_chance matches 0..4 run tellraw @a[nbt={Dimension:"minecraft:overworld"}] [{"text":"[오버월드] 난세기 시작!","color":"red"}]
execute unless score #GLOBAL state_overworld matches 2 if score #ROLL roll_chance matches 0..4 run scoreboard players set #GLOBAL state_overworld 1

execute unless score #GLOBAL state_overworld matches 2 if score #ROLL roll_chance matches 0 run scoreboard players set #GLOBAL timer_overworld 300
execute unless score #GLOBAL state_overworld matches 2 if score #ROLL roll_chance matches 0 run bossbar set three_body:bossbar_overworld max 300
execute unless score #GLOBAL state_overworld matches 2 if score #ROLL roll_chance matches 1 run scoreboard players set #GLOBAL timer_overworld 600
execute unless score #GLOBAL state_overworld matches 2 if score #ROLL roll_chance matches 1 run bossbar set three_body:bossbar_overworld max 600
execute unless score #GLOBAL state_overworld matches 2 if score #ROLL roll_chance matches 2 run scoreboard players set #GLOBAL timer_overworld 900
execute unless score #GLOBAL state_overworld matches 2 if score #ROLL roll_chance matches 2 run bossbar set three_body:bossbar_overworld max 900
execute unless score #GLOBAL state_overworld matches 2 if score #ROLL roll_chance matches 3 run scoreboard players set #GLOBAL timer_overworld 1200
execute unless score #GLOBAL state_overworld matches 2 if score #ROLL roll_chance matches 3 run bossbar set three_body:bossbar_overworld max 1200
execute unless score #GLOBAL state_overworld matches 2 if score #ROLL roll_chance matches 4 run scoreboard players set #GLOBAL timer_overworld 1800
execute unless score #GLOBAL state_overworld matches 2 if score #ROLL roll_chance matches 4 run bossbar set three_body:bossbar_overworld max 1800

# [항성기 복귀: 95% (5~99)]
execute if score #GLOBAL state_overworld matches 1 if score #ROLL roll_chance matches 5..99 run tellraw @a[nbt={Dimension:"minecraft:overworld"}] [{"text":"[오버월드] 평화로운 항성기 도래","color":"green"}]
execute unless score #GLOBAL state_overworld matches 2 if score #ROLL roll_chance matches 5..99 run scoreboard players set #GLOBAL state_overworld 0

execute unless score #GLOBAL state_overworld matches 2 if score #ROLL roll_chance matches 5..23 run scoreboard players set #GLOBAL timer_overworld 300
execute unless score #GLOBAL state_overworld matches 2 if score #ROLL roll_chance matches 5..23 run bossbar set three_body:bossbar_overworld max 300
execute unless score #GLOBAL state_overworld matches 2 if score #ROLL roll_chance matches 24..42 run scoreboard players set #GLOBAL timer_overworld 600
execute unless score #GLOBAL state_overworld matches 2 if score #ROLL roll_chance matches 24..42 run bossbar set three_body:bossbar_overworld max 600
execute unless score #GLOBAL state_overworld matches 2 if score #ROLL roll_chance matches 43..61 run scoreboard players set #GLOBAL timer_overworld 1200
execute unless score #GLOBAL state_overworld matches 2 if score #ROLL roll_chance matches 43..61 run bossbar set three_body:bossbar_overworld max 1200
execute unless score #GLOBAL state_overworld matches 2 if score #ROLL roll_chance matches 62..80 run scoreboard players set #GLOBAL timer_overworld 1800
execute unless score #GLOBAL state_overworld matches 2 if score #ROLL roll_chance matches 62..80 run bossbar set three_body:bossbar_overworld max 1800
execute unless score #GLOBAL state_overworld matches 2 if score #ROLL roll_chance matches 81..99 run scoreboard players set #GLOBAL timer_overworld 2400
execute unless score #GLOBAL state_overworld matches 2 if score #ROLL roll_chance matches 81..99 run bossbar set three_body:bossbar_overworld max 2400