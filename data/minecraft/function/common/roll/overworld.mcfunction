execute store result score #ROLL roll_chance run random value 0..99
execute store result score #ROLL_EXTREME roll_chance run random value 0..99

# [난세기 중 멸망: 50% (0~49)]
execute if score #GLOBAL state_overworld matches 1 if score #ROLL_EXTREME roll_chance matches 0..49 run tellraw @a[nbt={Dimension:"minecraft:overworld"}] [{"text":"[오버월드] 난세기 중 멸망!","color":"dark_red"}]
execute if score #GLOBAL state_overworld matches 1 if score #ROLL_EXTREME roll_chance matches 0..49 run scoreboard players set #GLOBAL state_overworld 2

# [난세기 발동: 30% (0~29)]
execute if score #GLOBAL state_overworld matches 0 if score #ROLL roll_chance matches 0..49 run tellraw @a[nbt={Dimension:"minecraft:overworld"}] [{"text":"[오버월드] 난세기 시작!","color":"red"}]
execute unless score #GLOBAL state_overworld matches 2 if score #ROLL roll_chance matches 0..49 run scoreboard players set #GLOBAL state_overworld 1

# 난세기 지속 시간: 45 / 60 / 90 / 120 / 150초 (50% 구간을 5등분)
execute unless score #GLOBAL state_overworld matches 2 if score #ROLL roll_chance matches 0..9 run scoreboard players set #GLOBAL timer_overworld 900
execute unless score #GLOBAL state_overworld matches 2 if score #ROLL roll_chance matches 0..9 run bossbar set bossbar_overworld max 900
execute unless score #GLOBAL state_overworld matches 2 if score #ROLL roll_chance matches 10..19 run scoreboard players set #GLOBAL timer_overworld 1200
execute unless score #GLOBAL state_overworld matches 2 if score #ROLL roll_chance matches 10..19 run bossbar set bossbar_overworld max 1200
execute unless score #GLOBAL state_overworld matches 2 if score #ROLL roll_chance matches 20..29 run scoreboard players set #GLOBAL timer_overworld 1800
execute unless score #GLOBAL state_overworld matches 2 if score #ROLL roll_chance matches 20..29 run bossbar set bossbar_overworld max 1800
execute unless score #GLOBAL state_overworld matches 2 if score #ROLL roll_chance matches 30..39 run scoreboard players set #GLOBAL timer_overworld 2400
execute unless score #GLOBAL state_overworld matches 2 if score #ROLL roll_chance matches 30..39 run bossbar set bossbar_overworld max 2400
execute unless score #GLOBAL state_overworld matches 2 if score #ROLL roll_chance matches 40..49 run scoreboard players set #GLOBAL timer_overworld 3000
execute unless score #GLOBAL state_overworld matches 2 if score #ROLL roll_chance matches 40..49 run bossbar set bossbar_overworld max 3000

# [항성기 복귀/유지: 50% (50~99)]
execute if score #GLOBAL state_overworld matches 1 if score #ROLL roll_chance matches 50..99 run tellraw @a[nbt={Dimension:"minecraft:overworld"}] [{"text":"[오버월드] 평화로운 항성기 도래","color":"green"}]
execute unless score #GLOBAL state_overworld matches 2 if score #ROLL roll_chance matches 50..99 run scoreboard players set #GLOBAL state_overworld 0

# 일반 항성기 판정 간격: 3 / 4 / 5 / 6 / 7.5분 (70% 구간을 5등분)
execute unless score #GLOBAL state_overworld matches 2 if score #ROLL roll_chance matches 50..59 run scoreboard players set #GLOBAL timer_overworld 3600
execute unless score #GLOBAL state_overworld matches 2 if score #ROLL roll_chance matches 50..59 run bossbar set bossbar_overworld max 3600
execute unless score #GLOBAL state_overworld matches 2 if score #ROLL roll_chance matches 60..69 run scoreboard players set #GLOBAL timer_overworld 4800
execute unless score #GLOBAL state_overworld matches 2 if score #ROLL roll_chance matches 60..69 run bossbar set bossbar_overworld max 4800
execute unless score #GLOBAL state_overworld matches 2 if score #ROLL roll_chance matches 70..79 run scoreboard players set #GLOBAL timer_overworld 6000
execute unless score #GLOBAL state_overworld matches 2 if score #ROLL roll_chance matches 70..79 run bossbar set bossbar_overworld max 6000
execute unless score #GLOBAL state_overworld matches 2 if score #ROLL roll_chance matches 80..89 run scoreboard players set #GLOBAL timer_overworld 7200
execute unless score #GLOBAL state_overworld matches 2 if score #ROLL roll_chance matches 80..89 run bossbar set bossbar_overworld max 7200
execute unless score #GLOBAL state_overworld matches 2 if score #ROLL roll_chance matches 90..99 run scoreboard players set #GLOBAL timer_overworld 9000
execute unless score #GLOBAL state_overworld matches 2 if score #ROLL roll_chance matches 90..99 run bossbar set bossbar_overworld max 9000
