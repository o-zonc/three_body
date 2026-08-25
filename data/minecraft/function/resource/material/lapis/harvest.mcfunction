execute store result score #material_add_value tmp run function resource/material/lapis/amount
execute store result score #chaos_mining_failed tmp run function resource/chaos_mining/check {name:"청금석"}
execute unless score #chaos_mining_failed tmp matches 1 run function resource/add_material/lapis
execute store result score #lapis_remain generate run function resource/material/lapis/cooldown
