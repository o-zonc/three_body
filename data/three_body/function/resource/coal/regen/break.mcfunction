# ==================================================
# Coal resource collection
# ==================================================

data modify storage three_body:resource input.type set value "coal"
execute store result storage three_body:resource input.amount int 1 run function three_body:resource/coal/value/regen_value
function three_body:resource/add

# TODO: remove the hard-coded coal node here.
execute store result score #coal_remain generate run function three_body:resource/coal/value/regen_value
