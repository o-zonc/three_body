# ==================================================
# Cold resource collection
# ==================================================

data modify storage three_body:resource input.type set value "cold"
execute store result storage three_body:resource input.amount int 1 run function three_body:resource/cold/value/regen_value
function three_body:resource/add

# TODO: remove the hard-coded cold node here.
execute store result score #cold_remain generate run function three_body:resource/cold/value/regen_value
