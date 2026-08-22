# Macro args: rate
# 입력: #lab_cooldown tmp = 기본 쿨타임
# rates.mcfunction에서 계산한 감소율을 적용해 최종 쿨타임을 반환합니다.
function shop/alchemy/lab/rates
$scoreboard players operation #lab_rate tmp = #alchemy_lab_$(rate)_rate tmp
scoreboard players operation #lab_reduction tmp = #lab_cooldown tmp
scoreboard players operation #lab_reduction tmp *= #lab_rate tmp
scoreboard players set #lab_percent_base tmp 100
scoreboard players operation #lab_reduction tmp /= #lab_percent_base tmp
scoreboard players operation #lab_cooldown tmp -= #lab_reduction tmp
execute if score #lab_cooldown tmp matches ..0 run scoreboard players set #lab_cooldown tmp 1
return run scoreboard players get #lab_cooldown tmp
