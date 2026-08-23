execute unless score #blue_regen_lvl upgrade = #blue_regen_lvl upgrade run scoreboard players set #blue_regen_lvl upgrade 0
execute store result storage data tmp.resource.query.lvl int 1 run scoreboard players get #blue_regen_lvl upgrade
data modify storage data tmp.resource.query.type set value "blue"
return run function resource/value/regen/read with storage data tmp.resource.query
