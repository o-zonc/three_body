execute unless score #diamond_regen_lvl upgrade = #diamond_regen_lvl upgrade run scoreboard players set #diamond_regen_lvl upgrade 0
execute store result storage data tmp.resource.query.lvl int 1 run scoreboard players get #diamond_regen_lvl upgrade
data modify storage data tmp.resource.query.type set value "diamond"
execute store result score #lab_cooldown tmp run function resource/value/regen/read with storage data tmp.resource.query
return run function shop/alchemy/lab/cooldown/apply {rate:"precious"}
