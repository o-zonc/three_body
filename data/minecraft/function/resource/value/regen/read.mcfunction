# Macro args: type, lvl. Returns the unmodified product regeneration value.
$data modify storage data tmp.resource.value set from storage data const.resource.$(type).regen[{lvl:$(lvl)}]
return run data get storage data tmp.resource.value.value
