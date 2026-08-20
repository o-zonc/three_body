# ============================================================
#  인트로 조기 종료
# ============================================================

scoreboard players set #block intro 1

# 진행 중인 인트로 스크롤(tick) 스케줄을 취소합니다.
schedule clear story/intro/03_scroll_tick
schedule clear story/intro/02_scroll_start

# 인트로 마무리 함수를 직접 실행하여 게임을 즉시 시작합니다.
function story/intro/96_end

tellraw @a {"text":"[알림] 인트로를 건너뛰고 게임을 시작합니다.","color":"gray"}