# 세 세계의 유산을 완성한 문명은 정산 전에 보유했던 일반 자원을 여명 진입 시 한 번 복원한다.
execute unless score #GLOBAL current_dim matches 4 run return 0
execute unless score #GLOBAL reckoning_pending matches 1.. run return 0
execute if score #GLOBAL reckoning_materials_restored matches 1.. run return 0
execute unless entity @a[advancements={2_dried/04_three_ruins=true}] run return 0

scoreboard players operation #wood material = #reckoning_wood tmp
scoreboard players operation #stone material = #reckoning_stone tmp
scoreboard players operation #coal material = #reckoning_coal tmp
scoreboard players operation #copper material = #reckoning_copper tmp
scoreboard players operation #iron material = #reckoning_iron tmp
scoreboard players operation #gold material = #reckoning_gold tmp
scoreboard players operation #diamond material = #reckoning_diamond tmp
scoreboard players operation #emerald material = #reckoning_emerald tmp
scoreboard players operation #lapis material = #reckoning_lapis tmp
scoreboard players operation #heat material = #reckoning_heat tmp
scoreboard players operation #cold material = #reckoning_cold tmp
scoreboard players operation #yellow material = #reckoning_yellow tmp
scoreboard players operation #blue material = #reckoning_blue tmp

# 일반 자원은 이전 문명의 표시 이력만 복원하고 실제 해금 상태는 현재 문명에 맡긴다.
scoreboard players operation #stone sidebar_visible = #reckoning_stone_unlock tmp
scoreboard players operation #coal sidebar_visible = #reckoning_coal_unlock tmp
scoreboard players operation #copper sidebar_visible = #reckoning_copper_unlock tmp
scoreboard players operation #iron sidebar_visible = #reckoning_iron_unlock tmp
scoreboard players operation #gold sidebar_visible = #reckoning_gold_unlock tmp
scoreboard players operation #diamond sidebar_visible = #reckoning_diamond_unlock tmp
scoreboard players operation #emerald sidebar_visible = #reckoning_emerald_unlock tmp
scoreboard players operation #lapis sidebar_visible = #reckoning_lapis_unlock tmp
scoreboard players operation #heat sidebar_visible = #reckoning_heat_unlock tmp
scoreboard players operation #cold sidebar_visible = #reckoning_cold_unlock tmp
# 노랑/파랑은 영구 해금 정책이 먼저 복원한 상태를 다시 잠그지 않는다.
execute if score #reckoning_yellow_unlock tmp matches 1 run scoreboard players set #yellow unlock 1
execute if score #reckoning_blue_unlock tmp matches 1 run scoreboard players set #blue unlock 1 

scoreboard players set #GLOBAL reckoning_materials_restored 1
execute unless entity @a[tag=accelerator_experiment_running] run title @a actionbar {"text":"세 세계의 유산이 정산 전의 자원 보유량을 복원했습니다.","color":"gold"}
return 1
