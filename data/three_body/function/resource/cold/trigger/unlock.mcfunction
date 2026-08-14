# Unlock cold
execute if score #cold unlock matches 1.. run return 0
# TODO: load unlock cost, check cost, and consume cost.
scoreboard players set #cold unlock 1
function three_body:resource/cold/regen/place
