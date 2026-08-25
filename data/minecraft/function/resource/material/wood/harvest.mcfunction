execute store result score #material_add_value tmp run function resource/material/wood/amount
execute store result score #chaos_mining_failed tmp run function resource/chaos_mining/check {name:"나무"}
execute unless score #chaos_mining_failed tmp matches 1 run function resource/add_material/wood
execute store result score #wood_remain generate run function resource/material/wood/cooldown
execute if score #stone unlock matches 1 run function resource/material/stone/count

