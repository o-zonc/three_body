# 인벤토리에 직접 유입된 메타 자원도 현재 소지 한도를 넘길 수 없게 한다.
# 초과분은 지급 API와 동일하게 보관소로 이관하며, 보관 가능한 양까지만 남긴다.

# 정보 초과분을 보관소로 이관
scoreboard players operation #meta_wallet_overflow tmp = #information_wallet tmp
scoreboard players operation #meta_wallet_overflow tmp -= #information_capacity meta
execute if score #meta_wallet_overflow tmp matches ..0 run scoreboard players set #meta_wallet_overflow tmp 0
execute if score #meta_wallet_overflow tmp matches 1.. store result storage data tmp.meta.amount int 1 run scoreboard players get #meta_wallet_overflow tmp
execute if score #meta_wallet_overflow tmp matches 1.. run function meta/information/clear_item with storage data tmp.meta
execute if score #meta_wallet_overflow tmp matches 1.. run scoreboard players operation #information_bank meta += #meta_wallet_overflow tmp
execute if score #information_bank meta matches 2000.. run scoreboard players set #information_bank_unlocked meta 1
execute unless score #information_bank_unlocked meta matches 1.. if score #information_bank meta matches 2001.. run scoreboard players set #information_bank meta 2000

# 시간 초과분을 보관소로 이관
scoreboard players operation #meta_wallet_overflow tmp = #time_wallet tmp
scoreboard players operation #meta_wallet_overflow tmp -= #time_capacity meta
execute if score #meta_wallet_overflow tmp matches ..0 run scoreboard players set #meta_wallet_overflow tmp 0
execute if score #meta_wallet_overflow tmp matches 1.. store result storage data tmp.meta.amount int 1 run scoreboard players get #meta_wallet_overflow tmp
execute if score #meta_wallet_overflow tmp matches 1.. run function meta/time/clear_item with storage data tmp.meta
execute if score #meta_wallet_overflow tmp matches 1.. run scoreboard players operation #time_bank meta += #meta_wallet_overflow tmp
execute if score #time_bank meta matches 1000.. run scoreboard players set #time_bank_unlocked meta 1
execute unless score #time_bank_unlocked meta matches 1.. if score #time_bank meta matches 1001.. run scoreboard players set #time_bank meta 1000
