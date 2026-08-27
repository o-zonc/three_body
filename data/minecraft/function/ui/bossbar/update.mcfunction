# ==========================================
# 보스바 갱신
# ==========================================
# 상태 변경은 각 시스템 tick에서 처리하고, 이 파일은 표시만 담당합니다.
# 차원 판정은 이동 시스템이 유지하는 #GLOBAL current_dim을 사용합니다.

# ==========================================
# 0. 양자 보호막
# ==========================================
execute store result bossbar shield_charge value run scoreboard players get #GLOBAL shield_charge
bossbar set shield_charge players @a
execute if score #GLOBAL shield_charge matches 1.. run bossbar set shield_charge visible true
execute unless score #GLOBAL shield_charge matches 1.. run bossbar set shield_charge visible false

# ==========================================
# 1. 얼음 차원 (frozen, current_dim=2)
# ==========================================
execute store result bossbar bossbar_frozen value run scoreboard players get #GLOBAL timer_frozen
bossbar set bossbar_frozen visible false
bossbar set bossbar_frozen players @a
execute if score #GLOBAL current_dim matches 2 unless score #frozen_maze_active var matches 1 if entity @a[advancements={0_overworld/20_observatory=true}] run bossbar set bossbar_frozen visible true
execute if score #GLOBAL current_dim matches 2 if score #GLOBAL state_frozen matches 0 run bossbar set bossbar_frozen name {"text":"[ 얼어붙은 세계 ] 다음 난세기까지","color":"aqua"}
execute if score #GLOBAL current_dim matches 2 if score #GLOBAL state_frozen matches 0 run bossbar set bossbar_frozen color blue
execute if score #GLOBAL current_dim matches 2 if score #GLOBAL state_frozen matches 1 run bossbar set bossbar_frozen name {"text":"[ 얼어붙은 세계 ] 난세기!","color":"dark_red"}
execute if score #GLOBAL current_dim matches 2 if score #GLOBAL state_frozen matches 1 run bossbar set bossbar_frozen color red
execute if score #GLOBAL current_dim matches 2 if score #GLOBAL state_frozen matches 2 if score #GLOBAL user_disaster matches 0 run bossbar set bossbar_frozen name {"text":"[ 얼어붙은 세계 ] 멸망!","color":"aqua"}
execute if score #GLOBAL current_dim matches 2 if score #GLOBAL state_frozen matches 2 if score #GLOBAL user_disaster matches 0 run bossbar set bossbar_frozen color blue
execute if score #GLOBAL current_dim matches 2 if score #GLOBAL user_disaster matches 1 run bossbar set bossbar_frozen name {"text":"[ 얼어붙은 세계 ] 지속 포기","color":"white"}
execute if score #GLOBAL current_dim matches 2 if score #GLOBAL user_disaster matches 1 run bossbar set bossbar_frozen color white

# 지하 미로 이벤트 중에는 시대 보스바 대신 중심까지의 격자 거리를 표시합니다.
bossbar set bossbar_frozen_maze players @a
bossbar set bossbar_frozen_maze visible false
execute if score #GLOBAL current_dim matches 2 if score #frozen_maze_active var matches 1 run bossbar set bossbar_frozen_maze visible true
execute if score #frozen_maze_active var matches 1 unless score #frozen_maze_cleared var matches 1 run bossbar set bossbar_frozen_maze name {"text":"[ 지하 미로 ] 중심까지 거리","color":"light_purple"}
execute if score #frozen_maze_active var matches 1 unless score #frozen_maze_cleared var matches 1 run bossbar set bossbar_frozen_maze color purple
execute if score #frozen_maze_active var matches 1 unless score #frozen_maze_cleared var matches 1 store result bossbar bossbar_frozen_maze value run scoreboard players get #frozen_maze_distance tmp
execute if score #frozen_maze_active var matches 1 if score #frozen_maze_cleared var matches 1 run bossbar set bossbar_frozen_maze name {"text":"[ 지하 미로 ] 미로 클리어!","color":"green"}
execute if score #frozen_maze_active var matches 1 if score #frozen_maze_cleared var matches 1 run bossbar set bossbar_frozen_maze color green
execute if score #frozen_maze_active var matches 1 if score #frozen_maze_cleared var matches 1 run bossbar set bossbar_frozen_maze value 68

