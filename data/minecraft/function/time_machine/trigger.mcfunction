execute unless entity @s[advancements={0_overworld/24_time_machine=true}] run scoreboard players set @s time_machine_trigger 0
execute unless entity @s[advancements={0_overworld/24_time_machine=true}] run return 0
execute if score @s time_machine_trigger matches 1 run function time_machine/research/run {type:"yellow",display_type:"노랑"}
execute if score @s time_machine_trigger matches 2 run function time_machine/research/run {type:"blue",display_type:"파랑"}
execute if score @s time_machine_trigger matches 3 run function time_machine/research_reset/confirm
execute if score @s time_machine_trigger matches 4 if entity @s[tag=time_machine_reset_confirm] run function time_machine/research_reset/run
scoreboard players set @s time_machine_trigger 0
