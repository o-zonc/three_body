scoreboard objectives add story dummy

execute if score #done story matches 0 run function story:intro/00_init

execute as @a[scores={intro_skip=1}] run function story:intro/skip
scoreboard players reset @a[scores={intro_skip=1}] intro_skip