# Unlock information
execute if score #information unlock matches 1.. run return 0
# TODO: load unlock cost, check cost, and consume cost.
scoreboard players set #information unlock 1
function three_body:resource/information/regen/place
