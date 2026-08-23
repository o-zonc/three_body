scoreboard players set #GLOBAL time_machine_level 0
scoreboard players set #time_machine_yellow upgrade 0
scoreboard players set #time_machine_blue upgrade 0
scoreboard players set #time_machine_path_yellow upgrade 0
scoreboard players set #time_machine_path_blue upgrade 0
scoreboard players set #time_machine_path_green upgrade 0
scoreboard players set #time_machine_green_discovered upgrade 0
function time_machine/calculate
scoreboard players set #time_machine_timer generate 1200
scoreboard players reset @a time_machine_trigger
