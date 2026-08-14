# Unlock heat
execute if score #heat unlock matches 1.. run return 0
# TODO: load unlock cost, check cost, and consume cost.
scoreboard players set #heat unlock 1
function three_body:resource/heat/regen/place
