# 공허의 구멍 UI
# 우는 흑요석 비밀 금고가 열린 뒤 접근 가능한 극야 전용 후반 상호작용입니다.
execute unless score #GLOBAL current_dim matches 3 run return 0
execute unless score #GLOBAL reckoning_ready matches 1.. run title @s actionbar {text:"문명 정산이 끝나 공허의 구멍이 닫혔습니다.",color:"dark_gray",italic:true}
execute unless score #GLOBAL reckoning_ready matches 1.. run return 0

execute unless score #hole_level upgrade matches 0.. run scoreboard players set #hole_level upgrade 0
execute unless score #hole_claims var matches 0.. run scoreboard players set #hole_claims var 0
function meta/sync

scoreboard players operation #hole_level_tmp tmp = #hole_level upgrade
scoreboard players operation #hole_max_claims tmp = #hole_level upgrade
scoreboard players add #hole_max_claims tmp 1

# 다음 수급 비용
scoreboard players set #hole_info_cost tmp 0
scoreboard players set #hole_time_cost tmp 0
execute if score #hole_claims var matches 0 run scoreboard players set #hole_info_cost tmp 2
execute if score #hole_claims var matches 0 run scoreboard players set #hole_time_cost tmp 1
execute if score #hole_claims var matches 1 run scoreboard players set #hole_info_cost tmp 8
execute if score #hole_claims var matches 1 run scoreboard players set #hole_time_cost tmp 2
execute if score #hole_claims var matches 2 run scoreboard players set #hole_info_cost tmp 64
execute if score #hole_claims var matches 2 run scoreboard players set #hole_time_cost tmp 4

# 업그레이드 비용: 기존 세계의 눈 장치의 16 -> 256 성장 폭과 맞춥니다.
scoreboard players set #hole_upgrade_cost tmp 0
execute if score #hole_level upgrade matches 0 run scoreboard players set #hole_upgrade_cost tmp 16
execute if score #hole_level upgrade matches 1 run scoreboard players set #hole_upgrade_cost tmp 256

# 버튼 준비
data modify storage data tmp.hole.claim_button set value {text:"§8[ 이번 문명 수급 완료 ]"}
data modify storage data tmp.hole.upgrade_button set value {text:"§8[ 최대 단계 ]"}
execute if score #hole_claims var < #hole_max_claims tmp run data modify storage data tmp.hole.claim_button set value {text:"[ 흑요석 수급 ]",color:"dark_purple",bold:true,hover_event:{action:"show_text",value:["",{text:"정보 ",color:"light_purple"},{score:{name:"#hole_info_cost",objective:"tmp"},color:"white"},{text:"조각, ",color:"gray"},{text:"시간 ",color:"dark_aqua"},{score:{name:"#hole_time_cost",objective:"tmp"},color:"white"},{text:"조각을 소모합니다.",color:"gray"}]},click_event:{action:"run_command",command:"/trigger shop_trigger set 2111"}}
execute if score #hole_level upgrade matches 0..1 run data modify storage data tmp.hole.upgrade_button set value {text:"[ 균열 확장 ]",color:"dark_green",bold:true,hover_event:{action:"show_text",value:["",{text:"세계의 눈 ",color:"dark_green"},{score:{name:"#hole_upgrade_cost",objective:"tmp"},color:"white"},{text:"개를 소모해 이번 문명의 수급 가능 횟수를 1회 늘립니다.",color:"gray"}]},click_event:{action:"run_command",command:"/trigger shop_trigger set 2112"}}

execute at @s run playsound minecraft:block.respawn_anchor.ambient master @s ~ ~ ~ 0.35 0.7
function util/blank
tellraw @s ["",{text:"  [ 공허의 구멍 ]",color:"dark_purple",bold:true},{text:"\n\n  틈 너머에서 이 세계에 존재하지 않는 물질이 응답합니다.",color:"gray"},{text:"\n  균열 단계: ",color:"gray"},{score:{name:"#hole_level_tmp",objective:"tmp"},color:"white"},{text:" / 2",color:"gray"},{text:"\n  이번 문명 수급: ",color:"gray"},{score:{name:"#hole_claims",objective:"var"},color:"white"},{text:" / ",color:"gray"},{score:{name:"#hole_max_claims",objective:"tmp"},color:"white"},{text:"\n  보유 흑요석: ",color:"gray"},{score:{name:"#obsidian_wallet",objective:"tmp"},color:"black",shadow_color:-8388480},{text:"개",color:"gray"},{text:"\n\n  "},{storage:"data",nbt:"tmp.hole.claim_button",interpret:true},{text:"   "},{storage:"data",nbt:"tmp.hole.upgrade_button",interpret:true},{text:"\n"}]
