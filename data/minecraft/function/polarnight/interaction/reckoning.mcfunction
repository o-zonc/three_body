execute at @s run playsound ui.button.click weather @s ~ ~ ~ 1 1.8
function util/blank

# 극야에서만 사용할 수 있다.
execute unless score #GLOBAL current_dim matches 3 run tellraw @s ["",{text:"  [ 문명 정산대 ]",color:"dark_aqua",bold:true},{text:"\n\n  극야 차원에서만 사용할 수 있습니다.",color:"red"},{text:"\n"}]
execute unless score #GLOBAL current_dim matches 3 run return 0

# 한 문명에서 정산은 한 번만 가능하다.
execute unless score #GLOBAL reckoning_ready matches 1.. run tellraw @s ["",{text:"  [ 문명 정산대 ]",color:"dark_aqua",bold:true},{text:"\n\n  이번 문명의 정산은 이미 완료되었습니다.",color:"gray"},{text:"\n  지급된 ",color:"dark_gray"},{text:"깨달음",color:"#9EF971"},{text:"을 손에 들고 웅크리면 여명으로 나아갈 수 있습니다.",color:"dark_gray"},{text:"\n"}]
execute unless score #GLOBAL reckoning_ready matches 1.. run return 0

# 정산 전 현재 보관소 상태와 결과를 안내한다.
tellraw @s ["",{text:"  [ 문명 정산대 ]",color:"dark_aqua",bold:true},{text:"\n\n  지금까지의 문명을 정산하고 다음 순환을 준비합니다.",color:"gray"},{text:"\n\n  §8•§7 정보 보관소: ",bold:false},{score:{name:"#information_bank",objective:"meta"},color:"light_purple"},{text:"§7조각"},{text:"\n  §8•§7 시간 보관소: ",bold:false},{score:{name:"#time_bank",objective:"meta"},color:"dark_aqua"},{text:"§7조각"},{text:"\n\n  [ 정산 보상 ]",color:"aqua",bold:true},{text:"\n  정보 8조각",color:"light_purple",bold:false},{text:" · ",color:"dark_gray"},{text:"시간 2조각",color:"dark_aqua"},{text:" · ",color:"dark_gray"},{text:"깨달음",color:"#9EF971"},{text:"\n\n  일반 자원·시설·문명별 업그레이드와 장치 상태는 초기화됩니다.",color:"gray"},{text:"\n  달성한 발전과제·발전과제 보상, 정보·시간 보관소, 영구 보존 대상은 유지됩니다.",color:"green"},{text:"\n  보관소 임계치에 따라 이전 문명의 시설과 진행 단계가 복원됩니다.",color:"dark_gray"},{text:"\n\n  "},{text:"[ 문명 정산 ]",color:"aqua",bold:true,hover_event:{action:"show_text",value:{text:"문명의 현재 진행도를 정산합니다.\n이 작업은 이번 극야 진입에서 한 번만 실행할 수 있습니다.",color:"gray"}},click_event:{action:"run_command",command:"/trigger shop_trigger set 2101"}},{text:"\n"}]
