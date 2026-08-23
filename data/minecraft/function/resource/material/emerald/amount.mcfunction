execute store result score #emerald_amount tmp run function resource/production/amount {id:"emerald"}
function dawn/amplifier/apply {score:"#emerald_amount",dim:"overworld",final:150}
return run scoreboard players get #emerald_amount tmp
