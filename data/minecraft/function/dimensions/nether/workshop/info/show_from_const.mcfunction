$data modify storage data tmp.nether_workshop.entry set from storage data const.dimensions.nether.workshop[{id:"$(id)"}]
$data modify storage data tmp.nether_workshop.entry.slot set value "$(slot)"
$data modify storage data tmp.nether_workshop.entry.effect set value "$(effect)"
function dimensions/nether/workshop/info/format_cost
function dimensions/nether/workshop/info/show with storage data tmp.nether_workshop.entry
