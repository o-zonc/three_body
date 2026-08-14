# Unlock diamond
execute if score #diamond unlock matches 1.. run return 0
# TODO: load unlock cost, check cost, and consume cost.
scoreboard players set #diamond unlock 1
scoreboard players set #diamond_regen_lvl upgrade 0
function three_body:resource/diamond/regen/place
