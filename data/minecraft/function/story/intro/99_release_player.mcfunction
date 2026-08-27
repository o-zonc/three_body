# ============================================================
#  인트로 마무리 - 플레이어 조작 복구
# ============================================================
# 20초간의 낙하가 끝난 후 플레이어의 조작 권한을 복구합니다.

# 플레이어의 게임 모드를 '모험'으로 되돌립니다.
gamemode adventure @a

# 실제 월드 시간/날씨와 차원 전환 시스템을 함께 재개합니다.
# dev 인트로 스킵은 96_end를 거치지 않으므로 여기서도 반드시 해제해야 합니다.
time resume
gamerule advance_time true
gamerule advance_weather false
scoreboard players set #GLOBAL era_paused 0

# 낙하에 사용된 아머 스탠드를 제거하고 시작 발전과제를 부여합니다.
kill @e[type=armor_stand,tag=fall_anchor]
advancement grant @a only 0_overworld/00_root
execute as @a[limit=1] run function resource/unlock/wood

scoreboard objectives setdisplay sidebar material_display
tag @a add player

schedule clear story/intro/03_scroll_tick
scoreboard players set #block intro 1

function story/tutorial/00_tutorial

# 예약 함수에는 플레이어 실행 주체가 없으므로, 각 플레이어 문맥에서 도구를 지급합니다.
function tool/refresh_all
