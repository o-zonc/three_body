# Return current information regeneration duration in ticks.
function three_body:resource/information/value/now_regen_data
return run data get storage three_body:resource.temp.regen.ticks 1
