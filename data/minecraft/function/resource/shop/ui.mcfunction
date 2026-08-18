# Macro args: id, name, color, trigger
$execute unless score #$(id)_lvl material_shop = #$(id)_lvl material_shop run scoreboard players set #$(id)_lvl material_shop 0
$execute store result storage data tmp.material_shop.$(id).lvl int 1 run scoreboard players get #$(id)_lvl material_shop
$data modify storage data tmp.material_shop.$(id).id set value "$(id)"
$data modify storage data tmp.material_shop.$(id).type set value "$(id)"
$execute store result score #$(id)_value tmp run function resource/value/material_shop/read with storage data tmp.material_shop.$(id)
$function resource/shop/read_data with storage data tmp.material_shop.$(id)

data remove storage data tmp.cost
$data modify storage data tmp.cost set from storage data tmp.material_shop.$(id).now.cost
function dimensions/overworld/shop/crystal_shop/value/apply_material_shop_cost_down
$function dimensions/overworld/shop/material_shop/convert_cost_to_text_named {id:"material_shop_$(id)",insertion:", "}

execute at @s run playsound ui.button.click weather @s ~ ~ ~ 1 2
function util/blank

$data modify storage data tmp.creation_ui.material_shop_$(id) set value {text:"§b§l[ 업그레이드 ]",hover_event:{action:"show_text",value:["",{text:"§6[§7 필요한 재료 §6]\n"},{storage:"data",nbt:"tmp.cost_text.material_shop_$(id).text",interpret:true}]},click_event:{action:"run_command",command:"/trigger shop_trigger set $(trigger)"}}
$tellraw @s ["",{text:"  [ 자원 상점 - $(name) ]",color:"$(color)",bold:true,shadow_color:-16777216},{text:"\n\n  §8•§7 현재 수급량: ",extra:[{score:{name:"#$(id)_value",objective:"tmp"},color:"white"},{text:"§7배"}]},{text:"\n\n  ",extra:[{storage:"data",nbt:"tmp.creation_ui.material_shop_$(id)",interpret:true}]},{text:"\n"}]
