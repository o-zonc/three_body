# ==================================================
# Place wood resource
# ==================================================

# 재생성 쿨타임이 끝난 자원 노드를 설치한다.
setblock 0 -59 35 minecraft:oak_log replace

# -1 = 자원이 존재하며 다음 파괴를 기다리는 상태.
scoreboard players reset #wood_remain generate

# TODO:
# wood 생성 효과음
# playsound ...

# TODO:
# 파티클
# particle ...
