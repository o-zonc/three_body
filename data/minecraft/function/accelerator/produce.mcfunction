execute if score #GLOBAL accelerator_level matches 1 run scoreboard players set #material_add_value tmp 1
execute if score #GLOBAL accelerator_level matches 2 run scoreboard players set #material_add_value tmp 2
execute if score #GLOBAL accelerator_level matches 3 run scoreboard players set #material_add_value tmp 4
execute if score #GLOBAL accelerator_level matches 4 run scoreboard players set #material_add_value tmp 8
execute as @a[tag=player,limit=1] run function resource/add_material/information
execute if score #GLOBAL accelerator_level matches 1 run scoreboard players set #GLOBAL accelerator_timer 1200
execute if score #GLOBAL accelerator_level matches 2 run scoreboard players set #GLOBAL accelerator_timer 900
execute if score #GLOBAL accelerator_level matches 3 run scoreboard players set #GLOBAL accelerator_timer 600
execute if score #GLOBAL accelerator_level matches 4 run scoreboard players set #GLOBAL accelerator_timer 400
