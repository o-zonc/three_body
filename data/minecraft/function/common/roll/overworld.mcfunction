# 판정 시작 시점의 시대 상태를 고정합니다.
# 0=항성기, 1=난세기, 2=멸망
# 이 스냅샷을 사용해 이번 판정에서 새로 난세기에 진입한 경우 곧바로 멸망 판정으로 이어지지 않도록 합니다.
scoreboard players operation #OVERWORLD_PREV_STATE tmp = #GLOBAL state_overworld

execute store result score #ROLL roll_chance run random value 0..99
execute store result score #ROLL_EXTREME roll_chance run random value 0..99

# 이미 멸망 상태라면 시대 판정을 더 진행하지 않습니다.
execute if score #OVERWORLD_PREV_STATE tmp matches 2 run return 0

# [난세기 중 멸망: 50% (0~49)]
# 반드시 판정 시작 시점부터 난세기였던 경우에만 멸망할 수 있습니다.
execute if score #OVERWORLD_PREV_STATE tmp matches 1 if score #ROLL_EXTREME roll_chance matches 0..49 run tellraw @a[nbt={Dimension:"minecraft:overworld"}] [{"text":"[오버월드] 난세기 중 멸망!","color":"dark_red"}]
execute if score #OVERWORLD_PREV_STATE tmp matches 1 if score #ROLL_EXTREME roll_chance matches 0..49 run scoreboard players set #GLOBAL state_overworld 2
execute if score #GLOBAL state_overworld matches 2 run return 0

# [난세기 발동/유지: 30% (0~29)]
# 항성기에서 처음 난세기로 진입할 때만 시작 메시지를 출력합니다.
execute if score #OVERWORLD_PREV_STATE tmp matches 0 if score #ROLL roll_chance matches 0..29 run tellraw @a[nbt={Dimension:"minecraft:overworld"}] [{"text":"[오버월드] 난세기 시작!","color":"red"}]
execute if score #ROLL roll_chance matches 0..29 run scoreboard players set #GLOBAL state_overworld 1

# 난세기 지속 시간: 45 / 60 / 90 / 120 / 150초 (30% 구간을 5등분)
execute if score #ROLL roll_chance matches 0..5 run scoreboard players set #GLOBAL timer_overworld 900
execute if score #ROLL roll_chance matches 0..5 run bossbar set bossbar_overworld max 900
execute if score #ROLL roll_chance matches 6..11 run scoreboard players set #GLOBAL timer_overworld 1200
execute if score #ROLL roll_chance matches 6..11 run bossbar set bossbar_overworld max 1200
execute if score #ROLL roll_chance matches 12..17 run scoreboard players set #GLOBAL timer_overworld 1800
execute if score #ROLL roll_chance matches 12..17 run bossbar set bossbar_overworld max 1800
execute if score #ROLL roll_chance matches 18..23 run scoreboard players set #GLOBAL timer_overworld 2400
execute if score #ROLL roll_chance matches 18..23 run bossbar set bossbar_overworld max 2400
execute if score #ROLL roll_chance matches 24..29 run scoreboard players set #GLOBAL timer_overworld 3000
execute if score #ROLL roll_chance matches 24..29 run bossbar set bossbar_overworld max 3000

# [항성기 복귀/유지: 70% (30~99)]
# 난세기를 생존한 뒤 항성기로 복귀할 때만 복귀 메시지를 출력합니다.
execute if score #OVERWORLD_PREV_STATE tmp matches 1 if score #ROLL roll_chance matches 30..99 run tellraw @a[nbt={Dimension:"minecraft:overworld"}] [{"text":"[오버월드] 평화로운 항성기 도래","color":"green"}]
execute if score #ROLL roll_chance matches 30..99 run scoreboard players set #GLOBAL state_overworld 0

# 일반 항성기 판정 간격: 3 / 4 / 5 / 6 / 7.5분 (70% 구간을 5등분)
execute if score #ROLL roll_chance matches 30..43 run scoreboard players set #GLOBAL timer_overworld 3600
execute if score #ROLL roll_chance matches 30..43 run bossbar set bossbar_overworld max 3600
execute if score #ROLL roll_chance matches 44..57 run scoreboard players set #GLOBAL timer_overworld 4800
execute if score #ROLL roll_chance matches 44..57 run bossbar set bossbar_overworld max 4800
execute if score #ROLL roll_chance matches 58..71 run scoreboard players set #GLOBAL timer_overworld 6000
execute if score #ROLL roll_chance matches 58..71 run bossbar set bossbar_overworld max 6000
execute if score #ROLL roll_chance matches 72..85 run scoreboard players set #GLOBAL timer_overworld 7200
execute if score #ROLL roll_chance matches 72..85 run bossbar set bossbar_overworld max 7200
execute if score #ROLL roll_chance matches 86..99 run scoreboard players set #GLOBAL timer_overworld 9000
execute if score #ROLL roll_chance matches 86..99 run bossbar set bossbar_overworld max 9000
