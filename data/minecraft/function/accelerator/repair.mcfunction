execute unless score #GLOBAL accelerator_disabled matches 1 run title @s actionbar {text:"입자가속기는 정상 작동 중입니다.",color:"red",italic:true}
execute unless score #GLOBAL accelerator_disabled matches 1 run return 0

data remove storage data tmp.cost
data modify storage data tmp.cost set from storage data const.accelerator.repair.manual_cost
execute store result score #accelerator_repair_cost_ok tmp run function resource/check_cost
execute unless score #accelerator_repair_cost_ok tmp matches 1 run title @s actionbar {text:"수동 재가동에는 철 2,000,000, 금 50,000과 소지한 시간 2가 필요합니다.",color:"red",italic:true}
execute unless score #accelerator_repair_cost_ok tmp matches 1 run return 0
function resource/cost/take

scoreboard players set #GLOBAL accelerator_disabled 0
scoreboard players set #GLOBAL accelerator_repair_timer 0
scoreboard players set #GLOBAL accelerator_timer 1
execute store result score #GLOBAL experiment_cooldown run data get storage data const.accelerator.level."4".experiment_cooldown
playsound block.beacon.activate master @s ~ ~ ~ 1 0.9
playsound block.anvil.use master @s ~ ~ ~ 0.7 1.3
title @s actionbar {text:"입자가속기 수동 재가동 완료",color:"green",bold:true,italic:false}
