# Macro args: type, lvl. Returns the unmodified product drop value.
$data modify storage data tmp.resource.value set from storage data const.resource.$(type).drop[{lvl:$(lvl)}]
return run data get storage data tmp.resource.value.value
