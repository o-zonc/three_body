# Unlock coal.
execute if score #coal unlock matches 1.. run return 0
scoreboard players set #coal unlock 1
scoreboard players set #coal_regen_lvl upgrade 0
function three_body:resource/coal/regen/place
playsound minecraft:block.note_block.chime master @a ~ ~ ~ 0.8 1.0
