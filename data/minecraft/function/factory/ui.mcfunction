# Macro args: id, unlock, name, color, purchase, toggle
$execute unless score #$(unlock) unlock matches 1 run title @s actionbar {text:"$(name) 자원을 먼저 해금해야 합니다.",color:"red"}
$execute unless score #$(unlock) unlock matches 1 run return 0

# 자원은 해금됐지만 공장이 아직 건설되지 않았다면 상세 성능을 숨기고 건설 안내만 표시한다.
$execute unless score #$(id) factory_unlocked matches 1 run return run function factory/ui_locked {id:"$(id)",name:"$(name)",color:"$(color)",purchase:$(purchase)}

$execute store result storage data tmp.factory.ui.lvl int 1 run scoreboard players get #$(id) factory_level
$data modify storage data tmp.factory.ui.id set value "$(id)"
function factory/read with storage data tmp.factory.ui
$execute if score #$(id) factory_level matches 0 run data modify storage data tmp.factory.$(id).now.interval set value 80
$execute if score #$(id) factory_level matches 1 run data modify storage data tmp.factory.$(id).now.interval set value 40
$execute if score #$(id) factory_level matches 2 run data modify storage data tmp.factory.$(id).now.interval set value 20
$execute if score #$(id) factory_level matches 3 run data modify storage data tmp.factory.$(id).now.interval set value 10
$execute if score #$(id) factory_level matches 4 run data modify storage data tmp.factory.$(id).now.interval set value 5
$execute if score #$(id) factory_level matches 5 run data modify storage data tmp.factory.$(id).now.interval set value 2
$execute if score #$(id) factory_level matches 6.. run data modify storage data tmp.factory.$(id).now.interval set value 1
$function dried/advancement/hot_factory_efficiency with storage data tmp.factory.$(id).now
$execute store result score #$(id)_factory_fuel tmp run data get storage data tmp.factory.$(id).now.fuel
$execute store result score #$(id)_factory_interval tmp run data get storage data tmp.factory.$(id).now.interval

data modify storage data tmp.factory.hot_bonus_ui set value {text:""}
execute if entity @a[tag=player,advancements={2_dried/03_hot=true}] run data modify storage data tmp.factory.hot_bonus_ui set value {text:"\n  • 발전과제 보상: 연료 소비 -30%, 시도 주기 -10%",color:"gold",bold:false}

data remove storage data tmp.cost
data remove storage data tmp.cost_original
$data modify storage data tmp.cost set from storage data tmp.factory.$(id).now.cost
execute if data storage data tmp.cost run function resource/convert_cost_to_text_named {id:"factory",insertion:", "}
$execute if score #$(id) factory_level matches 0..5 if data storage data tmp.cost run data modify storage data tmp.factory.purchase_button set value {text:"[ 생산 설비 업그레이드 ]",color:"aqua",bold:true,hover_event:{action:"show_text",value:["",{text:"§6[§7 필요한 재료 §6]\n"},{storage:"data",nbt:"tmp.cost_text.factory.text",interpret:true}]},click_event:{action:"run_command",command:"/trigger factory_trigger set $(purchase)"}}
$execute if score #$(id) factory_level matches 6.. run data modify storage data tmp.factory.purchase_button set value {text:"[ 최대 레벨 ]",color:"dark_gray",bold:true}
$execute if score #$(id) factory_enabled matches 0 run data modify storage data tmp.factory.toggle_button set value {text:"[ 가동 시작 ]",color:"green",bold:true,click_event:{action:"run_command",command:"/trigger factory_trigger set $(toggle)"}}
$execute if score #$(id) factory_enabled matches 1 run data modify storage data tmp.factory.toggle_button set value {text:"[ 가동 중지 ]",color:"red",bold:true,click_event:{action:"run_command",command:"/trigger factory_trigger set $(toggle)"}}
execute at @s run playsound ui.button.click weather @s ~ ~ ~ 1 2
function util/blank
$tellraw @s [{text:"  [ 자동화 공장 - $(name) ]",color:"$(color)",bold:true},{text:"\n\n  • 설비 레벨: ",color:"gray",bold:false},{score:{name:"#$(id)",objective:"factory_level"},color:"white",bold:false},{text:" / 6",color:"gray",bold:false},{text:"\n  • 블록 파괴 시도 주기: ",color:"gray",bold:false},{score:{name:"#$(id)_factory_interval",objective:"tmp"},color:"white",bold:false},{text:"틱",color:"gray",bold:false},{text:"\n  • 시도 주기당 석탄 소비: ",color:"gray",bold:false},{score:{name:"#$(id)_factory_fuel",objective:"tmp"},color:"white",bold:false},{text:"개",color:"dark_gray",bold:false},{storage:"data",nbt:"tmp.factory.hot_bonus_ui",interpret:true},{text:"\n  • 생산량·재생산 속도: 자원 설비 업그레이드 적용",color:"dark_aqua",bold:false},{text:"\n\n  ",bold:false},{storage:"data",nbt:"tmp.factory.purchase_button",interpret:true},{text:"\n  ",bold:false},{storage:"data",nbt:"tmp.factory.toggle_button",interpret:true},{text:"\n",bold:false}]
