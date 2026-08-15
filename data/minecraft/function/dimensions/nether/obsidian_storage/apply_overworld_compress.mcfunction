function dimensions/nether/obsidian_storage/effective_milestone

execute if score #stone unlock matches 1 run function resource/overworld/stone/regen/place
execute if score #mob unlock matches 1 run function resource/overworld/mob/regen/summon

execute if score #cave unlock matches 1 run scoreboard players set #y var 64000
execute if score #obsidian_storage_effective_milestone tmp matches 75.. run scoreboard players set #y var -5000
execute if score #obsidian_storage_effective_milestone tmp matches 200.. run scoreboard players set #y var -32000
function dimensions/nether/workshop/effect/5_1/effective
execute if score #5_1_effective tmp matches 1 run scoreboard players set #y var -64000

execute if score #cave unlock matches 1 store result score #coal_remain generate run function resource/overworld/coal/value/regen_value
execute if score #cave unlock matches 1 run scoreboard players operation #cave_material_regen_value tmp = #coal_remain generate
execute if score #cave unlock matches 1 run function dimensions/overworld/shop/crystal_shop/apply/cave_material_regen_speed
execute if score #cave unlock matches 1 run scoreboard players operation #coal_remain generate = #cave_material_regen_value tmp

execute if score #cave unlock matches 1 store result score #iron_remain generate run function resource/overworld/iron/value/regen_value
execute if score #cave unlock matches 1 run scoreboard players operation #cave_material_regen_value tmp = #iron_remain generate
execute if score #cave unlock matches 1 run function dimensions/overworld/shop/crystal_shop/apply/cave_material_regen_speed
execute if score #cave unlock matches 1 run scoreboard players operation #iron_remain generate = #cave_material_regen_value tmp
