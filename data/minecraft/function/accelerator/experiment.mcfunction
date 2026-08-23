execute unless score #GLOBAL accelerator_level matches 1.. run title @s actionbar {text:"입자가속기를 먼저 가동해야 합니다.",color:"red"}
execute unless score #GLOBAL accelerator_level matches 1.. run return 0
execute if score #GLOBAL experiment_cooldown matches 1.. run title @s actionbar [{text:"실험 재정비까지 ",color:"red"},{score:{name:"#GLOBAL",objective:"experiment_cooldown"},color:"white"},{text:"틱 남았습니다.",color:"red"}]
execute if score #GLOBAL experiment_cooldown matches 1.. run return 0
data modify storage data tmp.cost set value [{type:"iron",amount:50000},{type:"lapis",amount:500},{type:"gold",amount:250},{type:"diamond",amount:50},{type:"time",amount:1},{type:"no_obsidian",amount:1}]
execute store result score #experiment_cost_ok tmp run function resource/check_cost
execute unless score #experiment_cost_ok tmp matches 1 run title @s actionbar {text:"실험 재료가 부족합니다. (철 50,000 / 청금석 500 / 금 250 / 다이아몬드 50 / 소지한 시간 1)",color:"red"}
execute unless score #experiment_cost_ok tmp matches 1 run return 0
function resource/cost/take
execute store result score #experiment_roll tmp run random value 0..99
execute if score #experiment_roll tmp matches 0..69 run function accelerator/reward_common
execute if score #experiment_roll tmp matches 70..89 run function accelerator/reward_great
execute if score #experiment_roll tmp matches 90..99 run function accelerator/reward_special
execute if score #GLOBAL accelerator_level matches 1 run scoreboard players set #GLOBAL experiment_cooldown 1200
execute if score #GLOBAL accelerator_level matches 2 run scoreboard players set #GLOBAL experiment_cooldown 600
execute if score #GLOBAL accelerator_level matches 3 run scoreboard players set #GLOBAL experiment_cooldown 300
execute if score #GLOBAL accelerator_level matches 4 run scoreboard players set #GLOBAL experiment_cooldown 180
playsound block.beacon.activate weather @s ~ ~ ~ 1 1.5
