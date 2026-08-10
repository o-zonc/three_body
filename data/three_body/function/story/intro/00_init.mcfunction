# ============================================================
#  인트로 0단계 - 초기화
#  이 함수는 map load 시 tick.mcfunction에 의해 딱 한 번만 호출됩니다.
# ============================================================

scoreboard players set #done intro 1
scoreboard players set #t intro 0

time set noon
time pause
weather clear
gamerule advance_weather false

# 모든 플레이어를 스펙테이터로 전환 → 조작 완전 차단
gamemode spectator @a
title @a times 0 1 0

# ------------------------------------------------------------
# ★ 카메라 좌표 설정 ★
# 아래 좌표/각도를 원하는 "인트로 감상 위치"로 반드시 바꿔주세요.
# 게임 내에서 원하는 자리에 서서 F3을 눌러 좌표/시야각(Facing)을 확인한 뒤
# x y z 값과 Rotation(yaw pitch)을 그대로 옮겨 적으면 됩니다.
# yaw 0 = 남쪽을 보는 상태로 맞춰두면 아래 텍스트 회전값과 잘 맞습니다.
# ------------------------------------------------------------
kill @e[tag=story_intro]
execute in minecraft:overworld run summon item_display 0 100 0 {Tags:["story_camera","story_intro"],teleport_duration:1,Rotation:[0.0f,0.0f],item:{id:"minecraft:barrier",count:1}}

# 카메라를 플레이어 시점에 고정 (매틱마다 tick.mcfunction 쪽에서 계속 재적용됨)
execute as @a run spectate @e[tag=story_camera,limit=1]

# 뒤쪽을 채우는 검은 배경판
# transformation 행렬은 [가로scale,0,0,가로이동, 0,세로scale,0,세로이동, 0,0,두께scale,두께이동, 0,0,0,1] 순서입니다.
execute as @e[type=item_display,tag=story_camera,limit=1] at @s run summon item_display ~ ~ ~10 {Tags:["story_bg","story_intro"],item:{id:"black_concrete",count:1},transformation:[48f,0f,0f,0f, 0f,24f,0f,0f, 0f,0f,0.1f,0f, 0f,0f,0f,1f],billboard:"fixed",Glowing:0b}

# 타이틀 로고
title @a title {"text":"삼체 (三體)","color":"#F971BE"}
title @a subtitle {"text":"The Three Body","color":"gray","italic":true}
title @a times 20 60 20

schedule function three_body:story/intro/01_quote1 100t
