scoreboard players set #material_add_value tmp 1
function resource/add_material/yellow
execute store result score #yellow_remain generate run function resource/material/yellow/cooldown
