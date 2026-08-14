# Unlock emerald
execute if score #emerald unlock matches 1.. run return 0
# TODO: load unlock cost, check cost, and consume cost.
scoreboard players set #emerald unlock 1
scoreboard players set #emerald_regen_lvl upgrade 0
function three_body:resource/emerald/regen/place
