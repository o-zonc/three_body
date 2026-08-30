# Macro args: rate
# 입력: #lab_cooldown tmp = 기본 쿨타임
# rates.mcfunction에서 계산한 감소율을 적용해 최종 쿨타임을 반환합니다.
# UI에서 감소 전/후 값을 함께 표시할 수 있도록 기본 쿨타임을 보존합니다.
scoreboard players operation #lab_base_cooldown tmp = #lab_cooldown tmp
function shop/alchemy/lab/rates
$scoreboard players operation #lab_rate tmp = #alchemy_lab_$(rate)_rate tmp
scoreboard players set #lab_percent_base tmp 100
scoreboard players operation #lab_remaining_rate tmp = #lab_percent_base tmp
scoreboard players operation #lab_remaining_rate tmp -= #lab_rate tmp
scoreboard players operation #lab_cooldown tmp *= #lab_remaining_rate tmp
scoreboard players operation #lab_cooldown tmp /= #lab_percent_base tmp
return run scoreboard players get #lab_cooldown tmp
