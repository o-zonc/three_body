execute store result score #gold_cooldown tmp run function resource/material/gold/cooldown
function shop/alchemy/lab/cooldown/prepare_ui {id:"gold",rate:"precious"}
execute store result score #gold_gain tmp run function resource/material/gold/amount
scoreboard players set #gold_base_gain tmp 1
function dawn/amplifier/prepare_resource_ui {dim:"dried",final:150,final_multiplier:2.5}

# 자원 상점 2층에서 금 수급량에 더해지는 값을 계산한다.
scoreboard players set #gold_second_bonus_ui tmp 0
execute if score #gold_second_lvl upgrade matches 1 run scoreboard players set #gold_second_bonus_ui tmp 1
execute if score #gold_second_lvl upgrade matches 2 run scoreboard players set #gold_second_bonus_ui tmp 2
execute if score #gold_second_lvl upgrade matches 3 run scoreboard players set #gold_second_bonus_ui tmp 5
execute if score #gold_second_lvl upgrade matches 4.. run scoreboard players set #gold_second_bonus_ui tmp 10
execute store result score #gold_second_common_ui tmp run function resource/production/base
scoreboard players remove #gold_second_common_ui tmp 1
execute store result score #gold_second_extreme_ui tmp run function resource/production/extreme_multiplier
scoreboard players operation #gold_second_common_ui tmp *= #gold_second_extreme_ui tmp
scoreboard players operation #gold_second_bonus_ui tmp += #gold_second_common_ui tmp
scoreboard players operation #gold_base_gain tmp += #gold_second_bonus_ui tmp

# 1층 자원 상점 배수도 일반 자원 UI와 같은 방식으로 표시한다.
execute store result score #gold_shop_multiplier_ui tmp run function resource/shop/value {id:"gold"}
function resource/upgrade/prepare_ui {id:"gold",trigger:1114}

execute store result score #gold_base_common_ui tmp run function resource/production/base
scoreboard players remove #gold_base_common_ui tmp 1
scoreboard players operation #gold_common_bonus_ui tmp = #gold_second_common_ui tmp
scoreboard players operation #gold_dedicated_bonus_ui tmp = #gold_second_bonus_ui tmp
scoreboard players operation #gold_dedicated_bonus_ui tmp -= #gold_second_common_ui tmp
scoreboard players set #gold_gain_effect_active tmp 0
execute if score #gold_common_bonus_ui tmp matches 1.. run scoreboard players set #gold_gain_effect_active tmp 1
execute if score #gold_dedicated_bonus_ui tmp matches 1.. run scoreboard players set #gold_gain_effect_active tmp 1
execute if score #gold_shop_multiplier_ui tmp matches 2.. run scoreboard players set #gold_gain_effect_active tmp 1
execute if score #dawn_amplifier_ui_active tmp matches 1 run scoreboard players set #gold_gain_effect_active tmp 1
data modify storage data tmp.resource_gain_hover.gold set value [{text:"현재 생산량 증가 효과",color:"gold"}]
execute if score #gold_common_bonus_ui tmp matches 1.. run data modify storage data tmp.resource_gain_hover.gold append value {text:"\n기초 자원 생산량: +",color:"gray"}
execute if score #gold_common_bonus_ui tmp matches 1.. run data modify storage data tmp.resource_gain_hover.gold append value {score:{name:"#gold_base_common_ui",objective:"tmp"},color:"white"}
execute if score #gold_common_bonus_ui tmp matches 1.. run data modify storage data tmp.resource_gain_hover.gold append value {text:"\n극한 자원 수급량: ×",color:"gray"}
execute if score #gold_common_bonus_ui tmp matches 1.. run data modify storage data tmp.resource_gain_hover.gold append value {score:{name:"#gold_second_extreme_ui",objective:"tmp"},color:"light_purple"}
execute if score #gold_dedicated_bonus_ui tmp matches 1.. run data modify storage data tmp.resource_gain_hover.gold append value {text:"\n금 추가 수급량: +",color:"gray"}
execute if score #gold_dedicated_bonus_ui tmp matches 1.. run data modify storage data tmp.resource_gain_hover.gold append value {score:{name:"#gold_dedicated_bonus_ui",objective:"tmp"},color:"dark_green"}
execute if score #gold_shop_multiplier_ui tmp matches 2.. run data modify storage data tmp.resource_gain_hover.gold append value {text:"\n자원 상점 수급량: ×",color:"gray"}
execute if score #gold_shop_multiplier_ui tmp matches 2.. run data modify storage data tmp.resource_gain_hover.gold append value {score:{name:"#gold_shop_multiplier_ui",objective:"tmp"},color:"gold"}
data modify storage data tmp.resource_gain_hover.gold append from storage data tmp.dawn_amplifier_ui
data modify storage data tmp.advancement_reward_ui.gold set value {text:""}
execute if score #gold_gain_effect_active tmp matches 1 run data modify storage data tmp.advancement_reward_ui.gold set value [{text:" → "},{score:{name:"#gold_gain",objective:"tmp"},color:"gold"},{text:"§7개"},{text:" ★",color:"gold",hover_event:{action:"show_text",value:[]}}]
execute if score #gold_gain_effect_active tmp matches 1 run data modify storage data tmp.advancement_reward_ui.gold[3].hover_event.value set from storage data tmp.resource_gain_hover.gold

execute at @s run playsound ui.button.click weather @s ~ ~ ~ 1 2
function util/blank
tellraw @s ["",{text:"  [ 금 ]",color:"gold",bold:true,shadow_color:-7710208},{text:"\n\n  §8•§7 보유량: ",extra:[{score:{name:"#gold",objective:"material"},color:"white"},{text:"§7개"}]},{text:"\n  §8•§7 수급량: ",extra:[{score:{name:"#gold_base_gain",objective:"tmp"},color:"white"},{text:"§7개"}]},{storage:"data",nbt:"tmp.advancement_reward_ui.gold",interpret:true},{text:"\n  §8•§7 재생산 대기: ",extra:[{score:{name:"#gold_base_cooldown",objective:"tmp"},color:"white"},{text:"§7틱"}]},{storage:"data",nbt:"tmp.alchemy_lab_cooldown_ui.gold",interpret:true},{text:"\n\n  ",extra:[{storage:"data",nbt:"tmp.creation_ui.gold_regen",interpret:true}]},{text:"\n"}]
