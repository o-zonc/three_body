# Return current gold regeneration duration in ticks.
execute store result storage three_body:resource.temp.lvl int 1 run scoreboard players get #gold_regen_lvl upgrade
data modify storage three_body:resource.temp.type set value "gold"
function three_body:resource/internal/regen_value with storage three_body:resource.temp
