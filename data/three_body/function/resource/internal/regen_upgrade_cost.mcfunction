# Generic next regeneration upgrade cost.
# Input macro compound: {type:"wood",lvl:5}
# Returns the configured cost for the requested level.
# Fails when the requested level does not exist.

data remove storage three_body:resource.temp cost

$execute if data storage three_body:resource.config $(type).regen[$(lvl)] run data modify storage three_body:resource.temp.cost set from storage three_body:resource.config.$(type).regen[$(lvl)].cost

execute unless data storage three_body:resource.temp cost run return fail
return run data get storage three_body:resource.temp cost 1
