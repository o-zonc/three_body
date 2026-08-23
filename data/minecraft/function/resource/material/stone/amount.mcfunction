execute store result score #stone_amount tmp run function resource/production/amount {id:"stone"}
function dawn/amplifier/apply {score:"#stone_amount",dim:"overworld",final:100}
return run scoreboard players get #stone_amount tmp
