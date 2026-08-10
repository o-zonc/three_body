# ==========================================
# 1. 얼음 차원 (three_body:frozen)
# ==========================================

# (1) 보스바 현재값 업데이트
execute store result bossbar three_body:bossbar_frozen value run scoreboard players get #GLOBAL timer_frozen

# (2) 플레이어가 해당 차원에 있을 때만 보스바 켜기/끄기 관리
bossbar set three_body:bossbar_frozen visible false
bossbar set three_body:bossbar_frozen players @a[nbt={Dimension: "three_body:frozen"}]

execute if entity @a[nbt={Dimension: "three_body:frozen"}] if entity @a[advancements={three_body:0_overworld/01_chaos=true}] run bossbar set three_body:bossbar_frozen visible true

execute if entity @a[nbt={Dimension: "three_body:frozen"}] if score #GLOBAL state_frozen matches 0 run bossbar set three_body:bossbar_frozen name {"text":"[ 얼어붙은 세계 ] 다음 난세기까지","color":"aqua"}
execute if entity @a[nbt={Dimension: "three_body:frozen"}] if score #GLOBAL state_frozen matches 0 run bossbar set three_body:bossbar_frozen color blue

execute if entity @a[nbt={Dimension: "three_body:frozen"}] if score #GLOBAL state_frozen matches 1 run bossbar set three_body:bossbar_frozen name {"text":"[ 얼어붙은 세계 ] 난세기!","color":"dark_red"}
execute if entity @a[nbt={Dimension: "three_body:frozen"}] if score #GLOBAL state_frozen matches 1 run bossbar set three_body:bossbar_frozen color red

execute if entity @a[nbt={Dimension: "three_body:frozen"}] if score #GLOBAL state_frozen matches 2 run bossbar set three_body:bossbar_frozen name {"text":"[ 얼어붙은 세계 ] 멸망","color":"dark_aqua"}
execute if entity @a[nbt={Dimension: "three_body:frozen"}] if score #GLOBAL state_frozen matches 2 run bossbar set three_body:bossbar_frozen color blue

# (3) 시대 진행
# era_paused = 0이고 플레이어가 이 차원에 있을 때만 타이머 / 롤렛 / 난세기 로직을 진행합니다.
# 다른 차원에 플레이어가 있지 않다면 이 차원의 시대는 멈춰 있습니다.
execute if entity @a[nbt={Dimension: "three_body:frozen"}] if score #GLOBAL era_paused matches 0 if score #GLOBAL timer_frozen matches 1.. run scoreboard players remove #GLOBAL timer_frozen 1
execute if entity @a[nbt={Dimension: "three_body:frozen"}] if score #GLOBAL era_paused matches 0 if score #GLOBAL timer_frozen matches ..0 run function three_body:common/roll/frozen

execute if score #GLOBAL era_paused matches 0 as @a[nbt={Dimension:"three_body:frozen"}] at @s run function three_body:common/chaos/frozen


# ==========================================
# 2. 건조 차원 (three_body:dried)
# ==========================================

# (1) 보스바 현재값 업데이트
execute store result bossbar three_body:bossbar_dried value run scoreboard players get #GLOBAL timer_dried

# (2) 플레이어가 해당 차원에 있을 때만 보스바 켜기/끄기 관리
bossbar set three_body:bossbar_dried visible false
bossbar set three_body:bossbar_dried players @a[nbt={Dimension: "three_body:dried"}]

execute if entity @a[nbt={Dimension: "three_body:dried"}] if entity @a[advancements={three_body:0_overworld/01_chaos=true}] run bossbar set three_body:bossbar_dried visible true

execute if entity @a[nbt={Dimension: "three_body:dried"}] if score #GLOBAL state_dried matches 0 run bossbar set three_body:bossbar_dried name {"text":"[ 메마른 세계 ] 다음 난세기까지","color":"gold"}
execute if entity @a[nbt={Dimension: "three_body:dried"}] if score #GLOBAL state_dried matches 0 run bossbar set three_body:bossbar_dried color yellow

execute if entity @a[nbt={Dimension: "three_body:dried"}] if score #GLOBAL state_dried matches 1 run bossbar set three_body:bossbar_dried name {"text":"[ 메마른 세계 ] 난세기!","color":"dark_red"}
execute if entity @a[nbt={Dimension: "three_body:dried"}] if score #GLOBAL state_dried matches 1 run bossbar set three_body:bossbar_dried color red

