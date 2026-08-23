function time_machine/calculate
execute store result storage data tmp.time_machine.produce.amount int 1 run scoreboard players get #time_machine_amount tmp
function resource/add_material/time with storage data tmp.time_machine.produce
scoreboard players operation #time_machine_timer generate = #time_machine_interval tmp
playsound block.amethyst_block.chime weather @s ~ ~ ~ 0.35 1.6
