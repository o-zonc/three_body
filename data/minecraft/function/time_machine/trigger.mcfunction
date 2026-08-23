execute unless entity @s[advancements={0_overworld/24_time_machine=true}] run scoreboard players set @s time_machine_trigger 0
execute unless entity @s[advancements={0_overworld/24_time_machine=true}] run return 0
execute if score @s time_machine_trigger matches 1 run function time_machine/research/run {type:"yellow"}
execute if score @s time_machine_trigger matches 2 run function time_machine/research/run {type:"blue"}
scoreboard players set @s time_machine_trigger 0
