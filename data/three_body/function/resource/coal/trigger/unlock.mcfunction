# Unlock coal
execute if score #coal unlock matches 1.. run return 0
# TODO: load unlock cost, check cost, and consume cost.
scoreboard players set #coal unlock 1
function three_body:resource/coal/regen/place
