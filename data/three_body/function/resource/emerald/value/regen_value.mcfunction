# Return current emerald regeneration duration in ticks.
function three_body:resource/emerald/value/now_regen_data
return run data get storage three_body:resource.temp.regen.ticks 1
