# Macro args: id, name, color, effect, unit, trigger
scoreboard players set #heat_second_kind tmp 1
scoreboard players set #cold_second_kind tmp 1
scoreboard players set #get_second_kind tmp 2
$function shop/second/prepare {id:"$(id)"}
function resource/convert_cost_to_text_named {id:"second_shop",insertion:", "}
data modify storage data tmp.second_shop.button set value {text:"§8[ 강화 완료 ]"}
data modify storage data tmp.second_shop.priority set value {text:""}
$execute if score #$(id)_second_kind tmp matches 2 run data modify storage data tmp.second_shop.priority set value {text:" ♣",color:"gold",hover_event:{action:"show_text",value:{text:"이 보너스는 1층 자원 생산량 증가보다 먼저 적용됩니다.",color:"gold"}}}
$execute if score #second_lvl tmp matches ..3 run data modify storage data tmp.second_shop.button set value {text:"§b§l[ 업그레이드 ]",hover_event:{action:"show_text",value:["",{text:"§6[§7 필요한 재료 §6]\n"},{storage:"data",nbt:"tmp.cost_text.second_shop.text",interpret:true}]},click_event:{action:"run_command",command:"/trigger shop_trigger set $(trigger)"}}
execute if score #second_lvl tmp matches 4.. run scoreboard players operation #second_next tmp = #second_current tmp
execute at @s run playsound ui.button.click weather @s ~ ~ ~ 1 2
function util/blank
$tellraw @s ["",{text:"  [ $(name) ]",color:"$(color)",bold:true},{text:"\n\n  현재 단계: ",color:"gray"},{score:{name:"#second_lvl",objective:"tmp"},color:"white"},{text:" / 4",color:"gray"},{text:"\n  $(effect): ",color:"gray"},{score:{name:"#second_current",objective:"tmp"},color:"white"},{text:"$(unit)",color:"gray"},{storage:"data",nbt:"tmp.second_shop.priority",interpret:true},{text:"\n  다음 단계: ",color:"gray"},{score:{name:"#second_next",objective:"tmp"},color:"aqua"},{text:"$(unit)",color:"gray"},{text:"\n\n  "},{storage:"data",nbt:"tmp.second_shop.button",interpret:true},{text:"\n"}]
