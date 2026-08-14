# Return current lapis regeneration duration in ticks.
function three_body:resource/lapis/value/now_regen_data
return run data get storage three_body:resource.temp.regen.ticks 1
