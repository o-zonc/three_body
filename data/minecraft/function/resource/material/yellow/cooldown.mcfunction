execute unless score #yellow_regen_lvl upgrade = #yellow_regen_lvl upgrade run scoreboard players set #yellow_regen_lvl upgrade 0
execute store result storage data tmp.resource.query.lvl int 1 run scoreboard players get #yellow_regen_lvl upgrade
data modify storage data tmp.resource.query.type set value "yellow"
return run function resource/value/regen/read with storage data tmp.resource.query
