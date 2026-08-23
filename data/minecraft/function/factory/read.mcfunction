# Macro args: id, lvl
$data remove storage data tmp.factory.$(id).now
$data modify storage data tmp.factory.$(id).now set from storage data const.factory[{id:"$(id)"}].levels[{lvl:$(lvl)}]
$data modify storage data tmp.factory.$(id).now.id set value "$(id)"
