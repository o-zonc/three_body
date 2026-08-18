function shop/alchemy/prepare
data remove storage data tmp.cost
data modify storage data tmp.cost set from storage data tmp.alchemy_shop.now.cost
function resource/convert_cost_to_text_named {id:"alchemy_workshop",insertion:", "}

data modify storage data tmp.alchemy_shop.state set value {text:"미해금",color:"red"}
execute if score #alchemy_workshop unlock matches 1 run data modify storage data tmp.alchemy_shop.state set value {text:"Lv. ",color:"gray",extra:[{score:{name:"#level",objective:"alchemy_workshop"},color:"white"}]}
data modify storage data tmp.alchemy_shop.next set value {text:"연금술 공방 해금",color:"yellow"}
execute if score #alchemy_stage tmp matches 1 run data modify storage data tmp.alchemy_shop.next set value {text:"Lv. 1 — 상점/공방 이동기 제작",color:"yellow"}
execute if score #alchemy_stage tmp matches 2 run data modify storage data tmp.alchemy_shop.next set value {text:"Lv. 2 — 차원 이동기 제작",color:"yellow"}
execute unless data storage data tmp.alchemy_shop.now run data modify storage data tmp.alchemy_shop.next set value {text:"최대 레벨",color:"green"}

execute if data storage data tmp.alchemy_shop.now store result score #alchemy_required_age tmp run data get storage data tmp.alchemy_shop.now.required_age
data modify storage data tmp.alchemy_shop.lock_hint set value {text:"필요한 문명 시대에 도달해야 합니다.",color:"yellow"}
execute if score #alchemy_stage tmp matches 0 run data modify storage data tmp.alchemy_shop.lock_hint set value {text:"고대 시대에 도달하면 연금술 공방을 해금할 수 있습니다.",color:"yellow"}
execute if score #alchemy_stage tmp matches 1 run data modify storage data tmp.alchemy_shop.lock_hint set value {text:"중세 시대에 도달하면 Lv. 1로 업그레이드할 수 있습니다.",color:"yellow"}
execute if score #alchemy_stage tmp matches 2 run data modify storage data tmp.alchemy_shop.lock_hint set value {text:"근대 시대에 도달하면 Lv. 2로 업그레이드할 수 있습니다.",color:"yellow"}
execute if score #alchemy_stage tmp matches 0 unless score #overworld civilization_age >= #alchemy_required_age tmp run data modify storage data tmp.alchemy_shop.state set value {text:"잠김",color:"red"}

execute if data storage data tmp.alchemy_shop.now unless score #overworld civilization_age >= #alchemy_required_age tmp at @s run playsound ui.button.click weather @s ~ ~ ~ 1 2
execute if data storage data tmp.alchemy_shop.now unless score #overworld civilization_age >= #alchemy_required_age tmp run function util/blank
execute if data storage data tmp.alchemy_shop.now unless score #overworld civilization_age >= #alchemy_required_age tmp run tellraw @s ["",{text:"  [ 연금술 공방 ]",color:"light_purple",bold:true,shadow_color:-16777216},{text:"\n\n  현재 상태: ",color:"gray",bold:false,extra:[{storage:"data",nbt:"tmp.alchemy_shop.state",interpret:true}]},{text:"\n  다음 단계: ",color:"gray",extra:[{storage:"data",nbt:"tmp.alchemy_shop.next",interpret:true}]},{text:"\n\n  ",extra:[{storage:"data",nbt:"tmp.alchemy_shop.lock_hint",interpret:true}]},{text:"\n"}]
execute if data storage data tmp.alchemy_shop.now unless score #overworld civilization_age >= #alchemy_required_age tmp run return 0

data modify storage data tmp.alchemy_shop.button set value {text:"[ 해금 ]",color:"aqua",bold:true,hover_event:{action:"show_text",value:["",{text:"§6[§7 필요한 재료 §6]\n"},{storage:"data",nbt:"tmp.cost_text.alchemy_workshop.text",interpret:true}]},click_event:{action:"run_command",command:"/trigger shop_trigger set 1501"}}
execute if score #alchemy_workshop unlock matches 1 run data modify storage data tmp.alchemy_shop.button.text set value "[ 업그레이드 ]"
execute unless data storage data tmp.alchemy_shop.now run data modify storage data tmp.alchemy_shop.button set value {text:"[ 업그레이드 완료 ]",color:"dark_gray",bold:false}

execute at @s run playsound ui.button.click weather @s ~ ~ ~ 1 2
function util/blank
tellraw @s ["",{text:"  [ 연금술 공방 ]",color:"light_purple",bold:true,shadow_color:-16777216},{text:"\n\n  현재 상태: ",color:"gray",bold:false,extra:[{storage:"data",nbt:"tmp.alchemy_shop.state",interpret:true}]},{text:"\n  다음 단계: ",color:"gray",bold:false,extra:[{storage:"data",nbt:"tmp.alchemy_shop.next",interpret:true}]},{text:"\n\n  ",extra:[{storage:"data",nbt:"tmp.alchemy_shop.button",interpret:true}]},{text:"\n"}]
