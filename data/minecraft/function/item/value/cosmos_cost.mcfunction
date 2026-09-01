data modify storage data tmp.cost set value [{type:"emerald",amount:32},{type:"stone",amount:50},{type:"yellow",amount:10},{type:"blue",amount:10},{type:"world_eye",amount:3}]
execute if score #overworld civilization_age matches 7.. run data modify storage data tmp.cost append value {type:"information",amount:8}
execute if score #overworld civilization_age matches 9.. run data modify storage data tmp.cost append value {type:"time",amount:2}
