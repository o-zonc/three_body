# 에메랄드/청금석 자원 상점 초반 비용 완화
# Lv.0~2의 cost는 각각 ×2, ×4, ×8 단계로 올라가기 위한 비용입니다.
# ×8까지는 빠르게 진입시키고, Lv.3(×16 진입)부터는 const_def의 기존 장기 성장 비용을 유지합니다.

# 에메랄드
# 80 -> 20
# 400 + 돌 500 -> 80 + 돌 100
# 3200 + 냉기 50 -> 400 + 냉기 10
data modify storage data const.resource_shop[{id:"emerald"}].levels[0].cost set value [{type:"emerald",amount:20}]
data modify storage data const.resource_shop[{id:"emerald"}].levels[1].cost set value [{type:"emerald",amount:80},{type:"stone",amount:100}]
data modify storage data const.resource_shop[{id:"emerald"}].levels[2].cost set value [{type:"emerald",amount:400},{type:"cold",amount:10}]

# 청금석
# 120 -> 30
# 600 + 돌 500 -> 120 + 돌 100
# 4800 + 냉기 50 -> 600 + 냉기 10
data modify storage data const.resource_shop[{id:"lapis"}].levels[0].cost set value [{type:"lapis",amount:30}]
data modify storage data const.resource_shop[{id:"lapis"}].levels[1].cost set value [{type:"lapis",amount:120},{type:"stone",amount:100}]
data modify storage data const.resource_shop[{id:"lapis"}].levels[2].cost set value [{type:"lapis",amount:600},{type:"cold",amount:10}]
