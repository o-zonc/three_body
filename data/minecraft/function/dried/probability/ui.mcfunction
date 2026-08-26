execute at @s run playsound ui.button.click weather @s ~ ~ ~ 1 2
function util/blank

tellraw @s ["",{text:"  [ 발굴 우선 탐색 설정 ]",color:"gold",bold:true,shadow_color:-7710208},{text:"\n\n  고대 문명 발굴 장치가 어느 세계의 물자를 우선적으로 탐색할지 설정합니다.\n  총 회수량은 변하지 않으며, 선택한 세계 계열 자원의 회수 확률만 증가합니다.",color:"gray"}]

execute if score #dried_relic_focus var matches 0 run tellraw @s ["",{text:"\n\n  현재 설정: ",color:"gray"},{text:"기본 확률",color:"white",bold:true}]
execute if score #dried_relic_focus var matches 1 run tellraw @s ["",{text:"\n\n  현재 설정: ",color:"gray"},{text:"오버월드 집중",color:"green",bold:true}]
execute if score #dried_relic_focus var matches 2 run tellraw @s ["",{text:"\n\n  현재 설정: ",color:"gray"},{text:"메마른 세계 집중",color:"gold",bold:true}]
execute if score #dried_relic_focus var matches 3 run tellraw @s ["",{text:"\n\n  현재 설정: ",color:"gray"},{text:"얼어붙은 세계 집중",color:"aqua",bold:true}]

tellraw @s ["",{text:"\n\n  "},{text:"[ 오버월드 집중 ]",color:"green",bold:true,hover_event:{action:"show_text",value:["",{text:"오버월드 계열 자원의 회수 확률을 90%로 조정합니다.",color:"gray"}]},click_event:{action:"run_command",command:"/trigger shop_trigger set 2004"}},{text:"\n  "},{text:"[ 메마른 세계 집중 ]",color:"gold",bold:true,hover_event:{action:"show_text",value:["",{text:"금 자원의 회수 확률을 60%로 조정합니다.",color:"gray"}]},click_event:{action:"run_command",command:"/trigger shop_trigger set 2005"}},{text:"\n  "},{text:"[ 얼어붙은 세계 집중 ]",color:"aqua",bold:true,hover_event:{action:"show_text",value:["",{text:"다이아몬드 자원의 회수 확률을 60%로 조정합니다.",color:"gray"}]},click_event:{action:"run_command",command:"/trigger shop_trigger set 2006"}},{text:"\n\n  "},{text:"[ 기본 확률로 복구 ]",color:"white",bold:true,hover_event:{action:"show_text",value:["",{text:"기존 발굴 확률로 되돌립니다.\n9종 자원이 각각 동일한 확률로 선택됩니다.",color:"gray"}]},click_event:{action:"run_command",command:"/trigger shop_trigger set 2007"}},{text:"\n"}]