# ==========================================
# 2. 건조 차원 (dried, current_dim=1)
# ==========================================
execute store result bossbar bossbar_dried value run scoreboard players get #GLOBAL timer_dried
bossbar set bossbar_dried visible false
bossbar set bossbar_dried players @a
execute if score #GLOBAL current_dim matches 1 if entity @a[advancements={0_overworld/20_observatory=true}] run bossbar set bossbar_dried visible true
execute if score #GLOBAL current_dim matches 1 if score #GLOBAL state_dried matches 0 run bossbar set bossbar_dried name {"text":"[ 메마른 세계 ] 다음 난세기까지","color":"gold"}
execute if score #GLOBAL current_dim matches 1 if score #GLOBAL state_dried matches 0 run bossbar set bossbar_dried color yellow
execute if score #GLOBAL current_dim matches 1 if score #GLOBAL state_dried matches 1 run bossbar set bossbar_dried name {"text":"[ 메마른 세계 ] 난세기!","color":"dark_red"}
execute if score #GLOBAL current_dim matches 1 if score #GLOBAL state_dried matches 1 run bossbar set bossbar_dried color red
execute if score #GLOBAL current_dim matches 1 if score #GLOBAL state_dried matches 2 if score #GLOBAL user_disaster matches 0 run bossbar set bossbar_dried name {"text":"[ 메마른 세계 ] 멸망!","color":"gold"}
execute if score #GLOBAL current_dim matches 1 if score #GLOBAL state_dried matches 2 if score #GLOBAL user_disaster matches 0 run bossbar set bossbar_dried color yellow
execute if score #GLOBAL current_dim matches 1 if score #GLOBAL user_disaster matches 1 run bossbar set bossbar_dried name {"text":"[ 메마른 세계 ] 지속 포기","color":"white"}
execute if score #GLOBAL current_dim matches 1 if score #GLOBAL user_disaster matches 1 run bossbar set bossbar_dried color white

# ==========================================
# 3. 오버월드 (current_dim=0)
# ==========================================
execute store result bossbar bossbar_overworld value run scoreboard players get #GLOBAL timer_overworld
bossbar set bossbar_overworld visible false
bossbar set bossbar_overworld players @a
execute if score #GLOBAL current_dim matches 0 if entity @a[advancements={0_overworld/20_observatory=true}] run bossbar set bossbar_overworld visible true
execute if score #GLOBAL current_dim matches 0 if score #GLOBAL state_overworld matches 0 run bossbar set bossbar_overworld name {"text":"[ 오버월드 ] 다음 난세기까지","color":"dark_green"}
execute if score #GLOBAL current_dim matches 0 if score #GLOBAL state_overworld matches 0 run bossbar set bossbar_overworld color green
execute if score #GLOBAL current_dim matches 0 if score #GLOBAL state_overworld matches 1 run bossbar set bossbar_overworld name {"text":"[ 오버월드 ] 난세기!","color":"dark_red"}
execute if score #GLOBAL current_dim matches 0 if score #GLOBAL state_overworld matches 1 run bossbar set bossbar_overworld color red
execute if score #GLOBAL current_dim matches 0 if score #GLOBAL state_overworld matches 2 if score #GLOBAL user_disaster matches 0 run bossbar set bossbar_overworld name {"text":"[ 오버월드 ] 멸망!","color":"dark_green"}
execute if score #GLOBAL current_dim matches 0 if score #GLOBAL state_overworld matches 2 if score #GLOBAL user_disaster matches 0 run bossbar set bossbar_overworld color green
execute if score #GLOBAL current_dim matches 0 if score #GLOBAL user_disaster matches 1 run bossbar set bossbar_overworld name {"text":"[ 오버월드 ] 지속 포기","color":"white"}
execute if score #GLOBAL current_dim matches 0 if score #GLOBAL user_disaster matches 1 run bossbar set bossbar_overworld color white
