# Get current coal regeneration data.
execute store result storage three_body:resource.temp.lvl int 1 run scoreboard players get #coal_regen_lvl upgrade
function three_body:resource/coal/value/regen_data_by_lvl with storage three_body:resource.temp
