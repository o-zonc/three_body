data modify storage data tmp.cost set value [{type:"wood",amount:100},{type:"stone",amount:50}]
execute if score #overworld civilization_age matches 7.. run data modify storage data tmp.cost append value {type:"information",amount:4}
execute if score #overworld civilization_age matches 9.. run data modify storage data tmp.cost append value {type:"time",amount:1}
