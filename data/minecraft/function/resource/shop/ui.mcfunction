# 매크로 인수: id, name, color, trigger, unit
$execute unless score #$(id)_lvl material_shop = #$(id)_lvl material_shop run scoreboard players set #$(id)_lvl material_shop 0
$execute store result storage data tmp.resource_shop.ui.lvl int 1 run scoreboard players get #$(id)_lvl material_shop
$data modify storage data tmp.resource_shop.ui.id set value "$(id)"
function resource/shop/read with storage data tmp.resource_shop.ui
$execute store result score #$(id)_shop_value tmp run data get storage data tmp.resource_shop.$(id).now.value
data modify storage data tmp.resource_shop.effect set value {text:"현재 수급량: ",color:"gray",bold:false}
execute if data storage data tmp.resource_shop.ui{id:"emerald"} run data modify storage data tmp.resource_shop.effect set value {text:"현재 재생산 대기: ",color:"gray",bold:false}
execute if data storage data tmp.resource_shop.ui{id:"lapis"} run data modify storage data tmp.resource_shop.effect set value {text:"현재 재생산 대기: ",color:"gray",bold:false}
data remove storage data tmp.cost
$data modify storage data tmp.cost set from storage data tmp.resource_shop.$(id).now.cost
function resource/cost/apply_shop_advancement_discount
execute if data storage data tmp.cost run function resource/convert_discount_cost_to_text_named {id:"material_shop",insertion:", "}
$execute if data storage data tmp.cost run data modify storage data tmp.resource_shop.button set value {text:"[ 업그레이드 ]",color:"aqua",bold:true,hover_event:{action:"show_text",value:["",{text:"§6[§7 필요한 재료 §6]\n"},{storage:"data",nbt:"tmp.cost_text.material_shop.text",interpret:true}]},click_event:{action:"run_command",command:"/trigger shop_trigger set $(trigger)"}}
execute unless data storage data tmp.cost run data modify storage data tmp.resource_shop.button set value {text:"[ 업그레이드 완료 ]",color:"dark_gray",bold:true}
execute at @s run playsound ui.button.click weather @s ~ ~ ~ 1 2
function util/blank
$tellraw @s [{text:"  [ 자원 상점 - $(name) ]",color:"$(color)",bold:true,shadow_color:-16777216},{text:"\n\n  • "},{storage:"data",nbt:"tmp.resource_shop.effect",interpret:true},{score:{name:"#$(id)_shop_value",objective:"tmp"},color:"white",bold:false},{text:"$(unit)",color:"gray",bold:false},{text:"\n\n  "},{storage:"data",nbt:"tmp.resource_shop.button",interpret:true},{text:"\n"}]
