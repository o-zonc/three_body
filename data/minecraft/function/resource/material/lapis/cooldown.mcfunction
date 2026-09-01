function resource/shop/sync_gem_regen {id:"lapis"}
execute unless score #lapis_regen_lvl upgrade = #lapis_regen_lvl upgrade run scoreboard players set #lapis_regen_lvl upgrade 0
execute store result storage data tmp.resource.query.lvl int 1 run scoreboard players get #lapis_regen_lvl upgrade
data modify storage data tmp.resource.query.type set value "lapis"
execute store result score #lab_cooldown tmp run function resource/value/regen/read with storage data tmp.resource.query
return run function shop/alchemy/lab/cooldown/apply {rate:"early"}
