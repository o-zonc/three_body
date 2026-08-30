execute if score #overworld civilization_age matches 8.. run return 0
scoreboard players set #overworld civilization_age 8
advancement grant @a[advancements={0_overworld/17_contemporary_age=false}] only 0_overworld/17_contemporary_age

# 현대 진입 보상: 투자자의 투자금 - 시리즈 A 1개
function item/give/investment_series_a

function resource/advancement_reward/copper/enable
function resource/advancement_reward/iron/enable
