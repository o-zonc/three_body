execute store result score #material_add_value tmp run function resource/material/wood/amount
function resource/add_material/wood
execute store result score #wood_remain generate run function resource/material/wood/cooldown
execute if score #stone unlock matches 1 run function resource/material/stone/count

