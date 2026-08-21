execute store result score #emerald_cooldown tmp run function resource/material/emerald/cooldown
execute store result score #emerald_gain tmp run function resource/material/emerald/amount
execute store result score #emerald_base_gain tmp run function resource/production/base
function resource/upgrade/prepare_ui {id:"emerald",trigger:1116}

data modify storage data tmp.advancement_reward_ui.emerald set value {text:" "}
execute unless score #emerald_gain tmp = #emerald_base_gain tmp run data modify storage data tmp.advancement_reward_ui.emerald set value [{text:" → "}, {score:{name:"#emerald_gain",objective:"tmp"},color:"green"},{text:"§7개"},{"text":" ★", "hover_event":{"action":"show_text", "value":[{text:"§a최종 자원 수급량§r§7이 증가합니다.\n\n자원 상점 강화: §a수급량 ×"},{storage:"data",nbt:"tmp.resource_shop.emerald.now.value",color:"green",plain:true}]}, "color":"green"}]
execute if score #emerald_advancement_reward var matches 1 unless score #overworld_advancement_reward_disabled var matches 1 run data modify storage data tmp.advancement_reward_ui.emerald set value [{text:" → "}, {score:{name:"#emerald_gain",objective:"tmp"},color:"green"},{text:"§7개"},{"text":" ★", "hover_event":{"action":"show_text", "value":[{text:"§6기초 자원 수급량§r§7과 §a최종 자원 수급량§r§7이 증가합니다.\n\n발전과제 보상: §6수급량 ×3\n§r§7자원 상점 강화: §a수급량 ×"},{storage:"data",nbt:"tmp.resource_shop.emerald.now.value",color:"green",plain:true}]}, "color":"green"}]

execute at @s run playsound ui.button.click weather @s ~ ~ ~ 1 2
function util/blank
tellraw @s ["",{text:"  [ 에메랄드 ]",color:"green",bold:true,shadow_color:-16777216},{text:"\n\n  §8•§7 보유량: ",extra:[{score:{name:"#emerald",objective:"material"},color:"white"},{text:"§7개"}]},{text:"\n  §8•§7 원래 수급량: ",extra:[{score:{name:"#emerald_base_gain",objective:"tmp"},color:"white"},{text:"§7개"}]},{storage:"data",nbt:"tmp.advancement_reward_ui.emerald",interpret:true},{text:"\n  §8•§7 재생산 대기: ",extra:[{score:{name:"#emerald_cooldown",objective:"tmp"},color:"white"},{text:"§7틱"}]},{text:"\n\n  ",extra:[{storage:"data",nbt:"tmp.creation_ui.emerald_regen",interpret:true}]},{text:"\n"}]
