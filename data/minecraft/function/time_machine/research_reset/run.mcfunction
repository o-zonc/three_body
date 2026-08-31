execute unless score #GLOBAL time_machine_level matches 4 run return 0
execute if entity @s[advancements={0_overworld/26_all_general=true}] run return 0

tag @a remove time_machine_reset_confirm
scoreboard players set #GLOBAL time_machine_level 1
scoreboard players set #time_machine_yellow upgrade 0
scoreboard players set #time_machine_blue upgrade 0
scoreboard players set #time_machine_path_yellow upgrade 0
scoreboard players set #time_machine_path_blue upgrade 0
scoreboard players set #time_machine_path_green upgrade 0
scoreboard players set #time_machine_green_discovered upgrade 0

advancement revoke @a only 0_overworld/25_yellow_time_machine
advancement revoke @a only 0_overworld/25_blue_time_machine
advancement revoke @a only 0_overworld/25_green_time_machine

function time_machine/calculate
scoreboard players operation #time_machine_timer generate = #time_machine_interval_cached var

execute in overworld run forceload add -32 16 -16 32
execute in overworld run function time_machine/perimeter_setup/1
scoreboard players set #time_machine_perimeter_loaded var 1
scoreboard players set #time_machine_perimeter_initialized var 1

execute at @s run playsound block.respawn_anchor.deplete master @s ~ ~ ~ 0.8 1.2
title @s actionbar {"text":"타임머신 발전이 Lv.1 기준으로 초기화되었습니다.","color":"aqua","italic":false}
function time_machine/ui
