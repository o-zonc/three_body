execute at @s run playsound ui.button.click weather @s ~ ~ ~ 1 1.8
function util/blank

# 극야에서만 사용할 수 있다.
execute unless score #GLOBAL current_dim matches 3 run tellraw @s ["",{text:"  [ 문명 정산대 ]",color:"dark_aqua",bold:true},{text:"\n\n  극야 차원에서만 사용할 수 있습니다.",color:"red"},{text:"\n"}]
execute unless score #GLOBAL current_dim matches 3 run return 0

# 이전 정산은 여명 리액터에서 복원을 확정해야 완료된다.
execute if score #GLOBAL reckoning_pending matches 1.. run tellraw @s ["",{text:"  [ 문명 정산대 ]",color:"dark_aqua",bold:true},{text:"\n\n  이전 문명의 정산 복원이 아직 완료되지 않았습니다.",color:"red"},{text:"\n  여명 차원의 리액터를 제작해 복원을 확정해야 합니다.",color:"gray"},{text:"\n"}]
execute if score #GLOBAL reckoning_pending matches 1.. run return 0

# 한 문명에서 정산은 한 번만 가능하다.
execute unless score #GLOBAL reckoning_ready matches 1.. run tellraw @s ["",{text:"  [ 문명 정산대 ]",color:"dark_aqua",bold:true},{text:"\n\n  이번 문명의 정산은 이미 완료되었습니다.",color:"gray"},{text:"\n  지급된 ",color:"dark_gray"},{text:"깨달음",color:"#9EF971"},{text:"을 손에 들고 웅크리면 여명으로 나아갈 수 있습니다.",color:"dark_gray"},{text:"\n"}]
execute unless score #GLOBAL reckoning_ready matches 1.. run return 0

# 현재 보관소 효과와 문명 달성도를 반영해 정산 정보를 구성한다.
function polarnight/interaction/reckoning_reset_tooltip
function polarnight/interaction/reckoning_reward_tooltip
function reckoning/calculate_reward

# 정산 전 현재 보관소 상태와 결과를 안내한다.
tellraw @s ["",{text:"  "},{text:"[ 문명 정산대 ]",color:"dark_aqua",bold:true},{text:"\n\n  지금까지의 문명을 정산하고 다음 순환을 준비합니다.",color:"gray"},{text:"\n\n  • 정보 보관소: ",color:"gray",bold:false},{score:{name:"#information_bank",objective:"meta"},color:"light_purple"},{text:"조각",color:"gray"},{text:"\n  • 시간 보관소: ",color:"gray"},{score:{name:"#time_bank",objective:"meta"},color:"dark_aqua"},{text:"조각",color:"gray"},{text:"\n\n  "},{text:"[ 정산 보상 ]",color:"aqua",bold:true,hover_event:{action:"show_text",value:[{text:"정보",color:"light_purple"},{text:" | 시설·기술 발전과 남은 일반 자원에 따라 증가합니다.\n",color:"gray"},{text:"시간",color:"dark_aqua"},{text:" | 도달한 시대와 남은 특수 자원에 따라 증가합니다.",color:"gray"}]}},{text:"\n  • 이번 정산에서 얻을 보상: ",color:"gray",bold:false},{text:"정보 ",color:"light_purple",hover_event:{action:"show_text",value:{storage:"data",nbt:"tmp.reckoning_information_tooltip",interpret:true}}},{score:{name:"#reckoning_information_reward",objective:"tmp"},color:"light_purple"},{text:"조각",color:"light_purple"},{text:" · ",color:"dark_gray"},{text:"시간 ",color:"dark_aqua",hover_event:{action:"show_text",value:{storage:"data",nbt:"tmp.reckoning_time_tooltip",interpret:true}}},{score:{name:"#reckoning_time_reward",objective:"tmp"},color:"dark_aqua"},{text:"조각",color:"dark_aqua"},{text:" · ",color:"dark_gray"},{text:"깨달음",color:"#9EF971"},{text:"\n\n  "},{text:"[ 초기화되는 항목 ]",color:"red",hover_event:{action:"show_text",value:{storage:"data",nbt:"tmp.reckoning_reset_tooltip",interpret:true}}, bold:true},{text:"\n  • 자원 보유량",color:"gray",bold:false},{text:"\n  발전과제 보상, 정보·시간 보관소, 영구 보존 대상은 유지됩니다.",color:"green",bold:false},{text:"\n\n  "},{text:"[ 문명 정산 ]",color:"aqua",bold:true,hover_event:{action:"show_text",value:[{text:"문명의 현재 진행도를 정산합니다.\n이 작업은 이번 극야 진입에서 ",color:"gray"},{text:"한 번만 ",color:"red"},{text:"실행할 수 있습니다.",color:"gray"}]},click_event:{action:"run_command",command:"/trigger shop_trigger set 2101"}},{text:"\n"}]
