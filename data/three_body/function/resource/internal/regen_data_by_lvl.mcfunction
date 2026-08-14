# Generic regeneration data lookup.
# Input macro compound: {type:"wood",lvl:5}
$data modify storage three_body:resource temp.regen set from storage three_body:resource config.$(type).regen[$(lvl)]
