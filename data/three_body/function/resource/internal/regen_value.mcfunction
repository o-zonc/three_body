# Generic current regeneration duration.
# Input macro compound: {type:"wood",lvl:0}
function three_body:resource/internal/regen_data_by_lvl with storage three_body:resource.temp
return run data get storage three_body:resource.temp.regen.ticks 1
