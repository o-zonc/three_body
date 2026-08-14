# ==================================================
# Place wood resource
# ==================================================

# TODO:
# 실제 wood 생성 위치에 나무 자원을 설치한다.
setblock 0 -59 35 minecraft:oak_log replace

function three_body:resource/wood/value/now_regen_data
execute store result score #wood_remain generate run function three_body:resource/wood/value/regen_value

# TODO:
# wood 생성 효과음
# playsound ...

# TODO:
# 파티클
# particle ...