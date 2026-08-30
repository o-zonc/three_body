execute store result score #ROLL roll_chance run random value 0..99
execute store result score #ROLL_EXTREME roll_chance run random value 0..99

# 다리 발전과제의 차원 안정화 보상은 한 번 달성하면 문명 정산 이후에도 유지된다.
scoreboard players set #frozen_stabilized tmp 0
execute if entity @a[advancements={1_frozen/11_bridge=true}] run scoreboard players set #frozen_stabilized tmp 1

# [난세기 중 멸망]
# 안정화 전: 98% (0~97)
execute if score #GLOBAL state_frozen matches 1 unless score #frozen_stabilized tmp matches 1 if score #ROLL_EXTREME roll_chance matches 0..97 run tellraw @a[nbt={Dimension:"minecraft:frozen"}] [{"text":"[얼어붙은 세계] 난세기 중 멸망!","color":"dark_aqua"}]
execute if score #GLOBAL state_frozen matches 1 unless score #frozen_stabilized tmp matches 1 if score #ROLL_EXTREME roll_chance matches 0..97 run scoreboard players set #GLOBAL state_frozen 2
# 안정화 후: 75% (0~74, 오버월드 70%에 근접)
execute if score #GLOBAL state_frozen matches 1 if score #frozen_stabilized tmp matches 1 if score #ROLL_EXTREME roll_chance matches 0..74 run tellraw @a[nbt={Dimension:"minecraft:frozen"}] [{"text":"[얼어붙은 세계] 난세기 중 멸망!","color":"dark_aqua"}]
execute if score #GLOBAL state_frozen matches 1 if score #frozen_stabilized tmp matches 1 if score #ROLL_EXTREME roll_chance matches 0..74 run scoreboard players set #GLOBAL state_frozen 2

# 난세기 생존 발전과제: 안정화 이전의 2% 생존에서만 달성
execute if score #GLOBAL state_frozen matches 1 unless score #frozen_stabilized tmp matches 1 if score #ROLL_EXTREME roll_chance matches 98..99 run advancement grant @a only 1_frozen/01_chaos_survivor

# [난세기 발동]
# 안정화 전: 80% (0~79)
execute if score #GLOBAL state_frozen matches 0 unless score #frozen_stabilized tmp matches 1 if score #ROLL roll_chance matches 0..79 run tellraw @a[nbt={Dimension:"minecraft:frozen"}] [{"text":"[얼어붙은 세계] 난세기 시작!","color":"aqua"}]
execute unless score #GLOBAL state_frozen matches 2 unless score #frozen_stabilized tmp matches 1 if score #ROLL roll_chance matches 0..79 run scoreboard players set #GLOBAL state_frozen 1
# 안정화 후: 30% (0~29, 오버월드 25%에 근접)
execute if score #GLOBAL state_frozen matches 0 if score #frozen_stabilized tmp matches 1 if score #ROLL roll_chance matches 0..29 run tellraw @a[nbt={Dimension:"minecraft:frozen"}] [{"text":"[얼어붙은 세계] 난세기 시작!","color":"aqua"}]
execute unless score #GLOBAL state_frozen matches 2 if score #frozen_stabilized tmp matches 1 if score #ROLL roll_chance matches 0..29 run scoreboard players set #GLOBAL state_frozen 1

# [난세기 지속 시간 랜덤]
# 안정화 전: 기존 값 20 / 40 / 60 / 80초
execute unless score #GLOBAL state_frozen matches 2 unless score #frozen_stabilized tmp matches 1 if score #ROLL roll_chance matches 0..19 run scoreboard players set #GLOBAL timer_frozen 400
execute unless score #GLOBAL state_frozen matches 2 unless score #frozen_stabilized tmp matches 1 if score #ROLL roll_chance matches 0..19 run bossbar set bossbar_frozen max 400
execute unless score #GLOBAL state_frozen matches 2 unless score #frozen_stabilized tmp matches 1 if score #ROLL roll_chance matches 20..39 run scoreboard players set #GLOBAL timer_frozen 800
execute unless score #GLOBAL state_frozen matches 2 unless score #frozen_stabilized tmp matches 1 if score #ROLL roll_chance matches 20..39 run bossbar set bossbar_frozen max 800
execute unless score #GLOBAL state_frozen matches 2 unless score #frozen_stabilized tmp matches 1 if score #ROLL roll_chance matches 40..59 run scoreboard players set #GLOBAL timer_frozen 1200
execute unless score #GLOBAL state_frozen matches 2 unless score #frozen_stabilized tmp matches 1 if score #ROLL roll_chance matches 40..59 run bossbar set bossbar_frozen max 1200
execute unless score #GLOBAL state_frozen matches 2 unless score #frozen_stabilized tmp matches 1 if score #ROLL roll_chance matches 60..79 run scoreboard players set #GLOBAL timer_frozen 1600
execute unless score #GLOBAL state_frozen matches 2 unless score #frozen_stabilized tmp matches 1 if score #ROLL roll_chance matches 60..79 run bossbar set bossbar_frozen max 1600

