# ==================================================
# Information resource collection
# ==================================================

data modify storage three_body:resource input.type set value "information"
execute store result storage three_body:resource input.amount int 1 run function three_body:resource/information/value/regen_value
function three_body:resource/add

# TODO: remove the hard-coded information node here.
execute store result score #information_remain generate run function three_body:resource/information/value/regen_value
