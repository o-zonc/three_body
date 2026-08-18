# Macro args: id, lvl
$data remove storage data tmp.material_shop.$(id).now
$data modify storage data tmp.material_shop.$(id).now set from storage data const.dimensions.overworld.shop.material_shop[{type:"$(id)"}].costs[{lvl:$(lvl)}]
