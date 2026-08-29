# 극야 진입당 정확히 한 번만 실행한다.
execute unless score #GLOBAL current_dim matches 3 run return 0
execute unless score #GLOBAL reckoning_ready matches 1.. run return 0
execute if score #GLOBAL reckoning_pending matches 1.. run return 0
scoreboard players set #GLOBAL reckoning_ready 0

# 초기화 전에 현재 문명의 달성도를 기준으로 보상을 확정한다.
function reckoning/calculate_reward
scoreboard players operation #GLOBAL reckoning_count = #reckoning_next_count tmp

# 흑요석은 인벤토리형 메타 자원이므로 clear @a 전에 소지량을 따로 보존한다.
function meta/sync
scoreboard players operation #reckoning_obsidian tmp = #obsidian_wallet tmp

function reckoning/vault/snapshot
function factory/vault_snapshot

# 플레이어가 극야에 있어도 메마른 시설 철거가 실행되도록 시설 구역만 임시 로드합니다.
execute in minecraft:dried run forceload add -32 -32 31 31
function reckoning/reset_progress
# 구조물 갱신으로 생긴 엔티티를 다음 틱에 다시 정리한 뒤 임시 로드를 해제합니다.
schedule function reckoning/finish_dried_cleanup 1t replace
scoreboard players set #GLOBAL reckoning_pending 1

# 정산 초기화로 지워진 흑요석을 그대로 복원한다.
execute store result storage data tmp.reckoning_obsidian.amount int 1 run scoreboard players get #reckoning_obsidian tmp
execute if score #reckoning_obsidian tmp matches 1.. run function meta/obsidian/give_item with storage data tmp.reckoning_obsidian
function meta/sync

scoreboard players operation #material_add_value tmp = #reckoning_information_reward tmp
function meta/information/give
scoreboard players operation #material_add_value tmp = #reckoning_time_reward tmp
function meta/time/give
function item/give/epiphany
advancement grant @a only 3_polarnight/01_enlightenment

playsound entity.player.levelup master @s ~ ~ ~ 1 0.7
function util/blank
tellraw @s ["",{text:"  [ 문명 정산 ]",color:"aqua",bold:true},{text:"\n\n  정보 ",color:"light_purple"},{score:{name:"#reckoning_information_reward",objective:"tmp"},color:"light_purple"},{text:"조각",color:"light_purple"},{text:"과 ",color:"gray"},{text:"시간 ",color:"dark_aqua"},{score:{name:"#reckoning_time_reward",objective:"tmp"},color:"dark_aqua"},{text:"조각",color:"dark_aqua"},{text:"을 정산했습니다.",color:"gray"},{text:"\n  깨달음을 얻었습니다.",color:"#9EF971"},{text:"\n\n  보관소에 기록된 시설과 발전 단계는 리액터 작동 직후 복원됩니다.",color:"dark_gray"},{text:"\n"}]
return 1
