# ==================================================
# Time resource collection
# ==================================================

data modify storage three_body:resource input.type set value "time"
execute store result storage three_body:resource input.amount int 1 run function three_body:resource/time/value/regen_value
function three_body:resource/add

# TODO: remove the hard-coded time node here.
execute store result score #time_remain generate run function three_body:resource/time/value/regen_value
