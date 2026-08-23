execute unless entity @a[advancements={0_overworld/24_time_machine=true}] run return 0
execute unless score #GLOBAL time_machine_level matches 1.. run return 0
execute unless entity @a[tag=player] run return 0

function time_machine/calculate
execute unless score #time_machine_timer generate matches 1.. run scoreboard players operation #time_machine_timer generate = #time_machine_interval tmp
scoreboard players remove #time_machine_timer generate 1
execute if score #time_machine_timer generate matches ..0 as @a[tag=player,limit=1] run function time_machine/produce
