# ==================================================
# Break / collect wood resource
# ==================================================

# 현재 wood 보유량
scoreboard players operation #wood_before tmp = #wood material

# 이번에 얻을 wood 양 계산
execute store result score #wood_gain tmp \
    run function three_body:resource/wood/value/regen_value

# 자원 지급량 설정
scoreboard players operation #material_add_value tmp = #wood_gain tmp

# Material API를 통한 지급
function three_body:resource/add_material/wood

# 생성 지점 제거
# TODO:
# setblock <X> <Y> <Z> air

# 다음 재생성까지의 값 계산
execute store result score #wood_remain generate \
    run function three_body:resource/wood/value/regen_value