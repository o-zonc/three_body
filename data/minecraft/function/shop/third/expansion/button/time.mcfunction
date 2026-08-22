# 시간 보관소 시공간 확장 버튼
# 툴팁은 기능의 핵심 규칙만 설명한다.
data modify storage data tmp.third_shop.expansion_line set value {text:"\n\n  ",extra:[{text:"[ 시공간 확장 ]",color:"gold",bold:true,hover_event:{action:"show_text",value:[{text:"정산 이전에 ",color:"gray"},{text:"한 번만 ",color:"red"},{text:"사용할 수 있습니다.",color:"gray"},{"text":"\n정보 2조각",color:"light_purple"},{text:"을 소비해 다른 메타 자원을 획득할 수 있습니다.",color:"gray"}]},click_event:{action:"run_command",command:"/trigger shop_trigger set 1828"}}]}
execute if score #spacetime_expansion_used var matches 1 run data modify storage data tmp.third_shop.expansion_line set value {text:"\n\n  ",extra:[{text:"[ 시공간 확장 완료 ]",color:"dark_gray",bold:true}]}
execute unless score #spacetime_expansion_used var matches 1 unless score #GLOBAL reckoning_ready matches 1.. run data modify storage data tmp.third_shop.expansion_line set value {text:"\n\n  ",extra:[{text:"[ 시공간 확장 종료 ]",color:"dark_gray",bold:true}]}
