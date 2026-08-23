# Macro args: id, lvl
$data remove storage data tmp.resource_shop.$(id).now
$data modify storage data tmp.resource_shop.$(id).now set from storage data const.resource_shop[{id:"$(id)"}].levels[{lvl:$(lvl)}]
