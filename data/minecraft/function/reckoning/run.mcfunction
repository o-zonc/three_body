# 극야 진입당 정확히 한 번만 실행한다.
execute unless score #GLOBAL current_dim matches 3 run return 0
execute unless score #GLOBAL reckoning_ready matches 1.. run return 0
scoreboard players set #GLOBAL reckoning_ready 0

function reckoning/vault/snapshot
function reckoning/reset_progress
function reckoning/vault/restore

# 정산 기본 지급량. 밸런스 조정은 아래 두 상수만 변경한다.
scoreboard players set #material_add_value tmp 8
function meta/information/give
scoreboard players set #material_add_value tmp 2
function meta/time/give
function item/give/epiphany

playsound entity.player.levelup master @s ~ ~ ~ 1 0.7
function util/blank
tellraw @s ["",{text:"  [ 문명 정산 ]",color:"aqua",bold:true},{text:"\n\n  정보 8조각",color:"light_purple"},{text:"과 ",color:"gray"},{text:"시간 2조각",color:"dark_aqua"},{text:"을 정산했습니다.",color:"gray"},{text:"\n  깨달음을 얻었습니다.",color:"#9EF971"},{text:"\n\n  보관소 임계치에 따라 이전 문명의 시설과 발전 단계가 복원되었습니다.",color:"dark_gray"},{text:"\n"}]
return 1
