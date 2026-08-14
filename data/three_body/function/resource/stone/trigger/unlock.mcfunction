# Unlock stone.
execute if score #stone unlock matches 1.. run return 0
scoreboard players set #stone unlock 1
function three_body:resource/stone/regen/place
playsound minecraft:block.note_block.chime master @a ~ ~ ~ 0.8 1.0
