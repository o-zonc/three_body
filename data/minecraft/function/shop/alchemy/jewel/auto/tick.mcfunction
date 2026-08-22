# 자동 세공 tick
execute unless score #jewel_auto_enabled var = #jewel_auto_enabled var run scoreboard players set #jewel_auto_enabled var 0
execute unless score #jewel_auto_timer var = #jewel_auto_timer var run scoreboard players set #jewel_auto_timer var 0
execute unless score #jewel_auto_particle_timer var = #jewel_auto_particle_timer var run scoreboard players set #jewel_auto_particle_timer var 0

# Lv.2가 아니게 되면 자동 세공을 강제로 종료합니다.
execute unless score #level alchemy_workshop matches 2.. run scoreboard players set #jewel_auto_enabled var 0
execute unless score #level alchemy_workshop matches 2.. run scoreboard players set #jewel_auto_timer var 0
execute unless score #level alchemy_workshop matches 2.. run scoreboard players set #jewel_auto_particle_timer var 0

# OFF 상태에서는 파티클 타이머도 초기화합니다.
execute unless score #jewel_auto_enabled var matches 1 run scoreboard players set #jewel_auto_particle_timer var 0
execute unless score #jewel_auto_enabled var matches 1 run return 0

# ON 상태는 작업대 위의 은은한 빛 + 전기 스파크로 표시합니다.
# 4틱마다 짧게 터뜨려 가동 중임은 잘 보이되 화면을 과하게 가리지 않도록 합니다.
execute if score #jewel_auto_particle_timer var matches 1.. run scoreboard players remove #jewel_auto_particle_timer var 1
execute if score #jewel_auto_particle_timer var matches ..0 in overworld run particle minecraft:end_rod -23.5 -61.82 -35.5 0.28 0.16 0.28 0.015 3 normal
execute if score #jewel_auto_particle_timer var matches ..0 in overworld run particle minecraft:electric_spark -23.5 -61.78 -35.5 0.34 0.12 0.34 0.08 2 normal
execute if score #jewel_auto_particle_timer var matches ..0 run scoreboard players set #jewel_auto_particle_timer var 4

execute if score #jewel_auto_timer var matches 1.. run scoreboard players remove #jewel_auto_timer var 1
execute if score #jewel_auto_timer var matches 1.. run return 0

# 20틱마다 한 사이클 실행합니다.
scoreboard players set #jewel_auto_timer var 20
function shop/alchemy/jewel/auto/cycle
