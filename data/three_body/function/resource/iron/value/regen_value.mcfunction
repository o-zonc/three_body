# Return current iron regeneration duration in ticks.
execute store result storage three_body:resource.temp.lvl int 1 run scoreboard players get #iron_regen_lvl upgrade
data modify storage three_body:resource.temp.type set value "iron"
function three_body:resource/internal/regen_value with storage three_body:resource.temp
