execute store result score #material_add_value tmp run function resource/material/gold/amount
execute store result score #chaos_mining_failed tmp run function resource/chaos_mining/check {name:"금"}
execute unless score #chaos_mining_failed tmp matches 1 run function resource/add_material/gold
execute store result score #gold_remain generate run function resource/material/gold/cooldown
