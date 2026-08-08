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

# [얼음 차원 - 항성기 (0)]
execute as @a at @s if entity @s[nbt={Dimension:"three_body:frozen"}] if score #GLOBAL state_frozen matches 0 run effect clear @s minecraft:slowness

# [얼음 차원 - 난세기 (1)] - 80%
execute as @a at @s if entity @s[nbt={Dimension:"three_body:frozen"}] if score #GLOBAL state_frozen matches 1 run effect give @s slowness 2 1 false


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

# [건조 차원 - 항성기 (0)]
execute as @a at @s if entity @s[nbt={Dimension:"three_body:dried"}] if score #GLOBAL state_dried matches 0 if block ~ ~ ~ minecraft:air run data modify entity @s Fire set value 0

# [건조 차원 - 난세기 (1)] - 5%
execute as @a at @s if entity @s[nbt={Dimension:"three_body:dried"}] if score #GLOBAL state_dried matches 1 if block ~ ~ ~ minecraft:air run data modify entity @s Fire set value 60


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

# [오버월드 - 항성기 (0)]
execute if score #GLOBAL state_overworld matches 0 run gamerule advance_time true

# [오버월드 - 난세기 (1)] - 3%
execute if score #GLOBAL state_overworld matches 1 run gamerule advance_time false
execute if score #GLOBAL state_overworld matches 1 run time add 20