# 안정화 후 난세기: 오버월드와 같은 45 / 60 / 90 / 120 / 150초
execute unless score #GLOBAL state_frozen matches 2 if score #frozen_stabilized tmp matches 1 if score #ROLL roll_chance matches 0..5 run scoreboard players set #GLOBAL timer_frozen 900
execute unless score #GLOBAL state_frozen matches 2 if score #frozen_stabilized tmp matches 1 if score #ROLL roll_chance matches 0..5 run bossbar set bossbar_frozen max 900
execute unless score #GLOBAL state_frozen matches 2 if score #frozen_stabilized tmp matches 1 if score #ROLL roll_chance matches 6..11 run scoreboard players set #GLOBAL timer_frozen 1200
execute unless score #GLOBAL state_frozen matches 2 if score #frozen_stabilized tmp matches 1 if score #ROLL roll_chance matches 6..11 run bossbar set bossbar_frozen max 1200
execute unless score #GLOBAL state_frozen matches 2 if score #frozen_stabilized tmp matches 1 if score #ROLL roll_chance matches 12..17 run scoreboard players set #GLOBAL timer_frozen 1800
execute unless score #GLOBAL state_frozen matches 2 if score #frozen_stabilized tmp matches 1 if score #ROLL roll_chance matches 12..17 run bossbar set bossbar_frozen max 1800
execute unless score #GLOBAL state_frozen matches 2 if score #frozen_stabilized tmp matches 1 if score #ROLL roll_chance matches 18..23 run scoreboard players set #GLOBAL timer_frozen 2400
execute unless score #GLOBAL state_frozen matches 2 if score #frozen_stabilized tmp matches 1 if score #ROLL roll_chance matches 18..23 run bossbar set bossbar_frozen max 2400
execute unless score #GLOBAL state_frozen matches 2 if score #frozen_stabilized tmp matches 1 if score #ROLL roll_chance matches 24..29 run scoreboard players set #GLOBAL timer_frozen 3000
execute unless score #GLOBAL state_frozen matches 2 if score #frozen_stabilized tmp matches 1 if score #ROLL roll_chance matches 24..29 run bossbar set bossbar_frozen max 3000

# [항성기 복귀]
# 안정화 전: 기존 값 20% (80~99), 20초
execute if score #GLOBAL state_frozen matches 1 unless score #frozen_stabilized tmp matches 1 if score #ROLL roll_chance matches 80..99 run tellraw @a[nbt={Dimension:"minecraft:frozen"}] [{"text":"[얼어붙은 세계] 평화로운 항성기 도래","color":"green"}]
execute unless score #GLOBAL state_frozen matches 2 unless score #frozen_stabilized tmp matches 1 if score #ROLL roll_chance matches 80..99 run scoreboard players set #GLOBAL state_frozen 0
execute unless score #GLOBAL state_frozen matches 2 unless score #frozen_stabilized tmp matches 1 if score #ROLL roll_chance matches 80..99 run scoreboard players set #GLOBAL timer_frozen 400
execute unless score #GLOBAL state_frozen matches 2 unless score #frozen_stabilized tmp matches 1 if score #ROLL roll_chance matches 80..99 run bossbar set bossbar_frozen max 400

# 안정화 후: 70% (30~99), 오버월드형 3 / 4 / 5 / 6 / 7.5분
execute if score #GLOBAL state_frozen matches 1 if score #frozen_stabilized tmp matches 1 if score #ROLL roll_chance matches 30..99 run tellraw @a[nbt={Dimension:"minecraft:frozen"}] [{"text":"[얼어붙은 세계] 평화로운 항성기 도래","color":"green"}]
execute unless score #GLOBAL state_frozen matches 2 if score #frozen_stabilized tmp matches 1 if score #ROLL roll_chance matches 30..99 run scoreboard players set #GLOBAL state_frozen 0
execute unless score #GLOBAL state_frozen matches 2 if score #frozen_stabilized tmp matches 1 if score #ROLL roll_chance matches 30..43 run scoreboard players set #GLOBAL timer_frozen 3600
execute unless score #GLOBAL state_frozen matches 2 if score #frozen_stabilized tmp matches 1 if score #ROLL roll_chance matches 30..43 run bossbar set bossbar_frozen max 3600
execute unless score #GLOBAL state_frozen matches 2 if score #frozen_stabilized tmp matches 1 if score #ROLL roll_chance matches 44..57 run scoreboard players set #GLOBAL timer_frozen 4800
execute unless score #GLOBAL state_frozen matches 2 if score #frozen_stabilized tmp matches 1 if score #ROLL roll_chance matches 44..57 run bossbar set bossbar_frozen max 4800
execute unless score #GLOBAL state_frozen matches 2 if score #frozen_stabilized tmp matches 1 if score #ROLL roll_chance matches 58..71 run scoreboard players set #GLOBAL timer_frozen 6000
execute unless score #GLOBAL state_frozen matches 2 if score #frozen_stabilized tmp matches 1 if score #ROLL roll_chance matches 58..71 run bossbar set bossbar_frozen max 6000
execute unless score #GLOBAL state_frozen matches 2 if score #frozen_stabilized tmp matches 1 if score #ROLL roll_chance matches 72..85 run scoreboard players set #GLOBAL timer_frozen 7200
execute unless score #GLOBAL state_frozen matches 2 if score #frozen_stabilized tmp matches 1 if score #ROLL roll_chance matches 72..85 run bossbar set bossbar_frozen max 7200
execute unless score #GLOBAL state_frozen matches 2 if score #frozen_stabilized tmp matches 1 if score #ROLL roll_chance matches 86..99 run scoreboard players set #GLOBAL timer_frozen 9000
execute unless score #GLOBAL state_frozen matches 2 if score #frozen_stabilized tmp matches 1 if score #ROLL roll_chance matches 86..99 run bossbar set bossbar_frozen max 9000
