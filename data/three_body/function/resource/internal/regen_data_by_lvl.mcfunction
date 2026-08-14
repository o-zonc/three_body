# Generic regeneration data lookup.
# Input macro compound: {type:"wood",lvl:0}
# The configuration, not this function, defines the available levels.
$data modify storage three_body:resource.temp.regen set from storage three_body:resource.config.$(type).regen[$(lvl)]
