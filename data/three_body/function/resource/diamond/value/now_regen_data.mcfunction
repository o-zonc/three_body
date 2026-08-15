# Get current diamond regeneration data.
# Ensure the regeneration level exists before reading it.
execute unless score #diamond_regen_lvl upgrade = #diamond_regen_lvl upgrade run scoreboard players set #diamond_regen_lvl upgrade 0

# Store the current regeneration level in temp.lvl.
execute store result storage three_body:resource temp.lvl int 1 run scoreboard players get #diamond_regen_lvl upgrade

# Pass temp.lvl to the macro function as $(lvl).
function three_body:resource/diamond/value/regen_data_by_lvl with storage three_body:resource temp
