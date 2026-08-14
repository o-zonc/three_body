# Get current stone regeneration data.
execute store result storage three_body:resource temp.lvl int 1 run scoreboard players get #stone_regen_lvl upgrade
function three_body:resource/stone/value/regen_data_by_lvl with storage three_body:resource
