# ==================================================
# Wood information UI
# ==================================================

# Material API를 통해 현재 wood 수량 조회
data modify storage three_body:resource input.type set value "wood"
function three_body:resource/get

# 결과:
# three_body:resource output {amount:<current amount>}

# 현재 regen level
scoreboard players get #wood_regen_lvl upgrade

# 현재 regen 데이터
function three_body:resource/wood/value/now_regen_data

# TODO:
# 현재 wood 보유량 표시
# 현재 재생성 시간 표시
# 현재 regen level 표시
# 다음 업그레이드 비용 표시
# 업그레이드 버튼