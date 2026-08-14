# Return coal regeneration data for the requested level.
# Input: storage three_body:resource.temp {lvl:<level>}
data modify storage three_body:resource.temp.type set value "coal"
function three_body:resource/internal/regen_data_by_lvl with storage three_body:resource.temp
