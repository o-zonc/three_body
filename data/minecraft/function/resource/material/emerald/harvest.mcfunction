execute store result score #material_add_value tmp run function resource/material/emerald/amount
execute store result score #chaos_mining_failed tmp run function resource/chaos_mining/check {name:"에메랄드"}
execute unless score #chaos_mining_failed tmp matches 1 run function resource/add_material/emerald
execute store result score #emerald_remain generate run function resource/material/emerald/cooldown
