# Macro args: id, name, color, purchase
# 공장이 아직 건설되지 않았을 때는 상세 성능 대신 자동화 기능만 간단히 안내한다.
$execute store result storage data tmp.factory.ui_locked.lvl int 1 run scoreboard players get #$(id) factory_level
$data modify storage data tmp.factory.ui_locked.id set value "$(id)"
function factory/read with storage data tmp.factory.ui_locked

data remove storage data tmp.cost
data remove storage data tmp.cost_original
$data modify storage data tmp.cost set from storage data tmp.factory.$(id).now.cost
execute if data storage data tmp.cost run function resource/convert_cost_to_text_named {id:"factory",insertion:", "}

execute at @s run playsound ui.button.click weather @s ~ ~ ~ 1 2
function util/blank
$tellraw @s [{text:"  [ 자동화 공장 - $(name) ]",color:"$(color)",bold:true},{text:"\n\n  공장을 건설하면 ",color:"gray",bold:false},{text:"$(name)",color:"$(color)"},{text:" 자원의 생산을 자동화할 수 있습니다.",color:"gray",bold:false},{text:"\n\n  "},{text:"[ 공장 건설 ]",color:"aqua",bold:true,hover_event:{action:"show_text",value:["",{text:"§6[§7 필요한 재료 §6]\n"},{storage:"data",nbt:"tmp.cost_text.factory.text",interpret:true}]},click_event:{action:"run_command",command:"/trigger factory_trigger set $(purchase)"}},{text:"\n"}]
