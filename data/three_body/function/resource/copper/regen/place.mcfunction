# ==================================================
# Place 구리(copper) resource
# ==================================================

# 재생성 쿨타임이 끝난 자원 노드를 설치한다.
setblock -1 -62 -35 minecraft:copper_ore replace
scoreboard players reset #copper_remain generate

# TODO:
# copper 생성 효과음 / 파티클
# playsound ...
# particle ...
