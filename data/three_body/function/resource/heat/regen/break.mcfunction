# ==================================================
# Heat resource collection
# ==================================================

data modify storage three_body:resource input.type set value "heat"
execute store result storage three_body:resource input.amount int 1 run function three_body:resource/heat/value/regen_value
function three_body:resource/add

# TODO: remove the hard-coded heat node here.
execute store result score #heat_remain generate run function three_body:resource/heat/value/regen_value
