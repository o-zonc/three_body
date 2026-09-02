# 빙결 단계가 바뀔 때만 전용 이동 속도 modifier를 갱신합니다.
# add_multiplied_total을 사용하므로 석기 시대 등 base movement_speed 보상과 함께 동작합니다.
execute if score @s frozen_chaos_freeze matches ..39 unless score @s frozen_chaos_stage matches 0 run attribute @s minecraft:movement_speed modifier remove three_body:frozen_chaos
execute if score @s frozen_chaos_freeze matches ..39 unless score @s frozen_chaos_stage matches 0 run scoreboard players set @s frozen_chaos_stage 0

execute if score @s frozen_chaos_freeze matches 40..79 unless score @s frozen_chaos_stage matches 1 run attribute @s minecraft:movement_speed modifier remove three_body:frozen_chaos
execute if score @s frozen_chaos_freeze matches 40..79 unless score @s frozen_chaos_stage matches 1 run attribute @s minecraft:movement_speed modifier add three_body:frozen_chaos -0.15 add_multiplied_total
execute if score @s frozen_chaos_freeze matches 40..79 unless score @s frozen_chaos_stage matches 1 run scoreboard players set @s frozen_chaos_stage 1

execute if score @s frozen_chaos_freeze matches 80..119 unless score @s frozen_chaos_stage matches 2 run attribute @s minecraft:movement_speed modifier remove three_body:frozen_chaos
execute if score @s frozen_chaos_freeze matches 80..119 unless score @s frozen_chaos_stage matches 2 run attribute @s minecraft:movement_speed modifier add three_body:frozen_chaos -0.35 add_multiplied_total
execute if score @s frozen_chaos_freeze matches 80..119 unless score @s frozen_chaos_stage matches 2 run scoreboard players set @s frozen_chaos_stage 2

execute if score @s frozen_chaos_freeze matches 120..139 unless score @s frozen_chaos_stage matches 3 run attribute @s minecraft:movement_speed modifier remove three_body:frozen_chaos
execute if score @s frozen_chaos_freeze matches 120..139 unless score @s frozen_chaos_stage matches 3 run attribute @s minecraft:movement_speed modifier add three_body:frozen_chaos -0.6 add_multiplied_total
execute if score @s frozen_chaos_freeze matches 120..139 unless score @s frozen_chaos_stage matches 3 run scoreboard players set @s frozen_chaos_stage 3

execute if score @s frozen_chaos_freeze matches 140 unless score @s frozen_chaos_stage matches 4 run attribute @s minecraft:movement_speed modifier remove three_body:frozen_chaos
execute if score @s frozen_chaos_freeze matches 140 unless score @s frozen_chaos_stage matches 4 run attribute @s minecraft:movement_speed modifier add three_body:frozen_chaos -1 add_multiplied_total
execute if score @s frozen_chaos_freeze matches 140 unless score @s frozen_chaos_stage matches 4 run scoreboard players set @s frozen_chaos_stage 4
execute if score @s frozen_chaos_freeze matches 140 unless entity @s[tag=frozen_chaos_fully_frozen_notified] run tellraw @s {text:"꽁꽁 얼어버리셨군요! 다음에는 북쪽 탑 2층을 먼저 가 보는 건 어떨까요?"}
execute if score @s frozen_chaos_freeze matches 140 unless entity @s[tag=frozen_chaos_fully_frozen_notified] run tag @s add frozen_chaos_fully_frozen_notified
