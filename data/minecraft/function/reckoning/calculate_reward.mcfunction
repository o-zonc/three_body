# 현재 문명의 달성도를 기준으로 이번 정산 보상을 계산한다.
# 정보: 기본 2 + 주요 시설/기술 달성 보너스
scoreboard players set #reckoning_information_reward tmp 2
execute if score #observatory unlock matches 1.. run scoreboard players add #reckoning_information_reward tmp 1
execute if score #alchemy_workshop unlock matches 1.. run scoreboard players add #reckoning_information_reward tmp 1
execute if score #GLOBAL factory_build_stage matches 1.. run scoreboard players add #reckoning_information_reward tmp 2
execute if score #GLOBAL factory_build_stage matches 2.. run scoreboard players add #reckoning_information_reward tmp 2
execute if score #GLOBAL factory_build_stage matches 3.. run scoreboard players add #reckoning_information_reward tmp 3

# 시간: 기본 1 + 도달한 문명 시대마다 1
scoreboard players set #reckoning_time_reward tmp 1
execute if score #overworld civilization_age matches 5.. run scoreboard players add #reckoning_time_reward tmp 1
execute if score #overworld civilization_age matches 6.. run scoreboard players add #reckoning_time_reward tmp 1
execute if score #overworld civilization_age matches 7.. run scoreboard players add #reckoning_time_reward tmp 1
execute if score #overworld civilization_age matches 8.. run scoreboard players add #reckoning_time_reward tmp 1
