# 실내 또는 보호 상태에서는 가루눈과 같은 속도로 서서히 해동합니다.
scoreboard players remove @s frozen_chaos_freeze 2
execute if score @s frozen_chaos_freeze matches ..-1 run scoreboard players set @s frozen_chaos_freeze 0
scoreboard players set @s frozen_chaos_damage_timer 0
execute if score @s frozen_chaos_freeze matches ..79 run tag @s remove frozen_chaos_fully_frozen_notified
function frozen/chaos/update_stage
