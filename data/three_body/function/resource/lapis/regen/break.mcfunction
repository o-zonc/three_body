# ==================================================
# Lapis resource collection
# ==================================================

data modify storage three_body:resource input.type set value "lapis"
execute store result storage three_body:resource input.amount int 1 run function three_body:resource/lapis/value/regen_value
function three_body:resource/add

# TODO: remove the hard-coded lapis node here.
execute store result score #lapis_remain generate run function three_body:resource/lapis/value/regen_value
