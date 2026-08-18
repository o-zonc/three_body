execute unless score #emerald_lvl material_shop = #emerald_lvl material_shop run scoreboard players set #emerald_lvl material_shop 0
execute store result storage data tmp.resource.query.lvl int 1 run scoreboard players get #emerald_lvl material_shop
data modify storage data tmp.resource.query.type set value "emerald"
return run function resource/value/material_shop/read with storage data tmp.resource.query
