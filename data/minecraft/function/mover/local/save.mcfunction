execute store result score @s local_move_x run data get entity @s Pos[0] 100
execute store result score @s local_move_y run data get entity @s Pos[1] 100
execute store result score @s local_move_z run data get entity @s Pos[2] 100
execute store result score @s local_move_yaw run data get entity @s Rotation[0] 100
execute store result score @s local_move_pitch run data get entity @s Rotation[1] 100
scoreboard players set @s local_move_return 1
