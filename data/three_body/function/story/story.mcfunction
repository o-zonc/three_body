execute if score #done intro matches 0 run function three_body:story/intro/00_init

execute as @a[scores={intro_skip=1}] run function three_body:story/intro/skip
scoreboard players reset @a[scores={intro_skip=1}] intro_skip

execute as @a[scores={tutorial=1}] run function three_body:story/tutorial/skip
scoreboard players reset @a[scores={tutorial=1}] tutorial
