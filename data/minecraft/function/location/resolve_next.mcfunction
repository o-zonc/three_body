execute unless data storage data tmp.location.queue[0] run return 0
function location/check with storage data tmp.location.queue[0]
execute if score #location_found tmp matches 1 run data modify storage data tmp.location.name set from storage data tmp.location.queue[0].name
data remove storage data tmp.location.queue[0]
execute unless score #location_found tmp matches 1 run return run function location/resolve_next
return 1
