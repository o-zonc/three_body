function resource/shop/sync_gem_regen {id:"emerald"}
execute unless score #emerald_regen_lvl upgrade = #emerald_regen_lvl upgrade run scoreboard players set #emerald_regen_lvl upgrade 0
execute store result storage data tmp.resource.query.lvl int 1 run scoreboard players get #emerald_regen_lvl upgrade
data modify storage data tmp.resource.query.type set value "emerald"
execute store result score #lab_cooldown tmp run function resource/value/regen/read with storage data tmp.resource.query
return run function shop/alchemy/lab/cooldown/apply {rate:"early"}
