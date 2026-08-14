# Unlock heat
execute if score #heat unlock matches 1.. run return 0
# TODO: load unlock cost, check cost, and consume cost.
scoreboard players set #heat unlock 1
scoreboard players set #heat_regen_lvl upgrade 0
function three_body:resource/heat/regen/place
