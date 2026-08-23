# Macro args: id, lvl
data remove storage data tmp.cost
$data modify storage data tmp.cost set from storage data const.resource.$(id).regen[{lvl:$(lvl)}].cost
