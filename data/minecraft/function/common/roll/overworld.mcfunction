execute store result score #ROLL roll_chance run random value 0..99
execute store result score #ROLL_EXTREME roll_chance run random value 0..99

# [난세기 중 멸망: 50% (0~49)]
execute if score #GLOBAL state_overworld matches 1 if score #ROLL_EXTREME roll_chance matches 0..49 run tellraw @a[nbt={Dimension:"minecraft:overworld"}] [{"text":"[오버월드] 난세기 중 멸망!","color":"dark_red"}]
execute if score #GLOBAL state_overworld matches 1 if score #ROLL_EXTREME roll_chance matches 0..49 run scoreboard players set #GLOBAL state_overworld 2

# [난세기 발동: 30% (0~29)]
execute if score #GLOBAL state_overworld matches 0 if score #ROLL roll_chance matches 0..29 run tellraw @a[nbt={Dimension:"minecraft:overworld"}] [{"text":"[오버월드] 난세기 시작!","color":"red"}]
execute unless score #GLOBAL state_overworld matches 2 if score #ROLL roll_chance matches 0..29 run scoreboard players set #GLOBAL state_overworld 1

# 난세기 지속 시간: 45 / 60 / 90 / 120 / 150초 (30% 구간을 5등분)
execute unless score #GLOBAL state_overworld matches 2 if score #ROLL roll_chance matches 0..5 run scoreboard players set #GLOBAL timer_overworld 900
execute unless score #GLOBAL state_overworld matches 2 if score #ROLL roll_chance matches 0..5 run bossbar set bossbar_overworld max 900
execute unless score #GLOBAL state_overworld matches 2 if score #ROLL roll_chance matches 6..11 run scoreboard players set #GLOBAL timer_overworld 1200
execute unless score #GLOBAL state_overworld matches 2 if score #ROLL roll_chance matches 6..11 run bossbar set bossbar_overworld max 1200
execute unless score #GLOBAL state_overworld matches 2 if score #ROLL roll_chance matches 12..17 run scoreboard players set #GLOBAL timer_overworld 1800
execute unless score #GLOBAL state_overworld matches 2 if score #ROLL roll_chance matches 12..17 run bossbar set bossbar_overworld max 1800
execute unless score #GLOBAL state_overworld matches 2 if score #ROLL roll_chance matches 18..23 run scoreboard players set #GLOBAL timer_overworld 2400
execute unless score #GLOBAL state_overworld matches 2 if score #ROLL roll_chance matches 18..23 run bossbar set bossbar_overworld max 2400
execute unless score #GLOBAL state_overworld matches 2 if score #ROLL roll_chance matches 24..29 run scoreboard players set #GLOBAL timer_overworld 3000
execute unless score #GLOBAL state_overworld matches 2 if score #ROLL roll_chance matches 24..29 run bossbar set bossbar_overworld max 3000

# [항성기 복귀/유지: 70% (30~99)]
execute if score #GLOBAL state_overworld matches 1 if score #ROLL roll_chance matches 30..99 run tellraw @a[nbt={Dimension:"minecraft:overworld"}] [{"text":"[오버월드] 평화로운 항성기 도래","color":"green"}]
execute unless score #GLOBAL state_overworld matches 2 if score #ROLL roll_chance matches 30..99 run scoreboard players set #GLOBAL state_overworld 0

# 일반 항성기 판정 간격: 3 / 4 / 5 / 6 / 7.5분 (70% 구간을 5등분)
execute unless score #GLOBAL state_overworld matches 2 if score #ROLL roll_chance matches 30..43 run scoreboard players set #GLOBAL timer_overworld 3600
execute unless score #GLOBAL state_overworld matches 2 if score #ROLL roll_chance matches 30..43 run bossbar set bossbar_overworld max 3600
execute unless score #GLOBAL state_overworld matches 2 if score #ROLL roll_chance matches 44..57 run scoreboard players set #GLOBAL timer_overworld 4800
execute unless score #GLOBAL state_overworld matches 2 if score #ROLL roll_chance matches 44..57 run bossbar set bossbar_overworld max 4800
execute unless score #GLOBAL state_overworld matches 2 if score #ROLL roll_chance matches 58..71 run scoreboard players set #GLOBAL timer_overworld 6000
execute unless score #GLOBAL state_overworld matches 2 if score #ROLL roll_chance matches 58..71 run bossbar set bossbar_overworld max 6000
execute unless score #GLOBAL state_overworld matches 2 if score #ROLL roll_chance matches 72..85 run scoreboard players set #GLOBAL timer_overworld 7200
execute unless score #GLOBAL state_overworld matches 2 if score #ROLL roll_chance matches 72..85 run bossbar set bossbar_overworld max 7200
execute unless score #GLOBAL state_overworld matches 2 if score #ROLL roll_chance matches 86..99 run scoreboard players set #GLOBAL timer_overworld 9000
execute unless score #GLOBAL state_overworld matches 2 if score #ROLL roll_chance matches 86..99 run bossbar set bossbar_overworld max 9000
