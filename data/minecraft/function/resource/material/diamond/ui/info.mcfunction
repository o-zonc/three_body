execute store result score #diamond_cooldown tmp run function resource/material/diamond/cooldown
function shop/alchemy/lab/cooldown/prepare_ui {id:"diamond",rate:"precious"}
execute store result score #diamond_gain tmp run function resource/material/diamond/amount
scoreboard players set #diamond_base_gain tmp 1

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

# 1층 자원 상점 배수도 일반 자원 UI와 같은 방식으로 표시합니다.
execute store result score #diamond_shop_multiplier_ui tmp run function resource/shop/value {id:"diamond"}
function resource/upgrade/prepare_ui {id:"diamond",trigger:1115}

data modify storage data tmp.second_floor_ui.diamond set value {text:""}
execute if score #diamond_second_bonus_ui tmp matches 1.. run data modify storage data tmp.second_floor_ui.diamond set value [{text:"\n자원 상점 보상: §d수급량 +"},{score:{name:"#diamond_second_bonus_ui",objective:"tmp"},color:"light_purple"}]

data modify storage data tmp.frozen_advancement_ui.diamond set value {text:""}
execute if entity @a[nbt={Dimension:"minecraft:frozen"}] if entity @a[advancements={1_frozen/01_chaos_survivor=true}] run data modify storage data tmp.frozen_advancement_ui.diamond set value {text:"\n발전과제 보상: §6수급량 ×2"}

data modify storage data tmp.advancement_reward_ui.diamond set value {text:" "}
execute unless score #diamond_gain tmp = #diamond_base_gain tmp run data modify storage data tmp.advancement_reward_ui.diamond set value [{text:" → "},{score:{name:"#diamond_gain",objective:"tmp"},color:"aqua"},{text:"§7개"},{text:" ★",color:"aqua",hover_event:{action:"show_text",value:[{text:"§b최종 자원 수급량§r§7이 증가합니다.\n"},{storage:"data",nbt:"tmp.second_floor_ui.diamond",interpret:true},{storage:"data",nbt:"tmp.frozen_advancement_ui.diamond",interpret:true}]}}]

execute at @s run playsound ui.button.click weather @s ~ ~ ~ 1 2
function util/blank
tellraw @s ["",{text:"  [ 다이아몬드 ]",color:"aqua",bold:true,shadow_color:-16741750},{text:"\n\n  §8•§7 보유량: ",extra:[{score:{name:"#diamond",objective:"material"},color:"white"},{text:"§7개"}]},{text:"\n  §8•§7 수급량: ",extra:[{score:{name:"#diamond_base_gain",objective:"tmp"},color:"white"},{text:"§7개"}]},{storage:"data",nbt:"tmp.advancement_reward_ui.diamond",interpret:true},{text:"\n  §8•§7 재생산 대기: ",extra:[{score:{name:"#diamond_base_cooldown",objective:"tmp"},color:"white"},{text:"§7틱"}]},{storage:"data",nbt:"tmp.alchemy_lab_cooldown_ui.diamond",interpret:true},{text:"\n\n  ",extra:[{storage:"data",nbt:"tmp.creation_ui.diamond_regen",interpret:true}]},{text:"\n"}]
