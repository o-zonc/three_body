# ==========================================
# 1. 얼음 차원 (three_body:frozen)
# ==========================================
# (1) 보스바 현재값 업데이트
execute store result bossbar three_body:bossbar_frozen value run scoreboard players get #GLOBAL timer_frozen

# (2) 플레이어가 해당 차원에 있을 때만 보스바 켜기/끄기 관리
bossbar set three_body:bossbar_frozen visible false
bossbar set three_body:bossbar_frozen players @a[nbt={Dimension: "three_body:frozen"}]
execute if entity @a[nbt={Dimension: "three_body:frozen"}] run bossbar set three_body:bossbar_frozen visible true

# (3) 타이머 감소 및 난세기 롤렛 실행
scoreboard players remove #GLOBAL timer_frozen 1
execute if score #GLOBAL timer_frozen matches ..0 run function three_body:common/roll_frozen

execute as @a at @s if entity @s[nbt={Dimension:"three_body:frozen"}] run function three_body:common/chaos_frozen

# ==========================================
# 2. 건조 차원 (three_body:dried)
# ==========================================
# (1) 보스바 현재값 업데이트
execute store result bossbar three_body:bossbar_dried value run scoreboard players get #GLOBAL timer_dried

# (2) 플레이어가 해당 차원에 있을 때만 보스바 켜기/끄기 관리
bossbar set three_body:bossbar_dried visible false
bossbar set three_body:bossbar_dried players @a[nbt={Dimension: "three_body:dried"}]
execute if entity @a[nbt={Dimension: "three_body:dried"}] run bossbar set three_body:bossbar_dried visible true

# (3) 타이머 감소 및 난세기 롤렛 실행
scoreboard players remove #GLOBAL timer_dried 1
execute if score #GLOBAL timer_dried matches ..0 run function three_body:common/roll_dried

execute as @a at @s if entity @s[nbt={Dimension:"three_body:dried"}] run function three_body:common/chaos_dried

# ==========================================
# 3. 오버월드 (minecraft:overworld)
# ==========================================
# (1) 보스바 현재값 업데이트
execute store result bossbar three_body:bossbar_overworld value run scoreboard players get #GLOBAL timer_overworld

# (2) 플레이어가 해당 차원에 있을 때만 보스바 켜기/끄기 관리
bossbar set three_body:bossbar_overworld visible false
bossbar set three_body:bossbar_overworld players @a[nbt={Dimension: "minecraft:overworld"}]
execute if entity @a[nbt={Dimension: "minecraft:overworld"}] run bossbar set three_body:bossbar_overworld visible true

# (3) 타이머 감소 및 난세기 롤렛 실행
scoreboard players remove #GLOBAL timer_overworld 1
execute if score #GLOBAL timer_overworld matches ..0 run function three_body:common/roll_overworld

execute as @a at @s if entity @s[nbt={Dimension:"minecraft:overworld"}] run function three_body:common/chaos_overworld

# ==========================================
# 4. 멸망 (disaster)
# ==========================================

execute if score #GLOBAL state_frozen matches 2 run function three_body:common/disaster_frozen
execute if score #GLOBAL state_dried matches 2 run function three_body:common/disaster_dried
execute if score #GLOBAL state_overworld matches 2 run function three_body:common/disaster_overworld