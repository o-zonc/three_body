# Macro args: id, name, color, trigger, x, y, z, cost
execute at @s run playsound ui.button.click weather @s ~ ~ ~ 1 2
function util/blank

# 구버전 저장 상태를 unlock 스코어로 승계합니다.
$execute in dried if data block $(x) $(y) $(z) {name:"$(id)"} run scoreboard players set #dried_$(id) unlock 1

$execute if score #dried_$(id) unlock matches 1 run tellraw @s ["",{text:"  [ $(name) ]",color:"$(color)",bold:true},{text:"\n\n  시설 해금이 완료되었습니다.",color:"gray"},{text:"\n"}]
$execute if score #dried_$(id) unlock matches 1 run return 0

$data modify storage data tmp.cost set value $(cost)
function resource/convert_cost_to_text_named {id:"dried_structure",insertion:", "}
$tellraw @s ["",{text:"  [ $(name) ]",color:"$(color)",bold:true},{text:"\n\n  메마른 세계가 업그레이드됩니다.",color:"gray"},{text:"\n\n  "},{text:"[ 시설 해금 ]",color:"gold",bold:true,hover_event:{action:"show_text",value:[{text:"§6[§7 필요한 재료 §6]\n"},{storage:"data",nbt:"tmp.cost_text.dried_structure.text",interpret:true}]},click_event:{action:"run_command",command:"/trigger shop_trigger set $(trigger)"}},{text:"\n"}]
