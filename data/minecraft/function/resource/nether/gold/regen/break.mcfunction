execute if score #disable_gold_resourceion var matches 1 run return 0
# 금 파괴 시

scoreboard players set #gold_gain tmp 1
scoreboard players set #four tmp 4
execute if score #nether_8 advancement matches 1 unless score #nether_advancement_reward_disabled var matches 1 run scoreboard players operation #gold_gain tmp *= #four tmp
scoreboard players operation #material_add_value tmp = #gold_gain tmp
function resource/add_material/gold

# 금 재생산 대기시간 시작
execute store result score #gold_remain generate run function resource/nether/gold/value/regen_value
