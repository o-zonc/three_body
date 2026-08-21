data modify storage data tmp.cost set value [{type:"diamond",amount:25}]
execute if score #overworld civilization_age matches 7.. run data modify storage data tmp.cost append value {type:"information",amount:8}
execute if score #overworld civilization_age matches 9.. run data modify storage data tmp.cost append value {type:"time",amount:2}
