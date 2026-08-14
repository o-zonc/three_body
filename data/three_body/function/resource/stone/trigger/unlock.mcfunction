# Unlock stone
execute if score #stone unlock matches 1.. run return 0
# TODO: load unlock cost, check cost, and consume cost.
scoreboard players set #stone unlock 1
function three_body:resource/stone/regen/place
