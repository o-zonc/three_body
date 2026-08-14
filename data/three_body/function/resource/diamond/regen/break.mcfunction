# ==================================================
# Diamond resource collection
# ==================================================

data modify storage three_body:resource input.type set value "diamond"
execute store result storage three_body:resource input.amount int 1 run function three_body:resource/diamond/value/regen_value
function three_body:resource/add

# TODO: remove the hard-coded diamond node here.
execute store result score #diamond_remain generate run function three_body:resource/diamond/value/regen_value
