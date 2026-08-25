execute store result score #material_add_value tmp run function resource/material/coal/amount
execute store result score #chaos_mining_failed tmp run function resource/chaos_mining/check {name:"석탄"}
execute unless score #chaos_mining_failed tmp matches 1 run function resource/add_material/coal
execute store result score #coal_remain generate run function resource/material/coal/cooldown

