execute if score #disable_obsidian_production var matches 1 run return 0
execute if score #trial_active trial matches 1 if score #trial_id trial matches 5 unless score #creation_available_obsidian_production trial matches 1 run return 0
execute unless score #cave unlock matches 1 run return 0
# 흑요석 파괴 시

execute store result score #obsidian_max_up_value tmp run function dimensions/overworld/shop/crystal_shop/value/obsidian_max_up_value
scoreboard players operation #emotion_before_obsidian tmp = #obsidian material
scoreboard players set #obsidian_gain tmp 1
scoreboard players set #four tmp 4
scoreboard players set #twenty tmp 20
execute if score #nether_6 advancement matches 1 unless score #nether_advancement_reward_disabled var matches 1 run scoreboard players operation #obsidian_gain tmp *= #four tmp
function dimensions/nether/workshop/effect/5_1/effective
execute if score #5_1_effective tmp matches 1 run scoreboard players operation #obsidian_gain tmp *= #twenty tmp
scoreboard players operation #material_add_value tmp = #obsidian_gain tmp
function product/add_material/obsidian
execute if score #obsidian material > #obsidian_max_up_value tmp run scoreboard players operation #obsidian material = #obsidian_max_up_value tmp
scoreboard players operation #emotion_delta tmp = #obsidian material
scoreboard players operation #emotion_delta tmp -= #emotion_before_obsidian tmp
scoreboard players set #emotion_weight tmp 80
scoreboard players operation #emotion_delta tmp *= #emotion_weight tmp
function trial/emotion/add_fervor
scoreboard players set #obsidian_present generate 0

execute store result score #obsidian_remain generate run function product/overworld/obsidian/value/regen_value
function product/overworld/obsidian/lock/update
