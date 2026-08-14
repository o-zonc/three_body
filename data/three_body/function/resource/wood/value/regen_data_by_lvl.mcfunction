# Get wood regeneration data for the requested level.
# Input: storage three_body:resource.temp {lvl:<level>}
$data modify storage three_body:resource.temp.regen set from storage three_body:resource.config.wood.regen[$(lvl)]
