execute at @s run playsound ui.button.click weather @s ~ ~ ~ 1 2
function util/blank
execute store result score #heat_cooldown tmp run function resource/material/heat/cooldown
execute store result score #heat_gain tmp run function resource/material/heat/amount
scoreboard players set #heat_base_gain tmp 1
execute store result score #heat_environment_interval tmp run function resource/environment/heat_interval

# 자원 상점 2층에서 열기 수급량에 더해지는 값을 계산합니다.
execute store result score #heat_second_bonus_ui tmp run function resource/production/base
scoreboard players remove #heat_second_bonus_ui tmp 1
execute if score #special_second_lvl upgrade matches 1 run scoreboard players add #heat_second_bonus_ui tmp 1
execute if score #special_second_lvl upgrade matches 2 run scoreboard players add #heat_second_bonus_ui tmp 2
execute if score #special_second_lvl upgrade matches 3 run scoreboard players add #heat_second_bonus_ui tmp 5
execute if score #special_second_lvl upgrade matches 4.. run scoreboard players add #heat_second_bonus_ui tmp 10

data modify storage data tmp.second_floor_ui.heat set value {text:""}
execute if score #heat_second_bonus_ui tmp matches 1.. run data modify storage data tmp.second_floor_ui.heat set value [{text:"\n\n자원 상점 2층: §a수급량 +"},{score:{name:"#heat_second_bonus_ui",objective:"tmp"},color:"green"}]

data modify storage data tmp.advancement_reward_ui.heat set value {text:" "}
execute unless score #heat_gain tmp = #heat_base_gain tmp run data modify storage data tmp.advancement_reward_ui.heat set value [{text:" → "},{score:{name:"#heat_gain",objective:"tmp"},color:"green"},{text:"§7개"},{text:" ★",color:"green",hover_event:{action:"show_text",value:[{text:"§a최종 자원 수급량§r§7이 증가합니다."},{storage:"data",nbt:"tmp.second_floor_ui.heat",interpret:true}]}}]

tellraw @s ["",{text:"  [ 열기 ]",color:"red",bold:true,shadow_color:-16777216},{text:"\n\n  §8•§7 보유량: ",extra:[{score:{name:"#heat",objective:"material"},color:"white"},{text:"§7개"}]},{text:"\n  §8•§7 수급량: ",extra:[{score:{name:"#heat_base_gain",objective:"tmp"},color:"white"},{text:"§7개"}]},{storage:"data",nbt:"tmp.advancement_reward_ui.heat",interpret:true},{text:"\n  §8•§7 재생산 대기: ",extra:[{score:{name:"#heat_cooldown",objective:"tmp"},color:"white"},{text:"§7틱"}]},{text:"\n  §8•§7 환경 수급: ",extra:[{score:{name:"#heat_environment_interval",objective:"tmp"},color:"white"},{text:"§7틱마다 "},{score:{name:"#heat_gain",objective:"tmp"},color:"green"},{text:"§7개"}]},{text:"\n"}]
