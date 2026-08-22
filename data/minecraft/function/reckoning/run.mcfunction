# 극야 진입당 정확히 한 번만 실행한다.
execute unless score #GLOBAL current_dim matches 3 run return 0
execute unless score #GLOBAL reckoning_ready matches 1.. run return 0
scoreboard players set #GLOBAL reckoning_ready 0

# 초기화 전에 현재 문명의 달성도를 기준으로 보상을 확정한다.
function reckoning/calculate_reward

function reckoning/vault/snapshot
function factory/vault_snapshot
function reckoning/reset_progress
function reckoning/vault/restore
function factory/vault_restore

scoreboard players operation #material_add_value tmp = #reckoning_information_reward tmp
function meta/information/give
scoreboard players operation #material_add_value tmp = #reckoning_time_reward tmp
function meta/time/give
function item/give/epiphany
advancement grant @a only 3_polarnight/01_enlightenment

playsound entity.player.levelup master @s ~ ~ ~ 1 0.7
function util/blank
tellraw @s ["",{text:"  [ 문명 정산 ]",color:"aqua",bold:true},{text:"\n\n  정보 ",color:"light_purple"},{score:{name:"#reckoning_information_reward",objective:"tmp"},color:"light_purple"},{text:"조각",color:"light_purple"},{text:"과 ",color:"gray"},{text:"시간 ",color:"dark_aqua"},{score:{name:"#reckoning_time_reward",objective:"tmp"},color:"dark_aqua"},{text:"조각",color:"dark_aqua"},{text:"을 정산했습니다.",color:"gray"},{text:"\n  깨달음을 얻었습니다.",color:"#9EF971"},{text:"\n\n  보관소 임계치에 따라 이전 문명의 시설과 발전 단계가 복원되었습니다.",color:"dark_gray"},{text:"\n"}]
return 1
