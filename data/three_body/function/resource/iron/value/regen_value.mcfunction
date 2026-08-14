# Return current iron regeneration duration in ticks.
function three_body:resource/iron/value/now_regen_data
return run data get storage three_body:resource.temp.regen.ticks 1
