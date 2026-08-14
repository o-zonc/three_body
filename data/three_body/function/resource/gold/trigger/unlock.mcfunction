# Unlock gold
execute if score #gold unlock matches 1.. run return 0
# TODO: load unlock cost, check cost, and consume cost.
scoreboard players set #gold unlock 1
scoreboard players set #gold_regen_lvl upgrade 0
function three_body:resource/gold/regen/place
