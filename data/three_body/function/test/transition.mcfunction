# ==========================================
# TEST: 차원 전환 정리
# ==========================================

# 실제 멸망 연출을 기다리지 않고 finish 단계부터 테스트합니다.
# finish가 이전 화면 효과와 예약 작업을 정리하고 next를 호출하는지 확인합니다.

function three_body:common/disaster/finish

tellraw @a {"text":"[TEST] disaster/finish 실행 완료","color":"gold"}
tellraw @a {"text":"[TEST] 차원 이동 및 새 차원 초기화를 확인하세요.","color":"yellow"}
