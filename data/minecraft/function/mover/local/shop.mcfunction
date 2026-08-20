execute unless dimension minecraft:overworld run return run function mover/local/restricted
execute if score @s local_move_return matches 1 run return run function mover/local/return
function mover/local/save
tp @s 24.5 -62 -24.5 180 0
function mover/local/arrival
