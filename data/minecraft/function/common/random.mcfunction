# 차원 이동 함수가 유지하는 #GLOBAL current_dim을 사용해 NBT Dimension 검색을 피한다.
# 0=overworld, 1=dried, 2=frozen

# --- 1. 얼음 차원 (frozen) ---
execute if score #GLOBAL current_dim matches 2 unless score #frozen_maze_active var matches 1 unless score #GLOBAL era_paused matches 1 if score #GLOBAL timer_frozen matches 1.. run scoreboard players remove #GLOBAL timer_frozen 1
execute if score #GLOBAL current_dim matches 2 unless score #frozen_maze_active var matches 1 unless score #GLOBAL era_paused matches 1 if score #GLOBAL timer_frozen matches ..0 run function common/roll/frozen
execute if score #GLOBAL current_dim matches 2 unless score #frozen_maze_active var matches 1 unless score #GLOBAL era_paused matches 1 as @a[tag=player] at @s run function common/chaos/frozen

# --- 2. 건조 차원 (dried) ---
execute if score #GLOBAL current_dim matches 1 unless score #GLOBAL era_paused matches 1 if score #GLOBAL timer_dried matches 1.. run scoreboard players remove #GLOBAL timer_dried 1
execute if score #GLOBAL current_dim matches 1 unless score #GLOBAL era_paused matches 1 if score #GLOBAL timer_dried matches ..0 run function common/roll/dried
execute if score #GLOBAL current_dim matches 1 unless score #GLOBAL era_paused matches 1 as @a[tag=player] at @s run function common/chaos/dried

# --- 3. 오버월드 (overworld) ---
# 모든 차원의 시대 타이머는 era_paused가 1일 때만 정지한다.
execute if score #GLOBAL current_dim matches 0 unless score #GLOBAL era_paused matches 1 if score #GLOBAL timer_overworld matches 1.. run scoreboard players remove #GLOBAL timer_overworld 1
execute if score #GLOBAL current_dim matches 0 unless score #GLOBAL era_paused matches 1 if score #GLOBAL timer_overworld matches ..0 run function common/roll/overworld
execute if score #GLOBAL current_dim matches 0 unless score #GLOBAL era_paused matches 1 as @a[tag=player] at @s run function common/chaos/overworld

# --- 4. 멸망 (disaster) ---
execute if score #GLOBAL current_dim matches 2 unless score #frozen_maze_active var matches 1 unless score #GLOBAL era_paused matches 1 if score #GLOBAL state_frozen matches 2 run scoreboard players set #GLOBAL user_disaster 0
execute if score #GLOBAL current_dim matches 2 unless score #frozen_maze_active var matches 1 unless score #GLOBAL era_paused matches 1 if score #GLOBAL state_frozen matches 2 as @a[tag=player,limit=1] at @s run function common/disaster/do

execute if score #GLOBAL current_dim matches 1 unless score #GLOBAL era_paused matches 1 if score #GLOBAL state_dried matches 2 run scoreboard players set #GLOBAL user_disaster 0
execute if score #GLOBAL current_dim matches 1 unless score #GLOBAL era_paused matches 1 if score #GLOBAL state_dried matches 2 as @a[tag=player,limit=1] at @s run function common/disaster/do

execute if score #GLOBAL current_dim matches 0 unless score #GLOBAL era_paused matches 1 if score #GLOBAL state_overworld matches 2 run scoreboard players set #GLOBAL user_disaster 0
execute if score #GLOBAL current_dim matches 0 unless score #GLOBAL era_paused matches 1 if score #GLOBAL state_overworld matches 2 as @a[tag=player,limit=1] at @s run function common/disaster/do
