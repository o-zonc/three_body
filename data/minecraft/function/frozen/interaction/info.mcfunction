execute at @s run playsound ui.button.click weather @s ~ ~ ~ 1 2
execute store result score #frozen_cold_amount tmp run function resource/material/cold/amount
function util/blank

execute if score #GLOBAL era_paused matches 1 run tellraw @s ["",{text:"  [ 얼어붙은 세계 ]",color:"aqua",bold:true,shadow_color:-16777216},{"text":"\n\n  얼어붙은 세계에 오신 것을 환영합니다."},{"text":"\n\n  이곳은 극도로 불안정한 곳입니다.\n  일반 자원 §b다이아몬드§r와 특수 자원 §b냉기§r를 획득 가능합니다."},{text:"\n\n  §8•§7 냉기 수급량: ",bold:false},{score:{name:"#frozen_cold_amount",objective:"tmp"},color:"aqua"},{text:"§7개 / 지급"},{text:" §c(시간 정지로 생산 중단)",italic:true},{text:"\n"}]
execute unless score #GLOBAL era_paused matches 1 run tellraw @s ["",{text:"  [ 얼어붙은 세계 ]",color:"aqua",bold:true,shadow_color:-16777216},{"text":"\n\n  얼어붙은 세계에 오신 것을 환영합니다."},{"text":"\n\n  이곳은 극도로 불안정한 곳입니다.\n  일반 자원 §b다이아몬드§r와 특수 자원 §b냉기§r를 획득 가능합니다."},{text:"\n\n  §8•§7 냉기 수급량: ",bold:false},{score:{name:"#frozen_cold_amount",objective:"tmp"},color:"aqua"},{text:"§7개 / 지급"},{text:"\n"}]

execute if score #frozen_shop unlock matches 1.. run tellraw @s ["",{text:"  ✔ 상점 해금",color:"green"},{text:"\n\n  뒤편의 얼어붙은 상점에서 새로운 시설을 개방할 수 있습니다.",color:"gray"},{text:"\n"}]
execute if score #frozen_shop unlock matches 1.. run return 0
data modify storage data tmp.cost set value [{type:"diamond",amount:1},{type:"cold",amount:1}]
function resource/convert_cost_to_text_named {id:"frozen_shop",insertion:", "}
tellraw @s ["",{text:"  "},{text:"[ 상점 해금 ]",color:"aqua",bold:true,hover_event:{action:"show_text",value:["",{text:"§6[§7 필요한 재료 §6]\n"},{storage:"data",nbt:"tmp.cost_text.frozen_shop.text",interpret:true}]},click_event:{action:"run_command",command:"/trigger shop_trigger set 1901"}},{text:"\n"}]
