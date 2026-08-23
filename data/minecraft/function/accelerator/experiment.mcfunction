# 실험 종류는 accelerator_trigger 값으로 선택합니다.
# 10: 양자 충돌 실험 / 11: 중입자 충돌 실험 / 12: 시공간 붕괴 실험

execute unless score #GLOBAL accelerator_level matches 1.. run title @s actionbar {text:"입자가속기를 먼저 가동해야 합니다.",color:"red"}
execute unless score #GLOBAL accelerator_level matches 1.. run return 0

execute if score @s accelerator_trigger matches 11 unless score #GLOBAL accelerator_level matches 2.. run title @s actionbar {text:"중입자 충돌 실험은 입자가속기 Lv.2부터 가능합니다.",color:"red"}
execute if score @s accelerator_trigger matches 11 unless score #GLOBAL accelerator_level matches 2.. run return 0
execute if score @s accelerator_trigger matches 12 unless score #GLOBAL accelerator_level matches 4.. run title @s actionbar {text:"시공간 붕괴 실험은 입자가속기 Lv.4부터 가능합니다.",color:"red"}
execute if score @s accelerator_trigger matches 12 unless score #GLOBAL accelerator_level matches 4.. run return 0

execute if score #GLOBAL experiment_cooldown matches 1.. run title @s actionbar [{text:"실험 재정비까지 ",color:"red"},{score:{name:"#GLOBAL",objective:"experiment_cooldown"},color:"white"},{text:"틱 남았습니다.",color:"red"}]
execute if score #GLOBAL experiment_cooldown matches 1.. run return 0

data remove storage data tmp.cost
execute if score @s accelerator_trigger matches 10 run data modify storage data tmp.cost set from storage data const.accelerator.experiment.quantum.cost
execute if score @s accelerator_trigger matches 11 run data modify storage data tmp.cost set from storage data const.accelerator.experiment.heavy.cost
execute if score @s accelerator_trigger matches 12 run data modify storage data tmp.cost set from storage data const.accelerator.experiment.spacetime.cost
execute store result score #experiment_cost_ok tmp run function resource/check_cost
execute unless score #experiment_cost_ok tmp matches 1 run title @s actionbar {text:"실험 재료가 부족합니다.",color:"red"}
execute unless score #experiment_cost_ok tmp matches 1 run return 0
function resource/cost/take

# 양자 충돌 실험: 기존 방식. 레벨이 높아질수록 고급 결과 확률이 조금씩 증가합니다.
execute if score @s accelerator_trigger matches 10 run random reset *
execute if score @s accelerator_trigger matches 10 store result score #experiment_roll tmp run random value 0..99
execute if score @s accelerator_trigger matches 10 if score #GLOBAL accelerator_level matches 1 if score #experiment_roll tmp matches 0..69 run function accelerator/reward_common
execute if score @s accelerator_trigger matches 10 if score #GLOBAL accelerator_level matches 1 if score #experiment_roll tmp matches 70..89 run function accelerator/reward_great
execute if score @s accelerator_trigger matches 10 if score #GLOBAL accelerator_level matches 1 if score #experiment_roll tmp matches 90..99 run function accelerator/reward_special
execute if score @s accelerator_trigger matches 10 if score #GLOBAL accelerator_level matches 2 if score #experiment_roll tmp matches 0..64 run function accelerator/reward_common
execute if score @s accelerator_trigger matches 10 if score #GLOBAL accelerator_level matches 2 if score #experiment_roll tmp matches 65..87 run function accelerator/reward_great
execute if score @s accelerator_trigger matches 10 if score #GLOBAL accelerator_level matches 2 if score #experiment_roll tmp matches 88..99 run function accelerator/reward_special
execute if score @s accelerator_trigger matches 10 if score #GLOBAL accelerator_level matches 3 if score #experiment_roll tmp matches 0..59 run function accelerator/reward_common
execute if score @s accelerator_trigger matches 10 if score #GLOBAL accelerator_level matches 3 if score #experiment_roll tmp matches 60..84 run function accelerator/reward_great
execute if score @s accelerator_trigger matches 10 if score #GLOBAL accelerator_level matches 3 if score #experiment_roll tmp matches 85..99 run function accelerator/reward_special
execute if score @s accelerator_trigger matches 10 if score #GLOBAL accelerator_level matches 4 if score #experiment_roll tmp matches 0..54 run function accelerator/reward_common
execute if score @s accelerator_trigger matches 10 if score #GLOBAL accelerator_level matches 4 if score #experiment_roll tmp matches 55..81 run function accelerator/reward_great
execute if score @s accelerator_trigger matches 10 if score #GLOBAL accelerator_level matches 4 if score #experiment_roll tmp matches 82..99 run function accelerator/reward_special

# 중입자 충돌 실험: 일반/굉장한/특별한 파편을 각각 독립 확률로 획득합니다.
execute if score @s accelerator_trigger matches 11 run scoreboard players set #experiment_mode tmp 2
execute if score @s accelerator_trigger matches 11 run function accelerator/reward_common
execute if score @s accelerator_trigger matches 11 run function accelerator/reward_great
execute if score @s accelerator_trigger matches 11 run function accelerator/reward_special

# 시공간 붕괴 실험: 가장 많은 파편 + 흑요석 1개.
execute if score @s accelerator_trigger matches 12 run scoreboard players set #experiment_mode tmp 3
execute if score @s accelerator_trigger matches 12 run function accelerator/reward_common
execute if score @s accelerator_trigger matches 12 run function accelerator/reward_great
execute if score @s accelerator_trigger matches 12 run function accelerator/reward_special
execute if score @s accelerator_trigger matches 12 run give @s minecraft:obsidian 1

# 재정비 시간은 레벨 상수에 따라 결정합니다.
execute if score #GLOBAL accelerator_level matches 1 store result score #GLOBAL experiment_cooldown run data get storage data const.accelerator.level."1".experiment_cooldown
execute if score #GLOBAL accelerator_level matches 2 store result score #GLOBAL experiment_cooldown run data get storage data const.accelerator.level."2".experiment_cooldown
execute if score #GLOBAL accelerator_level matches 3 store result score #GLOBAL experiment_cooldown run data get storage data const.accelerator.level."3".experiment_cooldown
execute if score #GLOBAL accelerator_level matches 4 store result score #GLOBAL experiment_cooldown run data get storage data const.accelerator.level."4".experiment_cooldown
scoreboard players set #experiment_mode tmp 0
playsound block.beacon.activate weather @s ~ ~ ~ 1 1.5
