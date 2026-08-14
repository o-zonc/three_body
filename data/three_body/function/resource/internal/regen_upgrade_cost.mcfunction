# Generic next regeneration upgrade cost.
# Input macro compound: {type:"wood",lvl:<next level>}
# If the next level does not exist, return 0 instead of relying on a hard-coded max.
$execute if data storage three_body:resource.config $(type).regen[$(lvl)] run data modify storage three_body:resource.temp.cost set from storage three_body:resource.config.$(type).regen[$(lvl)].cost
execute unless data storage three_body:resource.temp.cost run return 0
return run data get storage three_body:resource.temp.cost 1
