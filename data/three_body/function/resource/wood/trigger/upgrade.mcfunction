# ==================================================
# Upgrade wood regeneration
# ==================================================

# 현재 레벨
scoreboard players get #wood_regen_lvl upgrade

# 업그레이드 비용 계산
function three_body:resource/wood/value/regen_upgrade_cost

# TODO:
# 비용 검사

function three_body:resource/check_cost

# 비용 부족
execute unless score #cost_check tmp matches 1 run return 0

# 비용 차감
function three_body:resource/take_cost

# 레벨 증가
scoreboard players add #wood_regen_lvl upgrade 1

# TODO:
# 업그레이드 효과음
# TODO:
# 파티클