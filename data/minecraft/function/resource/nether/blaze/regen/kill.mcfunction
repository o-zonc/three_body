execute if score #disable_blaze_production var matches 1 run return 0
# Ignore while blaze is regenerating.
execute if score #blaze_remain generate matches 1.. run return 0

# Drop blaze powder.
execute store result score #blaze_powder_drop tmp run function resource/nether/blaze/value/drop_value
scoreboard players operation #material_add_value tmp = #blaze_powder_drop tmp
function resource/add_material/blaze_powder

# Set regeneration wait.
execute store result score #blaze_remain generate run function resource/nether/blaze/value/regen_value

# Effects.
execute positioned -76.5 1.9375 13.5 run kill @e[tag=blaze,type=item_display,distance=..0.2]
playsound entity.blaze.hurt weather @s -76.5 1.5 13.5 0.8 1.4
particle flame -76.5 1.5 13.5 0.5 0.5 0.5 0.05 30 force @a[tag=player]