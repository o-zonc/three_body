execute store result score #material_add_value tmp run function resource/material/iron/amount
execute store result score #chaos_mining_failed tmp run function resource/chaos_mining/check {name:"철"}
execute unless score #chaos_mining_failed tmp matches 1 run function resource/add_material/iron
execute store result score #iron_remain generate run function resource/material/iron/cooldown

