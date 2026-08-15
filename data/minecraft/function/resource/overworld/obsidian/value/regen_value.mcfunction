# 현재 Y 좌표를 반영한 흑요석 재생산 대기시간을 tick 단위로 반환
# Y -32 = 600틱, Y -64 = 1틱
# -56 위쪽은 느리게 유지하고, -56 아래쪽부터 급격히 빨라지는 계단형 지수 근사

execute unless score #y var = #y var run scoreboard players set #y var 64000
function dimensions/nether/workshop/effect/5_1/effective
execute if score #5_1_effective tmp matches 1 run scoreboard players set #y var -64000

scoreboard players set #obsidian_regen_value tmp 600
execute if score #y var matches ..-36000 run scoreboard players set #obsidian_regen_value tmp 580
execute if score #y var matches ..-40000 run scoreboard players set #obsidian_regen_value tmp 540
execute if score #y var matches ..-44000 run scoreboard players set #obsidian_regen_value tmp 480
execute if score #y var matches ..-48000 run scoreboard players set #obsidian_regen_value tmp 400
execute if score #y var matches ..-52000 run scoreboard players set #obsidian_regen_value tmp 300
execute if score #y var matches ..-56000 run scoreboard players set #obsidian_regen_value tmp 180
execute if score #y var matches ..-58000 run scoreboard players set #obsidian_regen_value tmp 80
execute if score #y var matches ..-60000 run scoreboard players set #obsidian_regen_value tmp 35
execute if score #y var matches ..-62000 run scoreboard players set #obsidian_regen_value tmp 12
execute if score #y var matches ..-63000 run scoreboard players set #obsidian_regen_value tmp 4
execute if score #y var matches ..-64000 run scoreboard players set #obsidian_regen_value tmp 1

return run scoreboard players get #obsidian_regen_value tmp
