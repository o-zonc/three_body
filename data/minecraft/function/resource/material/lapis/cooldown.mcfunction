execute unless score #lapis_regen_lvl upgrade = #lapis_regen_lvl upgrade run scoreboard players set #lapis_regen_lvl upgrade 0
execute store result storage data tmp.resource.query.lvl int 1 run scoreboard players get #lapis_regen_lvl upgrade
data modify storage data tmp.resource.query.type set value "lapis"
return run function resource/value/regen/read with storage data tmp.resource.query
