execute store result storage data tmp.resource.query.lvl int 1 run scoreboard players get #stone_regen_lvl upgrade
data modify storage data tmp.resource.query.type set value "stone"
return run function resource/value/regen/read with storage data tmp.resource.query

