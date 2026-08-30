# 연금술 공방 물약 상점
execute unless score #alchemy_workshop unlock matches 1 run title @s actionbar {text:"연금술 공방을 먼저 해금해야 합니다.",color:"red",italic:true}
execute unless score #alchemy_workshop unlock matches 1 run return 0

data modify storage data tmp.cost set value [{type:"emerald",amount:10},{type:"lapis",amount:15}]
function resource/convert_cost_to_text_named {id:"alchemy_fever_potion",insertion:", "}
data modify storage data tmp.cost set value [{type:"emerald",amount:40},{type:"lapis",amount:60},{type:"information",amount:3},{type:"time",amount:1}]
function resource/convert_cost_to_text_named {id:"alchemy_chaos_end_potion",insertion:", "}

execute at @s run playsound ui.button.click weather @s ~ ~ ~ 1 2
function util/blank
tellraw @s ["",{text:"  [ 연금술 물약 상점 ]",color:"light_purple",bold:true,shadow_color:-16777216},{text:"\n\n  "},{text:"[ 황금 촉매 ]",color:"gold",bold:true,hover_event:{action:"show_text",value:[{text:"5분 동안 성급함 II를 부여합니다.\n\n",color:"gray"},{text:"[ 필요한 재료 ]\n",color:"gold"},{storage:"data",nbt:"tmp.cost_text.alchemy_fever_potion.text",interpret:true}]},click_event:{action:"run_command",command:"/trigger shop_trigger set 1541"}},{text:"\n  채굴과 자원 수집에 박차를 가하는 달콤한 촉매입니다.",color:"gray",bold:false},{text:"\n\n  "},{text:"[ 난세기 종료 물약 ]",color:"light_purple",bold:true,hover_event:{action:"show_text",value:[{text:"현재 세계의 난세기를 즉시 종료합니다.\n소지 중에는 차원 이동기를 사용할 수 없습니다.\n\n",color:"gray"},{text:"[ 필요한 재료 ]\n",color:"gold"},{storage:"data",nbt:"tmp.cost_text.alchemy_chaos_end_potion.text",interpret:true}]},click_event:{action:"run_command",command:"/trigger shop_trigger set 1542"}},{text:"\n  자연 멸망이 발생하면 사용하지 않은 물약은 사라집니다.\n",color:"dark_gray",bold:false}]