execute if entity @a[nbt={Dimension: "three_body:dried"}] if score #GLOBAL state_dried matches 2 run bossbar set three_body:bossbar_dried name {"text":"[ 메마른 세계 ] 멸망","color":"#D48E00"}
execute if entity @a[nbt={Dimension: "three_body:dried"}] if score #GLOBAL state_dried matches 2 run bossbar set three_body:bossbar_dried color yellow

# (3) 시대 진행
# era_paused = 0이고 플레이어가 이 차원에 있을 때만 타이머 / 롤렛 / 난세기 로직을 진행합니다.
execute if entity @a[nbt={Dimension: "three_body:dried"}] if score #GLOBAL era_paused matches 0 if score #GLOBAL timer_dried matches 1.. run scoreboard players remove #GLOBAL timer_dried 1
execute if entity @a[nbt={Dimension: "three_body:dried"}] if score #GLOBAL era_paused matches 0 if score #GLOBAL timer_dried matches ..0 run function three_body:common/roll/dried

execute if score #GLOBAL era_paused matches 0 as @a[nbt={Dimension:"three_body:dried"}] at @s run function three_body:common/chaos/dried


# ==========================================
# 3. 오버월드 (minecraft:overworld)
# ==========================================

# (1) 보스바 현재값 업데이트
execute store result bossbar three_body:bossbar_overworld value run scoreboard players get #GLOBAL timer_overworld

# (2) 플레이어가 해당 차원에 있을 때만 보스바 켜기/끄기 관리
bossbar set three_body:bossbar_overworld visible false
bossbar set three_body:bossbar_overworld players @a[nbt={Dimension: "minecraft:overworld"}]

execute if entity @a[nbt={Dimension: "minecraft:overworld"}] if entity @a[advancements={three_body:0_overworld/01_chaos=true}] run bossbar set three_body:bossbar_overworld visible true

execute if entity @a[nbt={Dimension: "minecraft:overworld"}] if score #GLOBAL state_overworld matches 0 run bossbar set three_body:bossbar_overworld name {"text":"[ 오버월드 ] 다음 난세기까지","color":"dark_green"}
execute if entity @a[nbt={Dimension: "minecraft:overworld"}] if score #GLOBAL state_overworld matches 0 run bossbar set three_body:bossbar_overworld color green

execute if entity @a[nbt={Dimension: "minecraft:overworld"}] if score #GLOBAL state_overworld matches 1 run bossbar set three_body:bossbar_overworld name {"text":"[ 오버월드 ] 난세기!","color":"dark_red"}
execute if entity @a[nbt={Dimension: "minecraft:overworld"}] if score #GLOBAL state_overworld matches 1 run bossbar set three_body:bossbar_overworld color red

execute if entity @a[nbt={Dimension: "minecraft:overworld"}] if score #GLOBAL state_overworld matches 2 run bossbar set three_body:bossbar_overworld name {"text":"[ 오버월드 ] 멸망","color":"#006300"}
execute if entity @a[nbt={Dimension: "minecraft:overworld"}] if score #GLOBAL state_overworld matches 2 run bossbar set three_body:bossbar_overworld color green

# (3) 시대 진행
# era_paused = 0이고 플레이어가 이 차원에 있을 때만 타이머 / 롤렛 / 난세기 로직을 진행합니다.
execute if entity @a[nbt={Dimension: "minecraft:overworld"}] if score #GLOBAL era_paused matches 0 if score #GLOBAL timer_overworld matches 1.. run scoreboard players remove #GLOBAL timer_overworld 1
execute if entity @a[nbt={Dimension: "minecraft:overworld"}] if score #GLOBAL era_paused matches 0 if score #GLOBAL timer_overworld matches ..0 run function three_body:common/roll/overworld

execute if score #GLOBAL era_paused matches 0 as @a[nbt={Dimension:"minecraft:overworld"}] at @s run function three_body:common/chaos/overworld


# ==========================================
# 4. 멸망 (disaster)
# ==========================================

# 멸망 연출 역시 플레이어가 해당 차원에 있고 시대가 일시정지되지 않았을 때만 시작합니다.
execute if score #GLOBAL era_paused matches 0 if score #GLOBAL state_frozen matches 2 if entity @a[nbt={Dimension:"three_body:frozen"}] run function three_body:common/disaster/do

execute if score #GLOBAL era_paused matches 0 if score #GLOBAL state_dried matches 2 if entity @a[nbt={Dimension:"three_body:dried"}] run function three_body:common/disaster/do

execute if score #GLOBAL era_paused matches 0 if score #GLOBAL state_overworld matches 2 if entity @a[nbt={Dimension:"minecraft:overworld"}] run function three_body:common/disaster/do