# Get current information regeneration data.
execute store result storage three_body:resource.temp.lvl int 1 run scoreboard players get #information_regen_lvl upgrade
function three_body:resource/information/value/regen_data_by_lvl with storage three_body:resource.temp
