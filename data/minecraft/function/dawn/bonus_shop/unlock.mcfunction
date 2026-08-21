# 깨달음 소비 보너스: 추가 상점과 리액터 구매를 해금한다.
scoreboard players set #GLOBAL dawn_information_shop 1
scoreboard players set #GLOBAL dawn_time_shop 1
function util/blank
tellraw @s ["",{text:"  [ 여명 상점 해금 ]",color:"#9EF971",bold:true},{text:"\n\n  깨달음으로 정보·시간 추가 상점이 활성화되었습니다.",color:"gray"},{text:"\n  정산대에서 문명 리액터를 구매할 수 있습니다.",color:"#F971BE"},{text:"\n"}]
function dawn/bonus_shop/ui
