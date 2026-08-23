execute unless score #iron_regen_lvl upgrade = #iron_regen_lvl upgrade run scoreboard players set #iron_regen_lvl upgrade 0
execute store result storage data tmp.resource.query.lvl int 1 run scoreboard players get #iron_regen_lvl upgrade
data modify storage data tmp.resource.query.type set value "iron"
return run function resource/value/regen/read with storage data tmp.resource.query
