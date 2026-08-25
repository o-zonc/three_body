execute store result score #material_add_value tmp run function resource/material/diamond/amount
execute store result score #chaos_mining_failed tmp run function resource/chaos_mining/check {name:"다이아몬드"}
execute unless score #chaos_mining_failed tmp matches 1 run function resource/add_material/diamond
execute store result score #diamond_remain generate run function resource/material/diamond/cooldown
