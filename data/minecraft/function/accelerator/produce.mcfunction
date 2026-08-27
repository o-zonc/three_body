execute if score #GLOBAL accelerator_level matches 1 store result score #material_add_value tmp run data get storage data const.accelerator.level."1".production
execute if score #GLOBAL accelerator_level matches 2 store result score #material_add_value tmp run data get storage data const.accelerator.level."2".production
execute if score #GLOBAL accelerator_level matches 3 store result score #material_add_value tmp run data get storage data const.accelerator.level."3".production
execute if score #GLOBAL accelerator_level matches 4 store result score #material_add_value tmp run data get storage data const.accelerator.level."4".production
execute as @a[tag=player,limit=1] run function meta/information/give
execute if score #GLOBAL accelerator_level matches 1 store result score #GLOBAL accelerator_timer run data get storage data const.accelerator.level."1".production_interval
execute if score #GLOBAL accelerator_level matches 2 store result score #GLOBAL accelerator_timer run data get storage data const.accelerator.level."2".production_interval
execute if score #GLOBAL accelerator_level matches 3 store result score #GLOBAL accelerator_timer run data get storage data const.accelerator.level."3".production_interval
execute if score #GLOBAL accelerator_level matches 4 store result score #GLOBAL accelerator_timer run data get storage data const.accelerator.level."4".production_interval
