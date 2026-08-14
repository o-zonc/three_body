# Return current stone regeneration duration in ticks.
execute store result storage three_body:resource.temp.lvl int 1 run scoreboard players get #stone_regen_lvl upgrade
data modify storage three_body:resource.temp.type set value "stone"
function three_body:resource/internal/regen_value with storage three_body:resource.temp
