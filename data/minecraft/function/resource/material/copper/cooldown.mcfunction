execute unless score #copper_regen_lvl upgrade = #copper_regen_lvl upgrade run scoreboard players set #copper_regen_lvl upgrade 0
execute store result storage data tmp.resource.query.lvl int 1 run scoreboard players get #copper_regen_lvl upgrade
data modify storage data tmp.resource.query.type set value "copper"
return run function resource/value/regen/read with storage data tmp.resource.query
