scoreboard players set #material_max tmp 999999999

execute if score #wood material matches ..-1 run scoreboard players set #wood material 0
execute if score #stone material matches ..-1 run scoreboard players set #stone material 0
execute if score #coal material matches ..-1 run scoreboard players set #coal material 0
execute if score #copper material matches ..-1 run scoreboard players set #copper material 0
execute if score #iron material matches ..-1 run scoreboard players set #iron material 0
execute if score #gold material matches ..-1 run scoreboard players set #gold material 0
execute if score #diamond material matches ..-1 run scoreboard players set #diamond material 0
execute if score #emerald material matches ..-1 run scoreboard players set #emerald material 0
execute if score #lapis material matches ..-1 run scoreboard players set #lapis material 0
execute if score #heat material matches ..-1 run scoreboard players set #heat material 0
execute if score #cold material matches ..-1 run scoreboard players set #cold material 0
execute if score #information material matches ..-1 run scoreboard players set #information material 0
execute if score #time material matches ..-1 run scoreboard players set #time material 0
execute if score #world_eye material matches ..-1 run scoreboard players set #world_eye material 0

execute if score #wood material > #material_max tmp run scoreboard players operation #wood material = #material_max tmp
execute if score #stone material > #material_max tmp run scoreboard players operation #stone material = #material_max tmp
execute if score #coal material > #material_max tmp run scoreboard players operation #coal material = #material_max tmp
execute if score #copper material > #material_max tmp run scoreboard players operation #copper material = #material_max tmp
execute if score #iron material > #material_max tmp run scoreboard players operation #iron material = #material_max tmp
execute if score #gold material > #material_max tmp run scoreboard players operation #gold material = #material_max tmp
execute if score #diamond material > #material_max tmp run scoreboard players operation #diamond material = #material_max tmp
execute if score #emerald material > #material_max tmp run scoreboard players operation #emerald material = #material_max tmp
execute if score #lapis material > #material_max tmp run scoreboard players operation #lapis material = #material_max tmp
execute if score #heat material > #material_max tmp run scoreboard players operation #heat material = #material_max tmp
execute if score #cold material > #material_max tmp run scoreboard players operation #cold material = #material_max tmp
execute if score #information material > #material_max tmp run scoreboard players operation #information material = #material_max tmp
execute if score #time material > #material_max tmp run scoreboard players operation #time material = #material_max tmp
execute if score #world_eye material > #material_max tmp run scoreboard players operation #world_eye material = #material_max tmp
