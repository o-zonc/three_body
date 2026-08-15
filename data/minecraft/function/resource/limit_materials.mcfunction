scoreboard players set #material_max tmp 999999999

execute if score #wood material matches ..-1 run scoreboard players set #wood material 0
execute if score #stone material matches ..-1 run scoreboard players set #stone material 0
execute if score #coal material matches ..-1 run scoreboard players set #coal material 0
execute if score #iron material matches ..-1 run scoreboard players set #iron material 0
execute if score #obsidian material matches ..-1 run scoreboard players set #obsidian material 0
execute if score #quartz material matches ..-1 run scoreboard players set #quartz material 0
execute if score #gold material matches ..-1 run scoreboard players set #gold material 0
execute if score #blaze_powder material matches ..-1 run scoreboard players set #blaze_powder material 0
execute if score #spirit material matches ..-1 run scoreboard players set #spirit material 0
execute if score #spirit material matches 1.. run scoreboard players set #spirit_sidebar var 1

execute if score #wood material > #material_max tmp run scoreboard players operation #wood material = #material_max tmp
execute if score #stone material > #material_max tmp run scoreboard players operation #stone material = #material_max tmp
execute if score #coal material > #material_max tmp run scoreboard players operation #coal material = #material_max tmp
execute if score #iron material > #material_max tmp run scoreboard players operation #iron material = #material_max tmp
execute if score #obsidian material > #material_max tmp run scoreboard players operation #obsidian material = #material_max tmp
execute if score #quartz material > #material_max tmp run scoreboard players operation #quartz material = #material_max tmp
execute if score #gold material > #material_max tmp run scoreboard players operation #gold material = #material_max tmp
execute if score #blaze_powder material > #material_max tmp run scoreboard players operation #blaze_powder material = #material_max tmp
execute if score #spirit material > #material_max tmp run scoreboard players operation #spirit material = #material_max tmp
