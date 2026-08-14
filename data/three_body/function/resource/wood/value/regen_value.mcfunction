# Return current wood regeneration duration in ticks.
function three_body:resource/wood/value/now_regen_data
return run data get storage three_body:resource.temp.regen.ticks 1
