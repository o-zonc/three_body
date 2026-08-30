execute unless score #alchemy_workshop unlock matches 1 run title @s actionbar {text:"연금술 공방을 먼저 해금해야 합니다.",color:"red",italic:true}
execute unless score #alchemy_workshop unlock matches 1 run return 0
execute unless score #level alchemy_workshop matches 1.. run title @s actionbar {text:"연금술 공방 Lv. 1이 필요합니다.",color:"red",italic:true}
execute unless score #level alchemy_workshop matches 1.. run return 0

execute at @s run playsound ui.button.click weather @s ~ ~ ~ 1 1.2
function util/blank
tellraw @s ["",{text:"  [ 금속 연성 ]",color:"gold",bold:true,shadow_color:-16777216},{text:"\n\n  청금석을 촉매로 철의 성질을 변환해 희귀 금속을 만듭니다.",color:"gray",bold:false},{text:"\n  필요 자원: 철 1,000개 + 청금석 50개",color:"gray"},{text:"\n  남은 쿨타임: ",color:"gray"},{score:{name:"#alchemy_metal_cooldown",objective:"var"},color:"yellow"},{text:"틱",color:"gray"},{text:"\n\n  "},{text:"[ 금 연성 ]",color:"gold",bold:true,hover_event:{action:"show_text",value:{text:"철 1,000개 + 청금석 50개 → 금 1개",color:"gray"}},click_event:{action:"run_command",command:"/trigger shop_trigger set 1533"}},{text:"  "},{text:"[ 다이아몬드 연성 ]",color:"aqua",bold:true,hover_event:{action:"show_text",value:{text:"철 1,000개 + 청금석 50개 → 다이아몬드 1개",color:"gray"}},click_event:{action:"run_command",command:"/trigger shop_trigger set 1534"}},{text:"\n"}]
