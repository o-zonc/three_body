execute unless score #coal_regen_lvl upgrade = #coal_regen_lvl upgrade run scoreboard players set #coal_regen_lvl upgrade 0
execute store result storage data tmp.resource.query.lvl int 1 run scoreboard players get #coal_regen_lvl upgrade
data modify storage data tmp.resource.query.type set value "coal"
return run function resource/value/regen/read with storage data tmp.resource.query
