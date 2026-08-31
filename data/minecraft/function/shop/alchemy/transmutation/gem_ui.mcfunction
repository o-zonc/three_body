execute unless score #alchemy_workshop unlock matches 1 run title @s actionbar {text:"연금술 공방을 먼저 해금해야 합니다.",color:"red",italic:true}
execute unless score #alchemy_workshop unlock matches 1 as @a at @s run playsound ui.button.click master @s ~ ~ ~ 1 1.2
execute unless score #alchemy_workshop unlock matches 1 run return 0
execute unless score #level alchemy_workshop matches 1.. run title @s actionbar {text:"연금술 공방 Lv. 1이 필요합니다.",color:"red",italic:true}
execute unless score #level alchemy_workshop matches 1.. as @a at @s run playsound ui.button.click master @s ~ ~ ~ 1 1.2
execute unless score #level alchemy_workshop matches 1.. run return 0

execute as @a at @s run playsound ui.button.click master @s ~ ~ ~ 1 1.2
function util/blank
tellraw @s ["",{text:"  [ 보석 연성 ]",color:"green",bold:true,shadow_color:-16777216},{text:"\n\n  돌의 구조를 재배열해 보석의 씨앗을 만듭니다.",color:"gray",bold:false},{text:"\n  필요 자원: 돌 2,000개",color:"gray"},{text:"\n  남은 쿨타임: ",color:"gray"},{score:{name:"#alchemy_gem_cooldown",objective:"var"},color:"yellow"},{text:"틱",color:"gray"},{text:"\n\n  "},{text:"[ 에메랄드 연성 ]",color:"green",bold:true,hover_event:{action:"show_text",value:{text:"돌 2,000개 → 에메랄드 1개",color:"gray"}},click_event:{action:"run_command",command:"/trigger shop_trigger set 1531"}},{text:"  "},{text:"[ 청금석 연성 ]",color:"blue",bold:true,hover_event:{action:"show_text",value:{text:"돌 2,000개 → 청금석 1개",color:"gray"}},click_event:{action:"run_command",command:"/trigger shop_trigger set 1532"}},{text:"\n"}]
