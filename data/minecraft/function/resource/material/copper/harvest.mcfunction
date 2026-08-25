execute store result score #material_add_value tmp run function resource/material/copper/amount
execute store result score #chaos_mining_failed tmp run function resource/chaos_mining/check {name:"구리"}
execute unless score #chaos_mining_failed tmp matches 1 run function resource/add_material/copper
execute store result score #copper_remain generate run function resource/material/copper/cooldown
