# ============================================================
#  인트로 4단계 - 마무리
# ============================================================

title @a clear
title @a times 10 20 40

# 인트로용 엔티티(카메라, 배경판, 텍스트) 전부 정리
kill @e[tag=story_intro]

# 플레이어 조작 복구

# 플레이어를 관전자 모드로 변경하고, 천천히 떨어지는 보이지 않는 아머 스탠드를 보도록 하여
# 20초간 모든 조작(키보드, 마우스)을 완벽하게 막습니다.
execute as @a at @s run gamemode spectator @s
execute as @a at @s run summon armor_stand ~ ~ ~ {Tags:["fall_anchor"], Invisible:1b, CustomName:"세계의 진실", CustomNameVisible:1b}
effect give @e[type=armor_stand,tag=fall_anchor] slow_falling 19 2 true
execute as @a at @s run spectate @e[type=armor_stand,tag=fall_anchor,sort=nearest,limit=1] @s

# 8초 후에 플레이어에게 세계의 진실이 무엇인지 볼 수 있는 방법을 알려줍니다.
schedule function story/intro/97_world_truth 8s

# 12초 후에 플레이어에게 하강 중 주의사항을 알려줍니다.
schedule function story/intro/98_warning 12s

# 19초 후에 플레이어 조작을 복구하는 함수를 예약합니다.
schedule function story/intro/99_release_player 19s

time resume

# 여기까지 도달한 플레이어는 인트로를 완료했거나 스킵한 것으로 기록합니다.
tag @a add intro_seen
scoreboard players set #GLOBAL visited_overworld 1
scoreboard players set #GLOBAL n_civil 1

# 게임 시작 시, 현재 차원을 '오버월드'로 명확히 설정합니다. (0: 오버월드)
scoreboard players set #GLOBAL current_dim 0