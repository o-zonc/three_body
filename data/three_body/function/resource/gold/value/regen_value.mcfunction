# Return current gold regeneration duration in ticks.
function three_body:resource/gold/value/now_regen_data
return run data get storage three_body:resource.temp.regen.ticks 1
