execute unless score #lapis_lvl material_shop = #lapis_lvl material_shop run scoreboard players set #lapis_lvl material_shop 0
execute store result storage data tmp.resource.query.lvl int 1 run scoreboard players get #lapis_lvl material_shop
data modify storage data tmp.resource.query.type set value "lapis"
return run function resource/value/material_shop/read with storage data tmp.resource.query
