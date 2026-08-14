execute if score #iron unlock matches 1.. run return 0
scoreboard players set #iron unlock 1
scoreboard players set #iron_regen_lvl upgrade 0
function three_body:resource/iron/regen/place
playsound minecraft:block.note_block.chime master @a ~ ~ ~ 0.8 1.0
