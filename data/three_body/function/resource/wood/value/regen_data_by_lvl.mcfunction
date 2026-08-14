# ==================================================
# Get wood regeneration data by level
# ==================================================

# 입력:
#   storage three_body:resource.temp
#   lvl

# TODO:
# 현재 lvl에 대응하는 wood regen 데이터를 가져온다.

# 예시 구조:
#
# data modify storage three_body:resource.temp.regen
#     set from storage three_body:resource.config.wood.regen[{lvl:$(lvl)}]