# Get current copper regeneration data.
execute store result storage three_body:resource temp.lvl int 1 run scoreboard players get #copper_regen_lvl upgrade
function three_body:resource/copper/value/regen_data_by_lvl with storage three_body:resource
