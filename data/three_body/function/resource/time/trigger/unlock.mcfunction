# Unlock time
execute if score #time unlock matches 1.. run return 0
# TODO: load unlock cost, check cost, and consume cost.
scoreboard players set #time unlock 1
scoreboard players set #time_regen_lvl upgrade 0
function three_body:resource/time/regen/place
