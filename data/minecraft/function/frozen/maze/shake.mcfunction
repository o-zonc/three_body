scoreboard players add #maze_shake var 1

execute store result score #maze_shake roll_chance run random value 0..3

execute if score #maze_shake var matches 40.. run return 0

execute if score #maze_shake roll_chance matches 0 run execute as @a[tag=maze] at @s run tp @s ~ ~0.1 ~
execute if score #maze_shake roll_chance matches 1 run execute as @a[tag=maze] at @s run tp @s ~ ~ ~0.1
execute if score #maze_shake roll_chance matches 2 run execute as @a[tag=maze] at @s run tp @s ~0.1 ~ ~
execute if score #maze_shake roll_chance matches 3 run execute as @a[tag=maze] at @s run tp @s ~ ~0.2 ~

schedule function frozen/maze/shake 2t