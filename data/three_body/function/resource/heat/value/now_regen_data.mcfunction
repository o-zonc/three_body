# Get current heat regeneration data.
execute store result storage three_body:resource.temp.lvl int 1 run scoreboard players get #heat_regen_lvl upgrade
function three_body:resource/heat/value/regen_data_by_lvl with storage three_body:resource.temp
