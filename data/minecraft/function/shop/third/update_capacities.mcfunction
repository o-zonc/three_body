# 3층 보관소 단계에 따른 휴대 한도. 보관소 상한은 정보 2000, 시간 1000 달성 시 영구 해제된다.
scoreboard players set #information_capacity meta 8
execute if score #information_storage_lvl upgrade matches 1 run scoreboard players set #information_capacity meta 16
execute if score #information_storage_lvl upgrade matches 2 run scoreboard players set #information_capacity meta 32
execute if score #information_storage_lvl upgrade matches 3.. run scoreboard players set #information_capacity meta 64
scoreboard players set #time_capacity meta 2
execute if score #time_storage_lvl upgrade matches 1 run scoreboard players set #time_capacity meta 4
execute if score #time_storage_lvl upgrade matches 2 run scoreboard players set #time_capacity meta 8
execute if score #time_storage_lvl upgrade matches 3.. run scoreboard players set #time_capacity meta 16
