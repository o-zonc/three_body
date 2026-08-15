# ============================================================
#  인트로 마무리 - 플레이어 조작 복구
# ============================================================
# 20초간의 낙하가 끝난 후 플레이어의 조작 권한을 복구합니다.

# 플레이어의 게임 모드를 '모험'으로 되돌립니다.
gamemode adventure @a

# 인트로 종료 후 자원 사이드바 복구
function minecraft:resource/sidebar/show

# 차원 전환 시스템 가동
scoreboard players set #GLOBAL era_paused 0

# 낙하에 사용된 아머 스탠드를 제거하고 시작 발전과제를 부여합니다.
kill @e[type=armor_stand,tag=fall_anchor]
advancement grant @a only minecraft:0_overworld/00_root

function minecraft:story/tutorial/00_tutorial