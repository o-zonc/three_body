# Get current lapis regeneration data.
# Ensure the regeneration level exists before reading it.
execute unless score #lapis_regen_lvl upgrade = #lapis_regen_lvl upgrade run scoreboard players set #lapis_regen_lvl upgrade 0

# Store the current regeneration level in temp.lvl.
execute store result storage three_body:resource temp.lvl int 1 run scoreboard players get #lapis_regen_lvl upgrade

# Pass temp.lvl to the macro function as $(lvl).
function three_body:resource/lapis/value/regen_data_by_lvl with storage three_body:resource temp
