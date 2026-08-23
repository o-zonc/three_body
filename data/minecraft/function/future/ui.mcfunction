execute at @s run playsound ui.button.click weather @s ~ ~ ~ 1 2
function util/blank

execute unless score #spacetime_experiment_done var = #spacetime_experiment_done var run scoreboard players set #spacetime_experiment_done var 0
execute store result score #future_obsidian_count tmp run clear @s minecraft:obsidian 0

execute if score #overworld civilization_age matches 9.. run tellraw @s [{text:"  [ 미래 진입 단말 ]",color:"light_purple",bold:true},{text:"\n\n  이미 미래 시대에 도달했습니다.",color:"gray",bold:false},{text:"\n"}]
execute if score #overworld civilization_age matches 9.. run return 0

execute unless score #overworld civilization_age matches 8 run tellraw @s [{text:"  [ 미래 진입 단말 ]",color:"light_purple",bold:true},{text:"\n\n  현대 문명이 충분히 성숙한 뒤 사용할 수 있습니다.",color:"gray",bold:false},{text:"\n"}]
execute unless score #overworld civilization_age matches 8 run return 0

tellraw @s [{text:"  [ 미래 진입 단말 ]",color:"light_purple",bold:true},{text:"\n\n  입자가속기 실험에서 발견한 시공간의 균열을 분석해 새로운 물리 법칙에 접근합니다.",color:"gray",bold:false},{text:"\n  • 시공간 붕괴 실험: ",color:"gray",bold:false},{text:"완료",color:"green",bold:false}]
execute unless score #spacetime_experiment_done var matches 1.. run tellraw @s [{text:"\n  • 시공간 붕괴 실험: ",color:"gray",bold:false},{text:"미완료",color:"red",bold:false}]
execute if score #spacetime_experiment_done var matches 1.. run tellraw @s [{text:"\n  • 진입 비용: 흑요석 1개",color:"yellow",bold:false},{text:"\n\n  "},{text:"이 전환은 과학 기술의 큰 도약을 의미하며, 미래 시대에 진입하면 외계 간섭은 더 이상 발생하지 않습니다.",color:"dark_gray",italic:true,bold:false},{text:"\n\n  [ 미래 시대로 진입 ]",color:"aqua",bold:true,click_event:{action:"run_command",command:"/trigger item_trigger set 2193"}},{text:"\n"}]
execute unless score #spacetime_experiment_done var matches 1.. run tellraw @s [{text:"\n\n  "},{text:"최소 한 번의 시공간 붕괴 실험을 완료해야 합니다.",color:"dark_gray",italic:true,bold:false},{text:"\n\n  [ 미래 시대로 진입 ]",color:"dark_gray",bold:true},{text:"\n"}]
