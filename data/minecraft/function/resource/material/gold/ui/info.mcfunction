execute store result score #gold_restore_cooldown tmp run function resource/material/gold/cooldown
execute store result score #gold_gain tmp run function resource/material/gold/amount
scoreboard players set #gold_base_gain tmp 1

# 자원 상점 2층에서 금 수급량에 더해지는 값을 계산합니다.
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

# 1층 자원 상점 배수도 일반 자원 UI와 같은 방식으로 표시합니다.
execute store result score #gold_shop_multiplier_ui tmp run function resource/shop/value {id:"gold"}
function resource/upgrade/prepare_ui {id:"gold",trigger:1114}

data modify storage data tmp.second_floor_ui.gold set value {text:""}
execute if score #gold_second_bonus_ui tmp matches 1.. run data modify storage data tmp.second_floor_ui.gold set value [{text:"\n\n자원 상점 2층: §a수급량 +"},{score:{name:"#gold_second_bonus_ui",objective:"tmp"},color:"green"}]

data modify storage data tmp.first_floor_ui.gold set value {text:""}
execute if score #gold_shop_multiplier_ui tmp matches 2.. run data modify storage data tmp.first_floor_ui.gold set value [{text:"\n자원 상점 1층: §a수급량 ×"},{storage:"data",nbt:"tmp.resource_shop.gold.now.value",color:"green",plain:true}]

data modify storage data tmp.advancement_reward_ui.gold set value {text:" "}
execute unless score #gold_gain tmp = #gold_base_gain tmp run data modify storage data tmp.advancement_reward_ui.gold set value [{text:" → "},{score:{name:"#gold_gain",objective:"tmp"},color:"green"},{text:"§7개"},{text:" ★",color:"green",hover_event:{action:"show_text",value:[{text:"§a최종 자원 수급량§r§7이 증가합니다."},{storage:"data",nbt:"tmp.second_floor_ui.gold",interpret:true},{storage:"data",nbt:"tmp.first_floor_ui.gold",interpret:true}]}}]

execute at @s run playsound ui.button.click weather @s ~ ~ ~ 1 2
function util/blank
tellraw @s ["",{text:"  [ 금 ]",color:"gold",bold:true,shadow_color:-7710208},{text:"\n\n  §8•§7 보유량: ",extra:[{score:{name:"#gold",objective:"material"},color:"white"},{text:"§7개"}]},{text:"\n  §8•§7 수급량: ",extra:[{score:{name:"#gold_base_gain",objective:"tmp"},color:"white"},{text:"§7개"}]},{storage:"data",nbt:"tmp.advancement_reward_ui.gold",interpret:true},{text:"\n  §8•§7 재생산 대기: ",extra:[{score:{name:"#gold_restore_cooldown",objective:"tmp"},color:"white"},{text:"§7틱"}]},{text:"\n\n  ",extra:[{storage:"data",nbt:"tmp.creation_ui.gold_regen",interpret:true}]},{text:"\n"}]
