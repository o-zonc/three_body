execute if score #disable_stone_production var matches 1 run return 0
execute unless score #stone unlock matches 1 run setblock -3 -59 35 air replace
execute unless score #stone unlock matches 1 run return 0
execute unless block -3 -59 35 air run return run scoreboard players reset #stone_remain generate
execute if block -3 -59 35 air unless score #stone_remain generate = #stone_remain generate run scoreboard players set #catalyst_active_harvest var 0
execute if block -3 -59 35 air unless score #stone_remain generate = #stone_remain generate unless score #stone_automated_harvest var matches 1 run scoreboard players set #catalyst_active_harvest var 1
execute if block -3 -59 35 air unless score #stone_remain generate = #stone_remain generate run function resource/material/stone/harvest
execute if block -3 -59 35 air run scoreboard players set #catalyst_active_harvest var 0
execute if block -3 -59 35 air run scoreboard players set #stone_automated_harvest var 0
