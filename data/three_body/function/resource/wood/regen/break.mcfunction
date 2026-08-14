# Wood resource collection.
# The actual block is destroyed by Minecraft; this function only handles the resource API and regen timer.
data modify storage three_body:resource input set value {type:"wood",amount:1}
function three_body:resource/add with storage three_body:resource.input

# Start the regeneration timer.
execute store result score #wood_remain generate run function three_body:resource/wood/value/regen_value
