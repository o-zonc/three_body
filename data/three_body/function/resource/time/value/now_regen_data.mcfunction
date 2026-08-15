# Get current time regeneration data.
# Ensure the regeneration level exists before reading it.
execute unless score #time_regen_lvl upgrade = #time_regen_lvl upgrade run scoreboard players set #time_regen_lvl upgrade 0

# Store the current regeneration level in temp.lvl.
execute store result storage three_body:resource temp.lvl int 1 run scoreboard players get #time_regen_lvl upgrade

# Pass temp.lvl to the macro function as $(lvl).
function three_body:resource/time/value/regen_data_by_lvl with storage three_body:resource temp
