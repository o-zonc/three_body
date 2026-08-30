data modify storage data tmp.cost set value [{type:"emerald",amount:50},{type:"heat",amount:10},{type:"gold",amount:10},{type:"no_obsidian",amount:1}]
execute if score #overworld civilization_age matches 7.. run data modify storage data tmp.cost append value {type:"information",amount:8}
execute if score #overworld civilization_age matches 9.. run data modify storage data tmp.cost append value {type:"time",amount:2}
