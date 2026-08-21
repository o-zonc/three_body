data modify storage data tmp.cost set value [{type:"iron",amount:50},{type:"heat",amount:25}]
execute if score #overworld civilization_age matches 7.. run data modify storage data tmp.cost append value {type:"information",amount:4}
execute if score #overworld civilization_age matches 9.. run data modify storage data tmp.cost append value {type:"time",amount:1}
