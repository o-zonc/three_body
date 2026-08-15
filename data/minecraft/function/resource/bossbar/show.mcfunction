function resource/bossbar/overworld

execute if score #quartz unlock matches 1 run function resource/bossbar/nether
execute unless score #quartz unlock matches 1 if score #nether compress matches 1.. run function resource/bossbar/nether