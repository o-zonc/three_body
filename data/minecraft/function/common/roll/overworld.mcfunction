execute store result score #ROLL roll_chance run random value 0..99
execute store result score #ROLL_EXTREME roll_chance run random value 0..99

# [난세기 중 멸망: 70% (0~69)]
execute if score #GLOBAL state_overworld matches 1 if score #ROLL_EXTREME roll_chance matches 0..69 run tellraw @a[nbt={Dimension:"minecraft:overworld"}] [{"text":"[오버월드] 난세기 중 멸망!","color":"dark_red"}]
execute if score #GLOBAL state_overworld matches 1 if score #ROLL_EXTREME roll_chance matches 0..69 run scoreboard players set #GLOBAL state_overworld 2

# [난세기 발동: 25% (0~24)]
execute if score #GLOBAL state_overworld matches 0 if score #ROLL roll_chance matches 0..24 run tellraw @a[nbt={Dimension:"minecraft:overworld"}] [{"text":"[오버월드] 난세기 시작!","color":"red"}]
execute unless score #GLOBAL state_overworld matches 2 if score #ROLL roll_chance matches 0..24 run scoreboard players set #GLOBAL state_overworld 1

# 난세기 지속 시간: 45 / 60 / 90 / 120 / 150초
execute unless score #GLOBAL state_overworld matches 2 if score #ROLL roll_chance matches 0..4 run scoreboard players set #GLOBAL timer_overworld 900
execute unless score #GLOBAL state_overworld matches 2 if score #ROLL roll_chance matches 0..4 run bossbar set bossbar_overworld max 900
execute unless score #GLOBAL state_overworld matches 2 if score #ROLL roll_chance matches 5..9 run scoreboard players set #GLOBAL timer_overworld 1200
execute unless score #GLOBAL state_overworld matches 2 if score #ROLL roll_chance matches 5..9 run bossbar set bossbar_overworld max 1200
execute unless score #GLOBAL state_overworld matches 2 if score #ROLL roll_chance matches 10..14 run scoreboard players set #GLOBAL timer_overworld 1800
execute unless score #GLOBAL state_overworld matches 2 if score #ROLL roll_chance matches 10..14 run bossbar set bossbar_overworld max 1800
execute unless score #GLOBAL state_overworld matches 2 if score #ROLL roll_chance matches 15..19 run scoreboard players set #GLOBAL timer_overworld 2400
execute unless score #GLOBAL state_overworld matches 2 if score #ROLL roll_chance matches 15..19 run bossbar set bossbar_overworld max 2400
execute unless score #GLOBAL state_overworld matches 2 if score #ROLL roll_chance matches 20..24 run scoreboard players set #GLOBAL timer_overworld 3000
execute unless score #GLOBAL state_overworld matches 2 if score #ROLL roll_chance matches 20..24 run bossbar set bossbar_overworld max 3000

# [항성기 복귀/유지: 75% (25~99)]
execute if score #GLOBAL state_overworld matches 1 if score #ROLL roll_chance matches 25..99 run tellraw @a[nbt={Dimension:"minecraft:overworld"}] [{"text":"[오버월드] 평화로운 항성기 도래","color":"green"}]
execute unless score #GLOBAL state_overworld matches 2 if score #ROLL roll_chance matches 25..99 run scoreboard players set #GLOBAL state_overworld 0

# 일반 항성기 판정 간격: 3 / 4 / 5 / 6 / 7.5분
execute unless score #GLOBAL state_overworld matches 2 if score #ROLL roll_chance matches 25..39 run scoreboard players set #GLOBAL timer_overworld 3600
execute unless score #GLOBAL state_overworld matches 2 if score #ROLL roll_chance matches 25..39 run bossbar set bossbar_overworld max 3600
execute unless score #GLOBAL state_overworld matches 2 if score #ROLL roll_chance matches 40..54 run scoreboard players set #GLOBAL timer_overworld 4800
execute unless score #GLOBAL state_overworld matches 2 if score #ROLL roll_chance matches 40..54 run bossbar set bossbar_overworld max 4800
execute unless score #GLOBAL state_overworld matches 2 if score #ROLL roll_chance matches 55..69 run scoreboard players set #GLOBAL timer_overworld 6000
execute unless score #GLOBAL state_overworld matches 2 if score #ROLL roll_chance matches 55..69 run bossbar set bossbar_overworld max 6000
execute unless score #GLOBAL state_overworld matches 2 if score #ROLL roll_chance matches 70..84 run scoreboard players set #GLOBAL timer_overworld 7200
execute unless score #GLOBAL state_overworld matches 2 if score #ROLL roll_chance matches 70..84 run bossbar set bossbar_overworld max 7200
execute unless score #GLOBAL state_overworld matches 2 if score #ROLL roll_chance matches 85..99 run scoreboard players set #GLOBAL timer_overworld 9000
execute unless score #GLOBAL state_overworld matches 2 if score #ROLL roll_chance matches 85..99 run bossbar set bossbar_overworld max 9000
