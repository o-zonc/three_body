# ==================================================
# Stone resource collection
# ==================================================

data modify storage three_body:resource input.type set value "stone"
execute store result storage three_body:resource input.amount int 1 run function three_body:resource/stone/value/regen_value
function three_body:resource/add

# TODO: remove the hard-coded stone node here.
execute store result score #stone_remain generate run function three_body:resource/stone/value/regen_value
