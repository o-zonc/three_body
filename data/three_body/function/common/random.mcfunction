# ==========================================
# 1. 얼음 차원 (three_body:frozen)
# ==========================================
# (1) 보스바 현재값 업데이트
execute store result bossbar three_body:bossbar_frozen value run scoreboard players get #GLOBAL timer_frozen

# (2) 플레이어가 해당 차원에 있을 때만 보스바 켜기/끄기 관리
bossbar set three_body:bossbar_frozen visible false
bossbar set three_body:bossbar_frozen players @a[nbt={Dimension: "three_body:frozen"}]
execute if entity @a[nbt={Dimension: "three_body:frozen"}] run bossbar set three_body:bossbar_frozen visible true
execute if entity @a[nbt={Dimension: "three_body:frozen"}] if score #GLOBAL state_frozen matches 0 run bossbar set three_body:bossbar_frozen name {"text":"[ 얼어붙은 세계 ] 다음 난세기까지","color":"aqua"}
execute if entity @a[nbt={Dimension: "three_body:frozen"}] if score #GLOBAL state_frozen matches 0 run bossbar set three_body:bossbar_frozen color blue
execute if entity @a[nbt={Dimension: "three_body:frozen"}] if score #GLOBAL state_frozen matches 1 run bossbar set three_body:bossbar_frozen name {"text":"[ 얼어붙은 세계 ] 난세기!","color": "dark_red"}
execute if entity @a[nbt={Dimension: "three_body:frozen"}] if score #GLOBAL state_frozen matches 1 run bossbar set three_body:bossbar_frozen color red

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
execute if entity @a[nbt={Dimension: "three_body:dried"}] if score #GLOBAL state_dried matches 0 run bossbar set three_body:bossbar_dried name {"text":"[ 메마른 세계 ] 다음 난세기까지","color":"gold"}
execute if entity @a[nbt={Dimension: "three_body:dried"}] if score #GLOBAL state_dried matches 0 run bossbar set three_body:bossbar_dried color yellow
execute if entity @a[nbt={Dimension: "three_body:dried"}] if score #GLOBAL state_dried matches 1 run bossbar set three_body:bossbar_dried name {"text":"[ 메마른 세계 ] 난세기!","color": "dark_red"}
execute if entity @a[nbt={Dimension: "three_body:dried"}] if score #GLOBAL state_dried matches 1 run bossbar set three_body:bossbar_dried color red

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
execute if entity @a[nbt={Dimension: "minecraft:overworld"}] if score #GLOBAL state_overworld matches 0 run bossbar set three_body:bossbar_overworld name {"text":"[ 오버월드 ] 다음 난세기까지","color":"dark_green"}
execute if entity @a[nbt={Dimension: "minecraft:overworld"}] if score #GLOBAL state_overworld matches 0 run bossbar set three_body:bossbar_overworld color green
execute if entity @a[nbt={Dimension: "minecraft:overworld"}] if score #GLOBAL state_overworld matches 1 run bossbar set three_body:bossbar_overworld name {"text":"[ 오버월드 ] 난세기!","color": "dark_red"}
execute if entity @a[nbt={Dimension: "minecraft:overworld"}] if score #GLOBAL state_overworld matches 1 run bossbar set three_body:bossbar_overworld color red

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