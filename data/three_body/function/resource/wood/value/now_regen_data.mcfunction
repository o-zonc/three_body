# Get current wood regeneration data.
# Clear the previous result so an invalid level cannot leave stale data behind.
data remove storage three_body:resource temp.regen

execute store result storage three_body:resource temp.lvl int 1 run scoreboard players get #wood_regen_lvl upgrade
function three_body:resource/wood/value/regen_data_by_lvl with storage three_body:resource
