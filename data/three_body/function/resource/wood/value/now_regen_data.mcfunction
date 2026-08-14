# ==================================================
# Get current wood regeneration data
# ==================================================

# 현재 wood regen level
scoreboard players get #wood_regen_lvl upgrade

# TODO:
# 현재 레벨에 해당하는 데이터를
# three_body:resource.temp.regen.now
# 에 저장한다.

function three_body:resource/wood/value/regen_data_by_lvl