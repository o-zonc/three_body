# ==================================================
# Emerald resource collection
# ==================================================

data modify storage three_body:resource input.type set value "emerald"
execute store result storage three_body:resource input.amount int 1 run function three_body:resource/emerald/value/regen_value
function three_body:resource/add

# TODO: remove the hard-coded emerald node here.
execute store result score #emerald_remain generate run function three_body:resource/emerald/value/regen_value
