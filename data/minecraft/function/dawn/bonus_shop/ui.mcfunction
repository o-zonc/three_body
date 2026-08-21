function meta/sync
function util/blank
execute if score #GLOBAL dawn_reactor_purchased matches 1.. run tellraw @s ["",{text:"  [ 여명 추가 상점 ]",color:"#9EF971",bold:true},{text:"\n\n  문명 리액터: 구매 완료",color:"green"},{text:"\n"}]
execute if score #GLOBAL dawn_reactor_purchased matches 1.. run return 0
tellraw @s ["",{text:"  [ 여명 추가 상점 ]",color:"#9EF971",bold:true},{text:"\n\n  깨달음이 정보와 시간의 새로운 거래를 열었습니다.",color:"gray"},{text:"\n  문명 리액터",color:"#F971BE",bold:true},{text:" — 정보 32조각, 시간 8조각",color:"gray"},{text:"\n\n  "},{text:"[ 구매 ]",color:"aqua",bold:true,hover_event:{action:"show_text",value:{text:"정보 32조각, 시간 8조각"}},click_event:{action:"run_command",command:"/trigger shop_trigger set 1830"}},{text:"\n"}]
