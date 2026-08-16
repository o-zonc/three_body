execute if score #disable_quartz_production var matches 1 run return 0
execute unless score #quartz unlock matches 1 run setblock -47 1 4 air replace
execute unless score #quartz unlock matches 1 run return 0

execute unless block -47 1 4 air run scoreboard players set #quartz_present generate 1
execute unless block -47 1 4 air run return run scoreboard players reset #quartz_remain generate

execute if block -47 1 4 air unless score #quartz_present generate matches 1 run function resource/nether/quartz/regen/place
execute if block -47 1 4 air unless score #quartz_remain generate = #quartz_remain generate run function resource/nether/quartz/regen/break
execute if block -47 1 4 air if score #quartz_remain generate matches ..0 run function resource/nether/quartz/regen/place
execute if block -47 1 4 air if score #quartz_remain generate matches 1.. run return run scoreboard players remove #quartz_remain generate 1
