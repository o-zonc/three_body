execute unless score #overworld civilization_age matches 8 run title @s actionbar {text:"지금은 미래 시대로 진입할 수 없습니다.",color:"red"}
execute unless score #overworld civilization_age matches 8 run return 0
execute unless score #spacetime_experiment_done var matches 1.. run title @s actionbar {text:"시공간 붕괴 실험을 최소 한 번 완료해야 합니다.",color:"red"}
execute unless score #spacetime_experiment_done var matches 1.. run return 0
execute store result score #future_obsidian_count tmp run clear @s minecraft:paper[minecraft:custom_data~{three_body:{meta:"obsidian"}}] 0
execute unless score #future_obsidian_count tmp matches 1.. run title @s actionbar {text:"미래 시대로 진입하려면 흑요석 1개가 필요합니다.",color:"red"}
execute unless score #future_obsidian_count tmp matches 1.. run return 0
clear @s minecraft:paper[minecraft:custom_data~{three_body:{meta:"obsidian"}}] 1
advancement grant @s only minecraft:0_overworld/18_future_age
