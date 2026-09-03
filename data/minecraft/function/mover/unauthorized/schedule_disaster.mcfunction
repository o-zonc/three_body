# common/disaster/finish 안에서 도착 판정이 실행되므로, 기존 재난 종료 후 다음 틱에 한 번만 시작한다.
scoreboard players set #unauthorized_disaster_done var 1
schedule function mover/unauthorized/do_disaster 1t replace
