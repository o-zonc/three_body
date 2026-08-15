# Get current copper regeneration data.
# Ensure the regeneration level exists before reading it.
execute unless score #copper_regen_lvl upgrade = #copper_regen_lvl upgrade run scoreboard players set #copper_regen_lvl upgrade 0

# Store the current regeneration level in temp.lvl.
execute store result storage three_body:resource temp.lvl int 1 run scoreboard players get #copper_regen_lvl upgrade

# Pass temp.lvl to the macro function as $(lvl).
function three_body:resource/copper/value/regen_data_by_lvl with storage three_body:resource temp
