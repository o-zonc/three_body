# 액션바를 1초 간격으로 다시 출력해 약 5초 동안 유지한다.
tag @s add unauthorized_dim_warning
scoreboard players set #unauthorized_warning_timer var 5
function mover/unauthorized/warn_tick
