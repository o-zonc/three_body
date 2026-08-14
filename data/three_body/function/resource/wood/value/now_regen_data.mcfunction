# Get current wood regeneration data.
# Clear the previous result so an invalid level cannot leave stale data behind.
data remove storage three_body:resource temp.regen

# Store the current regeneration level in temp.lvl.
execute store result storage three_body:resource temp.lvl int 1 run scoreboard players get #wood_regen_lvl upgrade

# Pass temp.lvl to the macro function as $(lvl).
function three_body:resource/wood/value/regen_data_by_lvl with storage three_body:resource temp
