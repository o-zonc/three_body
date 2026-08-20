execute store result storage data tmp.local_move.x double 0.01 run scoreboard players get @s local_move_x
execute store result storage data tmp.local_move.y double 0.01 run scoreboard players get @s local_move_y
execute store result storage data tmp.local_move.z double 0.01 run scoreboard players get @s local_move_z
execute store result storage data tmp.local_move.yaw float 0.01 run scoreboard players get @s local_move_yaw
execute store result storage data tmp.local_move.pitch float 0.01 run scoreboard players get @s local_move_pitch
function mover/local/return_apply with storage data tmp.local_move
scoreboard players set @s local_move_return 0
function mover/local/arrival
