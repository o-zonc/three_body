# 매크로 인수: id, name, color, description, trigger
$function item/value/$(id)_cost
$function resource/convert_cost_to_text_named {id:"item_$(id)",insertion:", "}

execute at @s run playsound ui.button.click weather @s ~ ~ ~ 1 2
function util/blank
$data modify storage data tmp.creation_ui.item set value {text:"§b§l[ 구매 ]",hover_event:{action:"show_text",value:["",{text:"§6[§7 필요한 재료 §6]\n"},{storage:"data",nbt:"tmp.cost_text.item_$(id).text",interpret:true}]},click_event:{action:"run_command",command:"/trigger item_trigger set $(trigger)"}}
$tellraw @s ["",{text:"  [ $(name) ]",color:"$(color)",bold:true},{text:"\n\n  §8•§7 $(description)"},{text:"\n\n  ",extra:[{storage:"data",nbt:"tmp.creation_ui.item",interpret:true}]},{text:"\n"}]
