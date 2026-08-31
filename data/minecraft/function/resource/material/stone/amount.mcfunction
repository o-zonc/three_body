execute store result score #stone_amount tmp run function resource/production/amount {id:"stone"}
execute if score #stone_advancement_reward var matches 1 unless score #overworld_advancement_reward_disabled var matches 1 run scoreboard players set #advancement_reward_multiplier tmp 2
execute if score #stone_advancement_reward var matches 1 unless score #overworld_advancement_reward_disabled var matches 1 run scoreboard players operation #stone_amount tmp *= #advancement_reward_multiplier tmp
function dawn/amplifier/apply {score:"#stone_amount",dim:"overworld",final:100}

# 돌 재생 업그레이드의 마지막 두 단계는 다른 모든 수급량 증가 계산이 끝난 뒤 적용한다.
scoreboard players set #stone_special_numerator tmp 10
execute if score #stone_regen_lvl upgrade matches 4 run scoreboard players set #stone_special_numerator tmp 17
execute if score #stone_regen_lvl upgrade matches 5.. run scoreboard players set #stone_special_numerator tmp 30
scoreboard players operation #stone_amount tmp *= #stone_special_numerator tmp
scoreboard players set #stone_special_divisor tmp 10
scoreboard players operation #stone_amount tmp /= #stone_special_divisor tmp
return run scoreboard players get #stone_amount tmp
