execute store result score #lapis_cooldown tmp run function resource/material/lapis/cooldown
execute store result score #lapis_gain tmp run function resource/material/lapis/amount
execute store result score #lapis_base_gain tmp run function resource/production/base
function resource/upgrade/prepare_ui {id:"lapis",trigger:1117}

data modify storage data tmp.advancement_reward_ui.lapis set value {text:" "}
execute unless score #lapis_gain tmp = #lapis_base_gain tmp run data modify storage data tmp.advancement_reward_ui.lapis set value [{text:" → "}, {score:{name:"#lapis_gain",objective:"tmp"},color:"green"},{text:"§7개"},{"text":" ★", "hover_event":{"action":"show_text", "value":[{text:"§a최종 자원 수급량§r§7이 증가합니다.\n\n자원 상점 강화: §a수급량 ×"},{storage:"data",nbt:"tmp.resource_shop.lapis.now.value",color:"green",plain:true}]}, "color":"green"}]
execute if score #lapis_advancement_reward var matches 1 unless score #overworld_advancement_reward_disabled var matches 1 run data modify storage data tmp.advancement_reward_ui.lapis set value [{text:" → "}, {score:{name:"#lapis_gain",objective:"tmp"},color:"green"},{text:"§7개"},{"text":" ★", "hover_event":{"action":"show_text", "value":[{text:"§6기초 자원 수급량§r§7과 §a최종 자원 수급량§r§7이 증가합니다.\n\n발전과제 보상: §6수급량 ×3\n§r§7자원 상점 강화: §a수급량 ×"},{storage:"data",nbt:"tmp.resource_shop.lapis.now.value",color:"green",plain:true}]}, "color":"green"}]

execute at @s run playsound ui.button.click weather @s ~ ~ ~ 1 2
function util/blank
tellraw @s ["",{text:"  [ 청금석 ]",color:"blue",bold:true,shadow_color:-16777216},{text:"\n\n  §8•§7 보유량: ",extra:[{score:{name:"#lapis",objective:"material"},color:"white"},{text:"§7개"}]},{text:"\n  §8•§7 수급량: ",extra:[{score:{name:"#lapis_base_gain",objective:"tmp"},color:"white"},{text:"§7개"}]},{storage:"data",nbt:"tmp.advancement_reward_ui.lapis",interpret:true},{text:"\n  §8•§7 재생산 대기: ",extra:[{score:{name:"#lapis_cooldown",objective:"tmp"},color:"white"},{text:"§7틱"}]},{text:"\n\n  ",extra:[{storage:"data",nbt:"tmp.creation_ui.lapis_regen",interpret:true}]},{text:"\n"}]
