# Get current stone regeneration data.
# Ensure the regeneration level exists before reading it.
execute unless score #stone_regen_lvl upgrade = #stone_regen_lvl upgrade run scoreboard players set #stone_regen_lvl upgrade 0

# Store the current regeneration level in temp.lvl.
execute store result storage three_body:resource temp.lvl int 1 run scoreboard players get #stone_regen_lvl upgrade

# Pass temp.lvl to the macro function as $(lvl).
function three_body:resource/stone/value/regen_data_by_lvl with storage three_body:resource temp
