# ==========================================
# 1. 얼음 차원 (frozen)
# ==========================================

# era_paused = 0이고 플레이어가 이 차원에 있을 때만 타이머 / 롤렛 / 난세기 로직을 진행합니다.
execute if entity @a[nbt={Dimension:"minecraft:frozen"}] if score #GLOBAL era_paused matches 0 if score #GLOBAL timer_frozen matches 1.. run scoreboard players remove #GLOBAL timer_frozen 1
execute if entity @a[nbt={Dimension:"minecraft:frozen"}] if score #GLOBAL era_paused matches 0 if score #GLOBAL timer_frozen matches ..0 run function common/roll/frozen

execute if score #GLOBAL era_paused matches 0 as @a[nbt={Dimension:"minecraft:frozen"}] at @s run function common/chaos/frozen

# ==========================================
# 2. 건조 차원 (dried)
# ==========================================

execute if entity @a[nbt={Dimension:"minecraft:dried"}] if score #GLOBAL era_paused matches 0 if score #GLOBAL timer_dried matches 1.. run scoreboard players remove #GLOBAL timer_dried 1
execute if entity @a[nbt={Dimension:"minecraft:dried"}] if score #GLOBAL era_paused matches 0 if score #GLOBAL timer_dried matches ..0 run function common/roll/dried

execute if score #GLOBAL era_paused matches 0 as @a[nbt={Dimension:"minecraft:dried"}] at @s run function common/chaos/dried

# ==========================================
# 3. 오버월드 (overworld)
# ==========================================

# 오버월드의 난세기 시스템은 석기 시대(civilization_age >= 2) 이후에만 시작합니다.
execute if score #overworld civilization_age matches 2.. if entity @a[nbt={Dimension:"minecraft:overworld"}] if score #GLOBAL era_paused matches 0 if score #GLOBAL timer_overworld matches 1.. run scoreboard players remove #GLOBAL timer_overworld 1
execute if score #overworld civilization_age matches 2.. if entity @a[nbt={Dimension:"minecraft:overworld"}] if score #GLOBAL era_paused matches 0 if score #GLOBAL timer_overworld matches ..0 run function common/roll/overworld

execute if score #overworld civilization_age matches 2.. if score #GLOBAL era_paused matches 0 as @a[nbt={Dimension:"minecraft:overworld"}] at @s run function common/chaos/overworld

# ==========================================
# 4. 멸망 (disaster)
# ==========================================

# 실행 주체를 실제 해당 차원의 플레이어로 설정해 disaster/do가 현재 차원을 올바르게 인식하도록 합니다.
execute if score #GLOBAL era_paused matches 0 if score #GLOBAL state_frozen matches 2 run scoreboard players set #GLOBAL user_disaster 0
execute if score #GLOBAL era_paused matches 0 if score #GLOBAL state_frozen matches 2 as @a[nbt={Dimension:"minecraft:frozen"},limit=1] at @s run function common/disaster/do

execute if score #GLOBAL era_paused matches 0 if score #GLOBAL state_dried matches 2 run scoreboard players set #GLOBAL user_disaster 0
execute if score #GLOBAL era_paused matches 0 if score #GLOBAL state_dried matches 2 as @a[nbt={Dimension:"minecraft:dried"},limit=1] at @s run function common/disaster/do

execute if score #overworld civilization_age matches 2.. if score #GLOBAL era_paused matches 0 if score #GLOBAL state_overworld matches 2 run scoreboard players set #GLOBAL user_disaster 0
execute if score #overworld civilization_age matches 2.. if score #GLOBAL era_paused matches 0 if score #GLOBAL state_overworld matches 2 as @a[nbt={Dimension:"minecraft:overworld"},limit=1] at @s run function common/disaster/do
