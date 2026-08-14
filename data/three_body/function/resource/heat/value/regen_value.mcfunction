# Return current heat regeneration duration in ticks.
function three_body:resource/heat/value/now_regen_data
return run data get storage three_body:resource.temp.regen.ticks 1
