# 깨달음 소비 보너스: 정보와 시간 추가 상점을 해금합니다.
# 문명 리액터는 별도의 dawn+reactor 제작대에서 제작합니다.
scoreboard players set #GLOBAL dawn_information_shop 1
scoreboard players set #GLOBAL dawn_time_shop 1
function util/blank
tellraw @s ["",{text:"  [ 여명 상점 해금 ]",color:"#9EF971",bold:true},{text:"\n\n  깨달음으로 정보·시간 추가 상점이 활성화되었습니다.",color:"gray"},{text:"\n  문명 리액터는 여명의 리액터 제작대에서 제작할 수 있습니다.",color:"#F971BE"},{text:"\n"}]
