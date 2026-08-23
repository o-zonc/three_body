execute unless score #gold_regen_lvl upgrade = #gold_regen_lvl upgrade run scoreboard players set #gold_regen_lvl upgrade 0
execute store result storage data tmp.resource.query.lvl int 1 run scoreboard players get #gold_regen_lvl upgrade
data modify storage data tmp.resource.query.type set value "gold"
execute store result score #lab_cooldown tmp run function resource/value/regen/read with storage data tmp.resource.query
return run function shop/alchemy/lab/cooldown/apply {rate:"precious"}
