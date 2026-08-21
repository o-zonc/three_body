execute as @a if score @s accelerator_trigger matches 1 run function accelerator/upgrade
execute as @a if score @s accelerator_trigger matches 2 run function accelerator/experiment
execute as @a if score @s accelerator_trigger matches 10 run function shield/charge_common
execute as @a if score @s accelerator_trigger matches 11 run function shield/charge_great
execute as @a if score @s accelerator_trigger matches 12 run function shield/charge_special
scoreboard players reset @a[scores={accelerator_trigger=1..}] accelerator_trigger
scoreboard players enable @a accelerator_trigger
