# 리액터가 직접 지급한 정보/시간 중 현재 휴대 한도를 넘은 양을 보관소로 옮긴다.
function shop/third/update_capacities
function meta/sync

scoreboard players operation #reactor_information_deposit tmp = #information_wallet tmp
scoreboard players operation #reactor_information_deposit tmp -= #information_capacity meta
execute if score #reactor_information_deposit tmp matches ..0 run scoreboard players set #reactor_information_deposit tmp 0
execute if score #reactor_information_deposit tmp matches 1.. store result storage data tmp.reactor_information_overflow.amount int 1 run scoreboard players get #reactor_information_deposit tmp
execute if score #reactor_information_deposit tmp matches 1.. run function meta/information/clear_item with storage data tmp.reactor_information_overflow
execute if score #reactor_information_deposit tmp matches 1.. run scoreboard players operation #information_bank meta += #reactor_information_deposit tmp
execute if score #information_bank meta matches 1000.. run scoreboard players set #information_bank_unlocked meta 1
execute unless score #information_bank_unlocked meta matches 1.. if score #information_bank meta matches 1001.. run scoreboard players set #information_bank meta 1000

scoreboard players operation #reactor_time_deposit tmp = #time_wallet tmp
scoreboard players operation #reactor_time_deposit tmp -= #time_capacity meta
execute if score #reactor_time_deposit tmp matches ..0 run scoreboard players set #reactor_time_deposit tmp 0
execute if score #reactor_time_deposit tmp matches 1.. store result storage data tmp.reactor_time_overflow.amount int 1 run scoreboard players get #reactor_time_deposit tmp
execute if score #reactor_time_deposit tmp matches 1.. run function meta/time/clear_item with storage data tmp.reactor_time_overflow
execute if score #reactor_time_deposit tmp matches 1.. run scoreboard players operation #time_bank meta += #reactor_time_deposit tmp
execute if score #time_bank meta matches 500.. run scoreboard players set #time_bank_unlocked meta 1
execute unless score #time_bank_unlocked meta matches 1.. if score #time_bank meta matches 501.. run scoreboard players set #time_bank meta 500

function meta/sync
