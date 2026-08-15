# ==================================================
# Place 돌(stone) resource
# ==================================================

# 재생성 쿨타임이 끝난 자원 노드를 설치한다.
setblock -3 -59 35 minecraft:stone replace
scoreboard players reset #stone_remain generate

# TODO:
# stone 생성 효과음 / 파티클
# playsound ...
# particle ...
