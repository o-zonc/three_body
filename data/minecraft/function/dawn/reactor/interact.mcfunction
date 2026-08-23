# 여명 차원 리액터 제작대
execute unless score #GLOBAL current_dim matches 4 run return 0
function meta/sync

execute if score #GLOBAL dawn_reactor_purchased matches 1.. run title @s actionbar {text:"이미 리액터를 제작했습니다.",color:"#F971BE",italic:true,bold:false}
execute if score #GLOBAL dawn_reactor_purchased matches 1.. run return 0

function util/blank
tellraw @s ["",{text:"  [ 리액터 제작대 ]",color:"#F971BE",bold:true},{text:"\n\n  정보와 시간을 반응시켜 시공간의 균열을 만들어 내는 장치입니다.",color:"gray"},{text:"\n\n  제작 비용: ",color:"gray"},{text:"정보 ",color:"light_purple"},{score:{name:"#information_wallet",objective:"tmp"},color:"light_purple"},{text:"조각",color:"light_purple"},{text:", ",color:"gray"},{text:"시간 ",color:"dark_aqua"},{score:{name:"#time_wallet",objective:"tmp"},color:"dark_aqua"},{text:"조각",color:"dark_aqua"},{text:"\n\n  "},{text:"[ 리액터 제작 ]",color:"aqua",bold:true,hover_event:{action:"show_text",value:{text:"현재 소지한 정보와 시간을 반응시킵니다.",color:"gray"}},click_event:{action:"run_command",command:"/trigger shop_trigger set 1830"}},{text:"\n"}]
