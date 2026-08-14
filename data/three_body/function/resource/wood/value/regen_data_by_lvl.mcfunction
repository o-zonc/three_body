# Get wood regeneration data for the requested level.
# Input: storage three_body:resource.temp {lvl:<level>}
# The config storage is three_body:resource.config, with NBT path wood.regen.
$data modify storage three_body:resource.temp.regen set from storage three_body:resource.config wood.regen[$(lvl)]
