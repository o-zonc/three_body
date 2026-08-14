# ==================================================
# Copper resource collection
# ==================================================

data modify storage three_body:resource input.type set value "copper"
execute store result storage three_body:resource input.amount int 1 run function three_body:resource/copper/value/regen_value
function three_body:resource/add

# TODO: remove the hard-coded copper node here.
execute store result score #copper_remain generate run function three_body:resource/copper/value/regen_value
