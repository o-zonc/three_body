execute unless score #gold_lvl material_shop = #gold_lvl material_shop run scoreboard players set #gold_lvl material_shop 0
execute store result storage data tmp.resource.query.lvl int 1 run scoreboard players get #gold_lvl material_shop
data modify storage data tmp.resource.query.type set value "gold"
return run function resource/value/material_shop/read with storage data tmp.resource.query
