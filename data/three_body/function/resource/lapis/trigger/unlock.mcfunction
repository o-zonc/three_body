# Unlock lapis
execute if score #lapis unlock matches 1.. run return 0
# TODO: load unlock cost, check cost, and consume cost.
scoreboard players set #lapis unlock 1
function three_body:resource/lapis/regen/place
