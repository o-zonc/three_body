execute if entity @s[tag=accelerator_experiment_running] run title @s actionbar {text:"실험이 진행 중일 때는 입자가속기를 업그레이드할 수 없습니다.",color:"red"}
execute if entity @s[tag=accelerator_experiment_running] run return 0

# 입자가속기는 현대(문명 단계 8) 이후에 처음 가동할 수 있습니다.
execute if score #GLOBAL accelerator_level matches 0 unless score #overworld civilization_age matches 8.. run title @s actionbar {text:"현대에 도달해야 입자가속기를 가동할 수 있습니다.",color:"red"}
execute if score #GLOBAL accelerator_level matches 0 unless score #overworld civilization_age matches 8.. run return 0

execute if score #GLOBAL accelerator_level matches 4.. run title @s actionbar {text:"입자가속기는 이미 최대 레벨입니다.",color:"red"}
execute if score #GLOBAL accelerator_level matches 4.. run return 0

function accelerator/prepare_upgrade_cost
execute store result score #accelerator_cost_ok tmp run function resource/check_cost

# Lv.2부터는 보호막에서 회수한 깨진 양자 얽힘 파편도 요구합니다.
# 일반 비용은 충분하지만 이 파편만 부족한 경우에도 흑요석 1개로 업그레이드 전체를 대체할 수 있습니다.
execute if score #GLOBAL accelerator_level matches 1 store result score #broken_count tmp run clear @s minecraft:gray_dye[minecraft:custom_data~{three_body:{quantum:"broken"}}] 0
execute if score #GLOBAL accelerator_level matches 2 store result score #broken_count tmp run clear @s minecraft:gray_dye[minecraft:custom_data~{three_body:{quantum:"broken"}}] 0
execute if score #GLOBAL accelerator_level matches 3 store result score #broken_count tmp run clear @s minecraft:gray_dye[minecraft:custom_data~{three_body:{quantum:"broken"}}] 0
execute if score #GLOBAL accelerator_level matches 1 store result score #broken_required tmp run data get storage data const.accelerator.upgrade."1".broken
execute if score #GLOBAL accelerator_level matches 2 store result score #broken_required tmp run data get storage data const.accelerator.upgrade."2".broken
execute if score #GLOBAL accelerator_level matches 3 store result score #broken_required tmp run data get storage data const.accelerator.upgrade."3".broken
execute unless score #obsidian_cost_bypass tmp matches 1 if score #GLOBAL accelerator_level matches 1 unless score #broken_count tmp >= #broken_required tmp run scoreboard players set #accelerator_cost_ok tmp 0
execute unless score #obsidian_cost_bypass tmp matches 1 if score #GLOBAL accelerator_level matches 2 unless score #broken_count tmp >= #broken_required tmp run scoreboard players set #accelerator_cost_ok tmp 0
execute unless score #obsidian_cost_bypass tmp matches 1 if score #GLOBAL accelerator_level matches 3 unless score #broken_count tmp >= #broken_required tmp run scoreboard players set #accelerator_cost_ok tmp 0

# 추가 재료 때문에 실패했더라도 흑요석을 보유했다면 전체 비용 대체로 전환합니다.
execute unless score #accelerator_cost_ok tmp matches 1 if score #obsidian_wallet tmp matches 1.. run scoreboard players set #obsidian_cost_bypass tmp 1
execute unless score #accelerator_cost_ok tmp matches 1 if score #obsidian_wallet tmp matches 1.. run scoreboard players set #accelerator_cost_ok tmp 1
scoreboard players operation #accelerator_obsidian_bypass tmp = #obsidian_cost_bypass tmp

execute unless score #accelerator_cost_ok tmp matches 1 run title @s actionbar {text:"업그레이드 재료가 부족합니다.",color:"red"}
execute unless score #accelerator_cost_ok tmp matches 1 at @s run playsound block.note_block.bass weather @s ~ ~ ~ 0.8 0.5
execute unless score #accelerator_cost_ok tmp matches 1 run return 0

function resource/cost/take
execute unless score #accelerator_obsidian_bypass tmp matches 1 if score #factory_recycle_level upgrade matches 2.. run function factory/recycle/refund_cost
execute unless score #accelerator_obsidian_bypass tmp matches 1 if score #GLOBAL accelerator_level matches 1 run clear @s minecraft:gray_dye[minecraft:custom_data~{three_body:{quantum:"broken"}}] 10
execute unless score #accelerator_obsidian_bypass tmp matches 1 if score #GLOBAL accelerator_level matches 2 run clear @s minecraft:gray_dye[minecraft:custom_data~{three_body:{quantum:"broken"}}] 40
execute unless score #accelerator_obsidian_bypass tmp matches 1 if score #GLOBAL accelerator_level matches 3 run clear @s minecraft:gray_dye[minecraft:custom_data~{three_body:{quantum:"broken"}}] 120

scoreboard players add #GLOBAL accelerator_level 1
scoreboard players set #GLOBAL accelerator_timer 1

playsound entity.player.levelup weather @s ~ ~ ~ 1 1.2
title @s actionbar [{text:"입자가속기 Lv.",color:"aqua"},{score:{name:"#GLOBAL",objective:"accelerator_level"},color:"white"},{text:" 업그레이드 완료",color:"aqua"}]
function accelerator/ui
