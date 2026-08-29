scoreboard players set #GLOBAL time_machine_level 0
execute in overworld run forceload add -32 16 -16 32
execute in overworld run kill @e[type=marker,tag=elevator_2_perimeter]
execute in overworld run forceload remove -32 16 -16 32
scoreboard players set #time_machine_perimeter_loaded var 0
scoreboard players set #time_machine_perimeter_initialized var 1
scoreboard players set #time_machine_yellow upgrade 0
scoreboard players set #time_machine_blue upgrade 0
scoreboard players set #time_machine_path_yellow upgrade 0
scoreboard players set #time_machine_path_blue upgrade 0
scoreboard players set #time_machine_path_green upgrade 0
scoreboard players set #time_machine_green_discovered upgrade 0
function time_machine/calculate
scoreboard players set #time_machine_timer generate 1200
scoreboard players reset @a time_machine_trigger
