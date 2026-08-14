# Get current time regeneration data.
execute store result storage three_body:resource temp.lvl int 1 run scoreboard players get #time_regen_lvl upgrade
function three_body:resource/time/value/regen_data_by_lvl with storage three_body:resource
