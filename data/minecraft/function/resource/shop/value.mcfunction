# Macro args: id
$execute unless score #$(id)_lvl material_shop = #$(id)_lvl material_shop run scoreboard players set #$(id)_lvl material_shop 0
$execute store result storage data tmp.resource_shop.query.lvl int 1 run scoreboard players get #$(id)_lvl material_shop
$data modify storage data tmp.resource_shop.query.id set value "$(id)"
function resource/shop/read with storage data tmp.resource_shop.query
$return run data get storage data tmp.resource_shop.$(id).now.value
