execute store result score #ROLL roll_chance run random value 0..99
execute store result score #ROLL_EXTREME roll_chance run random value 0..99

# 다리 발전과제의 차원 안정화 보상은 한 번 달성하면 문명 정산 이후에도 유지된다.
scoreboard players set #frozen_stabilized tmp 0
execute if entity @a[advancements={1_frozen/11_bridge=true}] run scoreboard players set #frozen_stabilized tmp 1

# [난세기 중 멸망]
# 안정화 전: 98% (0~97)
execute if score #GLOBAL state_frozen matches 1 unless score #frozen_stabilized tmp matches 1 if score #ROLL_EXTREME roll_chance matches 0..97 run tellraw @a[nbt={Dimension:"minecraft:frozen"}] [{"text":"[얼어붙은 세계] 난세기 중 멸망!","color":"dark_aqua"}]
execute if score #GLOBAL state_frozen matches 1 unless score #frozen_stabilized tmp matches 1 if score #ROLL_EXTREME roll_chance matches 0..97 run scoreboard players set #GLOBAL state_frozen 2
# 안정화 후: 60% (0~59)
execute if score #GLOBAL state_frozen matches 1 if score #frozen_stabilized tmp matches 1 if score #ROLL_EXTREME roll_chance matches 0..59 run tellraw @a[nbt={Dimension:"minecraft:frozen"}] [{"text":"[얼어붙은 세계] 난세기 중 멸망!","color":"dark_aqua"}]
execute if score #GLOBAL state_frozen matches 1 if score #frozen_stabilized tmp matches 1 if score #ROLL_EXTREME roll_chance matches 0..59 run scoreboard players set #GLOBAL state_frozen 2

# 난세기 생존 발전과제
execute if score #GLOBAL state_frozen matches 1 unless score #frozen_stabilized tmp matches 1 if score #ROLL_EXTREME roll_chance matches 98..99 run advancement grant @a only 1_frozen/01_chaos_survivor
execute if score #GLOBAL state_frozen matches 1 if score #frozen_stabilized tmp matches 1 if score #ROLL_EXTREME roll_chance matches 60..99 run advancement grant @a only 1_frozen/01_chaos_survivor

# [난세기 발동]
# 안정화 전: 80% (0~79)
execute if score #GLOBAL state_frozen matches 0 unless score #frozen_stabilized tmp matches 1 if score #ROLL roll_chance matches 0..79 run tellraw @a[nbt={Dimension:"minecraft:frozen"}] [{"text":"[얼어붙은 세계] 난세기 시작!","color":"aqua"}]
execute unless score #GLOBAL state_frozen matches 2 unless score #frozen_stabilized tmp matches 1 if score #ROLL roll_chance matches 0..79 run scoreboard players set #GLOBAL state_frozen 1
# 안정화 후: 40% (0~39)
execute if score #GLOBAL state_frozen matches 0 if score #frozen_stabilized tmp matches 1 if score #ROLL roll_chance matches 0..39 run tellraw @a[nbt={Dimension:"minecraft:frozen"}] [{"text":"[얼어붙은 세계] 난세기 시작!","color":"aqua"}]
execute unless score #GLOBAL state_frozen matches 2 if score #frozen_stabilized tmp matches 1 if score #ROLL roll_chance matches 0..39 run scoreboard players set #GLOBAL state_frozen 1

# [난세기 지속 시간 랜덤]
# 안정화 전: 400 / 800 / 1200 / 1600틱 (각 25%)
execute unless score #GLOBAL state_frozen matches 2 unless score #frozen_stabilized tmp matches 1 if score #ROLL roll_chance matches 0..19 run scoreboard players set #GLOBAL timer_frozen 400
execute unless score #GLOBAL state_frozen matches 2 unless score #frozen_stabilized tmp matches 1 if score #ROLL roll_chance matches 0..19 run bossbar set bossbar_frozen max 400
execute unless score #GLOBAL state_frozen matches 2 unless score #frozen_stabilized tmp matches 1 if score #ROLL roll_chance matches 20..39 run scoreboard players set #GLOBAL timer_frozen 800
execute unless score #GLOBAL state_frozen matches 2 unless score #frozen_stabilized tmp matches 1 if score #ROLL roll_chance matches 20..39 run bossbar set bossbar_frozen max 800
execute unless score #GLOBAL state_frozen matches 2 unless score #frozen_stabilized tmp matches 1 if score #ROLL roll_chance matches 40..59 run scoreboard players set #GLOBAL timer_frozen 1200
execute unless score #GLOBAL state_frozen matches 2 unless score #frozen_stabilized tmp matches 1 if score #ROLL roll_chance matches 40..59 run bossbar set bossbar_frozen max 1200
execute unless score #GLOBAL state_frozen matches 2 unless score #frozen_stabilized tmp matches 1 if score #ROLL roll_chance matches 60..79 run scoreboard players set #GLOBAL timer_frozen 1600
execute unless score #GLOBAL state_frozen matches 2 unless score #frozen_stabilized tmp matches 1 if score #ROLL roll_chance matches 60..79 run bossbar set bossbar_frozen max 1600

