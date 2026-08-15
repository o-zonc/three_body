execute as @a[tag=player] if score @s obsidian_storage_trigger matches 1 run function dimensions/nether/obsidian_storage/store
execute as @a[tag=player] if score @s obsidian_storage_trigger matches 2 run function dimensions/nether/obsidian_storage/store_all
execute as @a[tag=player] if score @s obsidian_storage_trigger matches 1.. run scoreboard players reset @s obsidian_storage_trigger
