# 가루눈의 최대 빙결 시간과 같은 140틱까지 실외 노출도를 누적한다.
scoreboard players add @s frozen_chaos_freeze 1
execute if score @s frozen_chaos_freeze matches 141.. run scoreboard players set @s frozen_chaos_freeze 140
function frozen/chaos/update_stage

# 메마른 세계의 화염 연출처럼 노출된 본인 주변에만 눈 입자를 표시한다.
# 단계별 count는 1 / 2 / 4 / 7로 제한해 매 tick 파티클 부하를 낮춘다.
execute if score @s frozen_chaos_freeze matches ..39 at @s run particle minecraft:snowflake ~ ~1 ~ 0.25 0.45 0.25 0.01 1 force @s
execute if score @s frozen_chaos_freeze matches 40..79 at @s run particle minecraft:snowflake ~ ~1 ~ 0.3 0.55 0.3 0.015 2 force @s
execute if score @s frozen_chaos_freeze matches 80..119 at @s run particle minecraft:snowflake ~ ~1 ~ 0.35 0.65 0.35 0.02 4 force @s
execute if score @s frozen_chaos_freeze matches 120..140 at @s run particle minecraft:snowflake ~ ~1 ~ 0.4 0.75 0.4 0.025 7 force @s

# 완전 빙결 중에는 vanilla freezing 피해 유형으로 주기적인 피해를 준다.
execute if score @s frozen_chaos_freeze matches 140 run scoreboard players add @s frozen_chaos_damage_timer 1
execute if score @s frozen_chaos_damage_timer matches 40.. run damage @s 1 minecraft:freeze
execute if score @s frozen_chaos_damage_timer matches 40.. run scoreboard players set @s frozen_chaos_damage_timer 0
