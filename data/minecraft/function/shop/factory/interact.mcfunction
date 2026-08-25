function shop/factory/prepare
execute at @s run playsound ui.button.click weather @s ~ ~ ~ 1 2
function util/blank

execute unless data storage data tmp.factory_shop run tellraw @s ["",{text:"  [ 공장 건설 단말 ]",color:"gold",bold:true},{text:"\n\n  모든 시설이 건설되었습니다.",color:"green"},{text:"\n  공장 엘리베이터: 3층까지 운행",color:"gray"},{text:"\n"}]
execute unless data storage data tmp.factory_shop run return 0

data modify storage data tmp.cost set from storage data tmp.factory_shop.cost
function resource/cost/apply_shop_advancement_discount
function resource/convert_discount_cost_to_text_named {id:"factory_shop",insertion:", "}
execute store result score #factory_required_age tmp run data get storage data tmp.factory_shop.required_age

execute unless score #overworld civilization_age >= #factory_required_age tmp if score #factory_required_age tmp matches 7 run tellraw @s ["",{text:"  [ 공장 건설 단말 ]",color:"gold",bold:true},{text:"\n\n  다음 시설: ",color:"gray"},{storage:"data",nbt:"tmp.factory_shop.name"},{text:"\n\n  근대 시대에 도달하면 건설할 수 있습니다.",color:"yellow"},{text:"\n"}]
execute unless score #overworld civilization_age >= #factory_required_age tmp if score #factory_required_age tmp matches 8 run tellraw @s ["",{text:"  [ 공장 건설 단말 ]",color:"gold",bold:true},{text:"\n\n  다음 시설: ",color:"gray"},{storage:"data",nbt:"tmp.factory_shop.name"},{text:"\n\n  현대 시대에 도달하면 건설할 수 있습니다.",color:"yellow"},{text:"\n"}]
execute unless score #overworld civilization_age >= #factory_required_age tmp if score #factory_required_age tmp matches 9 run tellraw @s ["",{text:"  [ 공장 건설 단말 ]",color:"gold",bold:true},{text:"\n\n  다음 시설: ",color:"gray"},{storage:"data",nbt:"tmp.factory_shop.name"},{text:"\n\n  미래 시대에 도달하면 건설할 수 있습니다.",color:"yellow"},{text:"\n"}]
execute unless score #overworld civilization_age >= #factory_required_age tmp run return 0

tellraw @s ["",{text:"  [ 공장 건설 단말 ]",color:"gold",bold:true},{text:"\n\n  다음 시설: ",color:"gray"},{storage:"data",nbt:"tmp.factory_shop.name",color:"aqua"},{text:"\n\n  "},{text:"[ 건설 ]",color:"aqua",bold:true,hover_event:{action:"show_text",value:["",{text:"§6[§7 필요한 재료 §6]\n"},{storage:"data",nbt:"tmp.cost_text.factory_shop.text",interpret:true}]},click_event:{action:"run_command",command:"/trigger shop_trigger set 1801"}},{text:"\n"}]
