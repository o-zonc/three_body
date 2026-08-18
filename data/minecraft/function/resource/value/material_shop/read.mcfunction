# Macro args: type, lvl. Returns the unmodified material-shop output value.
$data modify storage data tmp.resource.value set from storage data const.dimensions.overworld.shop.material_shop[{type:"$(type)"}].costs[{lvl:$(lvl)}]
return run data get storage data tmp.resource.value.value

