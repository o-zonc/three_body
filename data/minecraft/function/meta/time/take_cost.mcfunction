execute unless score #cost_time cost matches 1.. run return 0
function meta/sync

# 소지한 시간을 먼저 사용하고, 부족분만 자동 인출이 해금된 보관소에서 차감한다.
scoreboard players operation #meta_take_remaining tmp = #cost_time cost
scoreboard players operation #meta_take_wallet tmp = #time_wallet tmp
execute if score #meta_take_wallet tmp > #meta_take_remaining tmp run scoreboard players operation #meta_take_wallet tmp = #meta_take_remaining tmp

execute if score #meta_take_wallet tmp matches 1.. store result storage data tmp.meta.amount int 1 run scoreboard players get #meta_take_wallet tmp
execute if score #meta_take_wallet tmp matches 1.. run function meta/time/clear_item with storage data tmp.meta
scoreboard players operation #meta_take_remaining tmp -= #meta_take_wallet tmp

execute unless score #meta_take_remaining tmp matches 1.. run function meta/sync
execute unless score #meta_take_remaining tmp matches 1.. run return 1

# resource/check_cost가 보호 하한선(250)을 포함해 검증했으므로 부족분만 직접 차감한다.
execute unless score #time_auto_withdraw meta matches 1 run return 0
scoreboard players operation #time_bank meta -= #meta_take_remaining tmp
function meta/sync
return 1
