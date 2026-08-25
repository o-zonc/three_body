execute store result score #material_add_value tmp run function resource/material/stone/amount
execute store result score #chaos_mining_failed tmp run function resource/chaos_mining/check {name:"돌"}
execute unless score #chaos_mining_failed tmp matches 1 run function resource/add_material/stone
execute store result score #stone_remain generate run function resource/material/stone/cooldown

