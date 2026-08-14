# ==================================================
# Gold resource collection
# ==================================================

data modify storage three_body:resource input.type set value "gold"
execute store result storage three_body:resource input.amount int 1 run function three_body:resource/gold/value/regen_value
function three_body:resource/add

# TODO: remove the hard-coded gold node here.
execute store result score #gold_remain generate run function three_body:resource/gold/value/regen_value
