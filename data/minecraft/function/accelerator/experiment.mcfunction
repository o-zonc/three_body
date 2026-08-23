# 실험 종류는 accelerator_trigger 값으로 선택합니다.
# 10: 양자 충돌 실험 / 11: 중입자 충돌 실험 / 12: 시공간 붕괴 실험

execute if entity @s[tag=accelerator_experiment_running] run title @s actionbar {text:"이미 실험이 진행 중입니다.",color:"red"}
execute if entity @s[tag=accelerator_experiment_running] run return 0

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

scoreboard players operation @s experiment_type = @s accelerator_trigger
execute if score @s accelerator_trigger matches 10 store result score @s experiment_delay run data get storage data const.accelerator.experiment.quantum.delay
execute if score @s accelerator_trigger matches 11 store result score @s experiment_delay run data get storage data const.accelerator.experiment.heavy.delay
execute if score @s accelerator_trigger matches 12 store result score @s experiment_delay run data get storage data const.accelerator.experiment.spacetime.delay
tag @s add accelerator_experiment_running

playsound block.beacon.ambient master @s ~ ~ ~ 0.8 0.65
title @s actionbar {text:"입자가속기 실험을 진행 중입니다...",color:"aqua"}
