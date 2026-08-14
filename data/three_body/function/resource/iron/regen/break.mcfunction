# ==================================================
# Iron resource collection
# ==================================================

data modify storage three_body:resource input.type set value "iron"
execute store result storage three_body:resource input.amount int 1 run function three_body:resource/iron/value/regen_value
function three_body:resource/add

# TODO: remove the hard-coded iron node here.
execute store result score #iron_remain generate run function three_body:resource/iron/value/regen_value
