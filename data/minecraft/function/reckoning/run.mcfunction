# 극야 진입당 정확히 한 번만 실행한다.
execute unless score #GLOBAL current_dim matches 3 run return 0
execute unless score #GLOBAL reckoning_ready matches 1.. run return 0
execute if score #GLOBAL reckoning_pending matches 1.. run return 0
scoreboard players set #GLOBAL reckoning_ready 0

# 초기화 전에 현재 문명의 달성도를 기준으로 보상을 확정한다.
function reckoning/calculate_reward
scoreboard players operation #GLOBAL reckoning_count = #reckoning_next_count tmp

# 인벤토리에 든 메타 자원은 clear @a 전에 소지량을 따로 보존한다.
# 보관소 원장은 reset_progress에서 건드리지 않으므로 여기서는 휴대량만 기록한다.
function meta/sync
scoreboard players operation #reckoning_information tmp = #information_wallet tmp
scoreboard players operation #reckoning_time tmp = #time_wallet tmp
scoreboard players operation #reckoning_obsidian tmp = #obsidian_wallet tmp

function reckoning/snapshot_materials
function reckoning/vault/snapshot
function factory/vault_snapshot

# 메마른 시설 구역은 상시 로드되어 있으므로 즉시 정산 상태를 적용합니다.
function reckoning/reset_progress
# 구조물 갱신으로 생긴 엔티티를 다음 틱에 다시 정리합니다.
schedule function reckoning/finish_dried_cleanup 1t replace
scoreboard players set #GLOBAL reckoning_pending 1

# 정산 초기화로 지워진 기존 메타 자원 휴대량을 먼저 복원한다.
# 이후 정산 보상은 기존 소지량 위에 누적되고, 한도를 넘는 양은 보관소로 들어간다.
scoreboard players operation #material_add_value tmp = #reckoning_information tmp
function meta/information/give
scoreboard players operation #material_add_value tmp = #reckoning_time tmp
function meta/time/give

execute store result storage data tmp.reckoning_obsidian.amount int 1 run scoreboard players get #reckoning_obsidian tmp
execute if score #reckoning_obsidian tmp matches 1.. run function meta/obsidian/give_item with storage data tmp.reckoning_obsidian
function meta/sync

scoreboard players operation #material_add_value tmp = #reckoning_information_reward tmp
function meta/information/give
scoreboard players operation #reckoning_information_to_wallet tmp = #meta_to_wallet tmp
scoreboard players operation #reckoning_information_to_bank tmp = #meta_bank_added tmp
scoreboard players operation #material_add_value tmp = #reckoning_time_reward tmp
function meta/time/give
scoreboard players operation #reckoning_time_to_wallet tmp = #meta_to_wallet tmp
scoreboard players operation #reckoning_time_to_bank tmp = #meta_bank_added tmp
function item/give/epiphany
# 첫 문명 정산 완료 시 깨달음 발전과제를 달성한다.
advancement grant @a only 3_polarnight/03_enlightenment
title @s actionbar [{"text":"정보 +","color":"light_purple"},{"score":{"name":"#reckoning_information_reward","objective":"tmp"},"color":"light_purple"},{"text":" (소지 +","color":"dark_gray"},{"score":{"name":"#reckoning_information_to_wallet","objective":"tmp"},"color":"light_purple"},{"text":" / 보관 +","color":"dark_gray"},{"score":{"name":"#reckoning_information_to_bank","objective":"tmp"},"color":"light_purple"},{"text":") | ","color":"dark_gray"},{"text":"시간 +","color":"dark_aqua"},{"score":{"name":"#reckoning_time_reward","objective":"tmp"},"color":"dark_aqua"},{"text":" (소지 +","color":"dark_gray"},{"score":{"name":"#reckoning_time_to_wallet","objective":"tmp"},"color":"dark_aqua"},{"text":" / 보관 +","color":"dark_gray"},{"score":{"name":"#reckoning_time_to_bank","objective":"tmp"},"color":"dark_aqua"},{"text":")","color":"dark_gray"}]

playsound entity.player.levelup master @s ~ ~ ~ 1 0.7
function util/blank
tellraw @s ["",{text:"  [ 문명 정산 ]",color:"aqua",bold:true},{text:"\n\n  정보 +",color:"light_purple"},{score:{name:"#reckoning_information_reward",objective:"tmp"},color:"light_purple"},{text:" (소지 +",color:"dark_gray"},{score:{name:"#reckoning_information_to_wallet",objective:"tmp"},color:"light_purple"},{text:" / 보관 +",color:"dark_gray"},{score:{name:"#reckoning_information_to_bank",objective:"tmp"},color:"light_purple"},{text:")",color:"dark_gray"},{text:"\n  시간 +",color:"dark_aqua"},{score:{name:"#reckoning_time_reward",objective:"tmp"},color:"dark_aqua"},{text:" (소지 +",color:"dark_gray"},{score:{name:"#reckoning_time_to_wallet",objective:"tmp"},color:"dark_aqua"},{text:" / 보관 +",color:"dark_gray"},{score:{name:"#reckoning_time_to_bank",objective:"tmp"},color:"dark_aqua"},{text:")",color:"dark_gray"},{text:"\n  깨달음을 얻었습니다.",color:"#9EF971"},{text:"\n\n  보관소에 기록된 시설과 발전 단계는 리액터 작동 직후 복원됩니다.",color:"dark_gray"},{text:"\n"}]
return 1
