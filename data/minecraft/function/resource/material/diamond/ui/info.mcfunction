execute store result score #diamond_cooldown tmp run function resource/material/diamond/cooldown
function shop/alchemy/lab/cooldown/prepare_ui {id:"diamond",rate:"precious"}
execute store result score #diamond_gain tmp run function resource/material/diamond/amount
scoreboard players set #diamond_base_gain tmp 1
function dawn/amplifier/prepare_resource_ui {dim:"frozen",final:150,final_multiplier:2.5}

# 자원 상점 2층에서 다이아몬드 수급량에 더해지는 값을 계산합니다.
scoreboard players set #diamond_second_bonus_ui tmp 0
execute if score #diamond_second_lvl upgrade matches 1 run scoreboard players set #diamond_second_bonus_ui tmp 1
execute if score #diamond_second_lvl upgrade matches 2 run scoreboard players set #diamond_second_bonus_ui tmp 2
execute if score #diamond_second_lvl upgrade matches 3 run scoreboard players set #diamond_second_bonus_ui tmp 5
execute if score #diamond_second_lvl upgrade matches 4.. run scoreboard players set #diamond_second_bonus_ui tmp 10
execute store result score #diamond_second_common_ui tmp run function resource/production/base
scoreboard players remove #diamond_second_common_ui tmp 1
execute store result score #diamond_second_extreme_ui tmp run function resource/production/extreme_multiplier
scoreboard players operation #diamond_second_common_ui tmp *= #diamond_second_extreme_ui tmp
scoreboard players operation #diamond_second_bonus_ui tmp += #diamond_second_common_ui tmp
scoreboard players operation #diamond_base_gain tmp += #diamond_second_bonus_ui tmp

# 1층 자원 상점 배수도 일반 자원 UI와 같은 방식으로 표시합니다.
execute store result score #diamond_shop_multiplier_ui tmp run function resource/shop/value {id:"diamond"}
function resource/upgrade/prepare_ui {id:"diamond",trigger:1115}

execute store result score #diamond_base_common_ui tmp run function resource/production/base
scoreboard players remove #diamond_base_common_ui tmp 1
scoreboard players operation #diamond_common_bonus_ui tmp = #diamond_second_common_ui tmp
scoreboard players operation #diamond_dedicated_bonus_ui tmp = #diamond_second_bonus_ui tmp
scoreboard players operation #diamond_dedicated_bonus_ui tmp -= #diamond_second_common_ui tmp
scoreboard players set #diamond_gain_effect_active tmp 0
execute if score #diamond_common_bonus_ui tmp matches 1.. run scoreboard players set #diamond_gain_effect_active tmp 1
execute if score #diamond_dedicated_bonus_ui tmp matches 1.. run scoreboard players set #diamond_gain_effect_active tmp 1
execute if score #diamond_shop_multiplier_ui tmp matches 2.. run scoreboard players set #diamond_gain_effect_active tmp 1
execute if entity @s[nbt={Dimension:"minecraft:frozen"},advancements={1_frozen/01_chaos_survivor=true}] run scoreboard players set #diamond_gain_effect_active tmp 1
execute if score #dawn_amplifier_ui_active tmp matches 1 run scoreboard players set #diamond_gain_effect_active tmp 1
data modify storage data tmp.resource_gain_hover.diamond set value [{text:"현재 생산량 증가 효과",color:"aqua"}]
execute if score #diamond_common_bonus_ui tmp matches 1.. run data modify storage data tmp.resource_gain_hover.diamond append value {text:"\n기초 자원 생산량: +",color:"gray"}
execute if score #diamond_common_bonus_ui tmp matches 1.. run data modify storage data tmp.resource_gain_hover.diamond append value {score:{name:"#diamond_base_common_ui",objective:"tmp"},color:"white"}
execute if score #diamond_common_bonus_ui tmp matches 1.. run data modify storage data tmp.resource_gain_hover.diamond append value {text:"\n극한 자원 수급량: ×",color:"gray"}
execute if score #diamond_common_bonus_ui tmp matches 1.. run data modify storage data tmp.resource_gain_hover.diamond append value {score:{name:"#diamond_second_extreme_ui",objective:"tmp"},color:"light_purple"}
execute if score #diamond_dedicated_bonus_ui tmp matches 1.. run data modify storage data tmp.resource_gain_hover.diamond append value {text:"\n다이아몬드 추가 수급량: +",color:"gray"}
execute if score #diamond_dedicated_bonus_ui tmp matches 1.. run data modify storage data tmp.resource_gain_hover.diamond append value {score:{name:"#diamond_dedicated_bonus_ui",objective:"tmp"},color:"dark_green"}
execute if score #diamond_shop_multiplier_ui tmp matches 2.. run data modify storage data tmp.resource_gain_hover.diamond append value {text:"\n자원 상점 수급량: ×",color:"gray"}
execute if score #diamond_shop_multiplier_ui tmp matches 2.. run data modify storage data tmp.resource_gain_hover.diamond append value {score:{name:"#diamond_shop_multiplier_ui",objective:"tmp"},color:"aqua"}
execute if entity @s[nbt={Dimension:"minecraft:frozen"},advancements={1_frozen/01_chaos_survivor=true}] run data modify storage data tmp.resource_gain_hover.diamond append value {text:"\n발전과제 수급량: ×",color:"gray"}
execute if entity @s[nbt={Dimension:"minecraft:frozen"},advancements={1_frozen/01_chaos_survivor=true}] run data modify storage data tmp.resource_gain_hover.diamond append value {text:"10",color:"gold"}
data modify storage data tmp.resource_gain_hover.diamond append from storage data tmp.dawn_amplifier_ui
data modify storage data tmp.advancement_reward_ui.diamond set value {text:""}
execute if score #diamond_gain_effect_active tmp matches 1 run data modify storage data tmp.advancement_reward_ui.diamond set value [{text:" → "},{score:{name:"#diamond_gain",objective:"tmp"},color:"aqua"},{text:"§7개"},{text:" ★",color:"aqua",hover_event:{action:"show_text",value:[]}}]
execute if score #diamond_gain_effect_active tmp matches 1 run data modify storage data tmp.advancement_reward_ui.diamond[3].hover_event.value set from storage data tmp.resource_gain_hover.diamond

execute at @s run playsound ui.button.click weather @s ~ ~ ~ 1 2
function util/blank
tellraw @s ["",{text:"  [ 다이아몬드 ]",color:"aqua",bold:true,shadow_color:-16741750},{text:"\n\n  §8•§7 보유량: ",extra:[{score:{name:"#diamond",objective:"material"},color:"white"},{text:"§7개"}]},{text:"\n  §8•§7 수급량: ",extra:[{score:{name:"#diamond_base_gain",objective:"tmp"},color:"white"},{text:"§7개"}]},{storage:"data",nbt:"tmp.advancement_reward_ui.diamond",interpret:true},{text:"\n  §8•§7 재생산 대기: ",extra:[{score:{name:"#diamond_base_cooldown",objective:"tmp"},color:"white"},{text:"§7틱"}]},{storage:"data",nbt:"tmp.alchemy_lab_cooldown_ui.diamond",interpret:true},{text:"\n\n  ",extra:[{storage:"data",nbt:"tmp.creation_ui.diamond_regen",interpret:true}]},{text:"\n"}]
