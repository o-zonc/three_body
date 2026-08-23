# 여명 차원 리액터 제작대
function meta/sync

execute if score #GLOBAL dawn_reactor_purchased matches 1.. run title @s actionbar {text:"이미 리액터를 제작했습니다.",color:"#F971BE",italic:true,bold:false}
execute if score #GLOBAL dawn_reactor_purchased matches 1.. run return 0

function util/blank
tellraw @s ["",{text:"  [ 리액터 제작대 ]",color:"#F971BE",bold:true},{text:"\n\n  정보와 시간을 반응시켜 시공간의 균열을 만들어 내는 장치입니다.",color:"gray"},{text:"\n  제작 순간, 현재 인벤토리에 소지한 정보와 시간의 §a2배§7를 추가로 획득합니다.",color:"gray"},{text:"\n\n  제작 재료: §d정보 32조각§7, §3시간 8조각"},{text:"\n\n  "},{text:"[ 리액터 제작 ]",color:"aqua",bold:true,hover_event:{action:"show_text",value:{text:"정보와 시간이 반응하면서 시공간의 균열이 발생합니다.",color:"gray"}},click_event:{action:"run_command",command:"/trigger shop_trigger set 1830"}},{text:"\n"}]
