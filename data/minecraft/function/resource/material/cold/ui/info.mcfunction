execute at @s run playsound ui.button.click weather @s ~ ~ ~ 1 2
function util/blank
execute store result score #cold_cooldown tmp run function resource/material/cold/cooldown
function shop/alchemy/lab/cooldown/prepare_ui {id:"cold",rate:"elemental"}
execute store result score #cold_gain tmp run function resource/material/cold/amount
scoreboard players set #cold_base_gain tmp 1
function dawn/amplifier/prepare_resource_ui {dim:"frozen",final:150,final_multiplier:2.5}
execute store result score #cold_environment_interval tmp run function resource/environment/cold_interval

# 자원 상점 2층에서 냉기 수급량에 더해지는 값을 계산합니다.
execute store result score #cold_second_bonus_ui tmp run function resource/production/base
scoreboard players remove #cold_second_bonus_ui tmp 1
execute if score #special_second_lvl upgrade matches 1 run scoreboard players add #cold_second_bonus_ui tmp 1
execute if score #special_second_lvl upgrade matches 2 run scoreboard players add #cold_second_bonus_ui tmp 2
execute if score #special_second_lvl upgrade matches 3 run scoreboard players add #cold_second_bonus_ui tmp 5
execute if score #special_second_lvl upgrade matches 4.. run scoreboard players add #cold_second_bonus_ui tmp 10

data modify storage data tmp.second_floor_ui.cold set value {text:""}
execute if score #cold_second_bonus_ui tmp matches 1.. run data modify storage data tmp.second_floor_ui.cold set value [{text:"\n자원 상점 보상: §d수급량 +"},{score:{name:"#cold_second_bonus_ui",objective:"tmp"},color:"light_purple"}]

data modify storage data tmp.frozen_advancement_ui.cold set value {text:""}
execute if entity @a[nbt={Dimension:"minecraft:frozen"}] if entity @a[advancements={1_frozen/01_chaos_survivor=true}] run data modify storage data tmp.frozen_advancement_ui.cold set value {text:"\n발전과제 보상: §6수급량 ×2"}

data modify storage data tmp.advancement_reward_ui.cold set value {text:" "}
execute unless score #cold_gain tmp = #cold_base_gain tmp run data modify storage data tmp.advancement_reward_ui.cold set value [{text:" → "},{score:{name:"#cold_gain",objective:"tmp"},color:"aqua"},{text:"§7개"},{text:" ★",color:"aqua",hover_event:{action:"show_text",value:[{text:"§b최종 자원 수급량§r§7이 증가합니다.\n"},{storage:"data",nbt:"tmp.second_floor_ui.cold",interpret:true},{storage:"data",nbt:"tmp.frozen_advancement_ui.cold",interpret:true},{storage:"data",nbt:"tmp.dawn_amplifier_ui",interpret:true}]}}]

tellraw @s ["",{text:"  [ 냉기 ]",color:"aqua",bold:true,shadow_color:-16777216},{text:"\n\n  §8•§7 보유량: ",extra:[{score:{name:"#cold",objective:"material"},color:"white"},{text:"§7개"}]},{text:"\n  §8•§7 수급량: ",extra:[{score:{name:"#cold_base_gain",objective:"tmp"},color:"white"},{text:"§7개"}]},{storage:"data",nbt:"tmp.advancement_reward_ui.cold",interpret:true},{text:"\n  §8•§7 재생산 대기: ",extra:[{score:{name:"#cold_base_cooldown",objective:"tmp"},color:"white"},{text:"§7틱"}]},{storage:"data",nbt:"tmp.alchemy_lab_cooldown_ui.cold",interpret:true},{text:"\n  §8•§7 환경 수급: ",extra:[{score:{name:"#cold_environment_interval",objective:"tmp"},color:"white"},{text:"§7틱마다 "},{score:{name:"#cold_gain",objective:"tmp"},color:"green"},{text:"§7개"}]},{text:"\n"}]
