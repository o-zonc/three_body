# Unlock iron
execute if score #iron unlock matches 1.. run return 0
# TODO: load unlock cost, check cost, and consume cost.
scoreboard players set #iron unlock 1
function three_body:resource/iron/regen/place
