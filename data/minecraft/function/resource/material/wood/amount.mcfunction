execute store result storage data tmp.resource.query.lvl int 1 run scoreboard players get #wood_lvl material_shop
data modify storage data tmp.resource.query.type set value "wood"
return run function resource/value/material_shop/read with storage data tmp.resource.query

