# Unlock cold
execute if score #cold unlock matches 1.. run return 0
# TODO: load unlock cost, check cost, and consume cost.
scoreboard players set #cold unlock 1
scoreboard players set #cold_regen_lvl upgrade 0
function three_body:resource/cold/regen/place
