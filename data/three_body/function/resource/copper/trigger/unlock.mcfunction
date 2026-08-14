# Unlock copper
execute if score #copper unlock matches 1.. run return 0
# TODO: load unlock cost, check cost, and consume cost.
scoreboard players set #copper unlock 1
function three_body:resource/copper/regen/place