# 안정화 후에도 난세기 지속 시간 분포는 동일하게 유지
execute unless score #GLOBAL state_frozen matches 2 if score #frozen_stabilized tmp matches 1 if score #ROLL roll_chance matches 0..9 run scoreboard players set #GLOBAL timer_frozen 400
execute unless score #GLOBAL state_frozen matches 2 if score #frozen_stabilized tmp matches 1 if score #ROLL roll_chance matches 0..9 run bossbar set bossbar_frozen max 400
execute unless score #GLOBAL state_frozen matches 2 if score #frozen_stabilized tmp matches 1 if score #ROLL roll_chance matches 10..19 run scoreboard players set #GLOBAL timer_frozen 800
execute unless score #GLOBAL state_frozen matches 2 if score #frozen_stabilized tmp matches 1 if score #ROLL roll_chance matches 10..19 run bossbar set bossbar_frozen max 800
execute unless score #GLOBAL state_frozen matches 2 if score #frozen_stabilized tmp matches 1 if score #ROLL roll_chance matches 20..29 run scoreboard players set #GLOBAL timer_frozen 1200
execute unless score #GLOBAL state_frozen matches 2 if score #frozen_stabilized tmp matches 1 if score #ROLL roll_chance matches 20..29 run bossbar set bossbar_frozen max 1200
execute unless score #GLOBAL state_frozen matches 2 if score #frozen_stabilized tmp matches 1 if score #ROLL roll_chance matches 30..39 run scoreboard players set #GLOBAL timer_frozen 1600
execute unless score #GLOBAL state_frozen matches 2 if score #frozen_stabilized tmp matches 1 if score #ROLL roll_chance matches 30..39 run bossbar set bossbar_frozen max 1600

# [항성기 복귀]
# 안정화 전: 20% (80~99), 400틱
execute if score #GLOBAL state_frozen matches 1 unless score #frozen_stabilized tmp matches 1 if score #ROLL roll_chance matches 80..99 run tellraw @a[nbt={Dimension:"minecraft:frozen"}] [{"text":"[얼어붙은 세계] 평화로운 항성기 도래","color":"green"}]
execute unless score #GLOBAL state_frozen matches 2 unless score #frozen_stabilized tmp matches 1 if score #ROLL roll_chance matches 80..99 run scoreboard players set #GLOBAL state_frozen 0
execute unless score #GLOBAL state_frozen matches 2 unless score #frozen_stabilized tmp matches 1 if score #ROLL roll_chance matches 80..99 run scoreboard players set #GLOBAL timer_frozen 400
execute unless score #GLOBAL state_frozen matches 2 unless score #frozen_stabilized tmp matches 1 if score #ROLL roll_chance matches 80..99 run bossbar set bossbar_frozen max 400

# 안정화 후: 60% (40~99), 2400틱
execute if score #GLOBAL state_frozen matches 1 if score #frozen_stabilized tmp matches 1 if score #ROLL roll_chance matches 40..99 run tellraw @a[nbt={Dimension:"minecraft:frozen"}] [{"text":"[얼어붙은 세계] 평화로운 항성기 도래","color":"green"}]
execute unless score #GLOBAL state_frozen matches 2 if score #frozen_stabilized tmp matches 1 if score #ROLL roll_chance matches 40..99 run scoreboard players set #GLOBAL state_frozen 0
execute unless score #GLOBAL state_frozen matches 2 if score #frozen_stabilized tmp matches 1 if score #ROLL roll_chance matches 40..99 run scoreboard players set #GLOBAL timer_frozen 2400
execute unless score #GLOBAL state_frozen matches 2 if score #frozen_stabilized tmp matches 1 if score #ROLL roll_chance matches 40..99 run bossbar set bossbar_frozen max 2400
