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
scoreboard players operation #cold_base_gain tmp += #cold_second_bonus_ui tmp

execute store result score #cold_base_common_ui tmp run function resource/production/base
scoreboard players remove #cold_base_common_ui tmp 1
scoreboard players operation #cold_extreme_bonus_ui tmp = #cold_second_bonus_ui tmp
scoreboard players operation #cold_extreme_bonus_ui tmp -= #cold_base_common_ui tmp
scoreboard players set #cold_gain_effect_active tmp 0
execute if score #cold_base_common_ui tmp matches 1.. run scoreboard players set #cold_gain_effect_active tmp 1
execute if score #cold_extreme_bonus_ui tmp matches 1.. run scoreboard players set #cold_gain_effect_active tmp 1
execute if entity @s[nbt={Dimension:"minecraft:frozen"},advancements={1_frozen/01_chaos_survivor=true}] run scoreboard players set #cold_gain_effect_active tmp 1
execute if score #dawn_amplifier_ui_active tmp matches 1 run scoreboard players set #cold_gain_effect_active tmp 1
data modify storage data tmp.resource_gain_hover.cold set value [{text:"현재 생산량 증가 효과",color:"aqua"}]
execute if score #cold_base_common_ui tmp matches 1.. run data modify storage data tmp.resource_gain_hover.cold append value {text:"\n기초 자원 생산량: +",color:"gray"}
execute if score #cold_base_common_ui tmp matches 1.. run data modify storage data tmp.resource_gain_hover.cold append value {score:{name:"#cold_base_common_ui",objective:"tmp"},color:"white"}
execute if score #cold_extreme_bonus_ui tmp matches 1.. run data modify storage data tmp.resource_gain_hover.cold append value {text:"\n극한 자원 수급량: +",color:"gray"}
execute if score #cold_extreme_bonus_ui tmp matches 1.. run data modify storage data tmp.resource_gain_hover.cold append value {score:{name:"#cold_extreme_bonus_ui",objective:"tmp"},color:"light_purple"}
execute if entity @s[nbt={Dimension:"minecraft:frozen"},advancements={1_frozen/01_chaos_survivor=true}] run data modify storage data tmp.resource_gain_hover.cold append value {text:"\n발전과제 수급량: ×",color:"gray"}
execute if entity @s[nbt={Dimension:"minecraft:frozen"},advancements={1_frozen/01_chaos_survivor=true}] run data modify storage data tmp.resource_gain_hover.cold append value {text:"10",color:"gold"}
data modify storage data tmp.resource_gain_hover.cold append from storage data tmp.dawn_amplifier_ui
data modify storage data tmp.advancement_reward_ui.cold set value {text:""}
execute if score #cold_gain_effect_active tmp matches 1 run data modify storage data tmp.advancement_reward_ui.cold set value [{text:" → "},{score:{name:"#cold_gain",objective:"tmp"},color:"aqua"},{text:"§7개"},{text:" ★",color:"aqua",hover_event:{action:"show_text",value:[]}}]
execute if score #cold_gain_effect_active tmp matches 1 run data modify storage data tmp.advancement_reward_ui.cold[3].hover_event.value set from storage data tmp.resource_gain_hover.cold

tellraw @s ["",{text:"  [ 냉기 ]",color:"aqua",bold:true,shadow_color:-16777216},{text:"\n\n  §8•§7 보유량: ",extra:[{score:{name:"#cold",objective:"material"},color:"white"},{text:"§7개"}]},{text:"\n  §8•§7 수급량: ",extra:[{score:{name:"#cold_base_gain",objective:"tmp"},color:"white"},{text:"§7개"}]},{storage:"data",nbt:"tmp.advancement_reward_ui.cold",interpret:true},{text:"\n  §8•§7 재생산 대기: ",extra:[{score:{name:"#cold_base_cooldown",objective:"tmp"},color:"white"},{text:"§7틱"}]},{storage:"data",nbt:"tmp.alchemy_lab_cooldown_ui.cold",interpret:true},{text:"\n  §8•§7 환경 수급: ",extra:[{score:{name:"#cold_environment_interval",objective:"tmp"},color:"white"},{text:"§7틱마다 "},{score:{name:"#cold_gain",objective:"tmp"},color:"aqua"},{text:"§7개"}]},{text:"\n"}]
