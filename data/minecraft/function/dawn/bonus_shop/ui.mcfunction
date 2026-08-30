execute at @s run playsound ui.button.click weather @s ~ ~ ~ 1 2
function meta/sync
function util/blank
tellraw @s ["",{text:"  [ 여명 추가 상점 ]",color:"#9EF971",bold:true},{text:"\n\n  깨달음이 정보와 시간의 새로운 거래를 열었습니다.",color:"gray"},{text:"\n  문명 리액터는 별도의 §d[ 리액터 제작대 ]§7에서 제작할 수 있습니다."},{text:"\n"}]
