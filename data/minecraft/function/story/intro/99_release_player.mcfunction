# ============================================================
#  인트로 마무리 - 플레이어 조작 복구
# ============================================================
# 20초간의 낙하가 끝난 후 플레이어의 조작 권한을 복구합니다.

# 플레이어의 게임 모드를 '모험'으로 되돌립니다.
gamemode adventure @a

# 차원 전환 시스템 가동
scoreboard players set #GLOBAL era_paused 0

# 낙하에 사용된 아머 스탠드를 제거하고 시작 발전과제를 부여합니다.
kill @e[type=armor_stand,tag=fall_anchor]
advancement grant @a only 0_overworld/00_root

scoreboard objectives setdisplay sidebar material_display

function story/tutorial/00_tutorial