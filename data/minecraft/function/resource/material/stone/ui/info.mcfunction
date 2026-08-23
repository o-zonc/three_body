execute store result score #stone_restore_value tmp run function resource/material/stone/cooldown
execute store result score #stone_gain tmp run function resource/material/stone/amount
execute store result score #stone_base_gain tmp run function resource/production/base
function dawn/amplifier/prepare_resource_ui {dim:"overworld",final:100}
function resource/material/stone/value/regen_upgrade_cost
function resource/convert_upgrade_cost_to_text_named {id:"stone_regen",insertion:", "}

data modify storage data tmp.advancement_reward_ui.stone set value {text:" "}
execute unless score #stone_gain tmp = #stone_base_gain tmp run data modify storage data tmp.advancement_reward_ui.stone set value [{text:" → "}, {score:{name:"#stone_gain",objective:"tmp"},color:"green"},{text:"§7개"},{"text":" ★", "hover_event":{"action":"show_text", "value":[{text:"§a최종 자원 수급량§r§7이 증가합니다.\n\n자원 상점 강화: §a수급량 ×"},{storage:"data",nbt:"tmp.resource_shop.stone.now.value",color:"green",plain:true}]}, "color":"green"}]
execute if score #stone_advancement_reward var matches 1 unless score #overworld_advancement_reward_disabled var matches 1 run data modify storage data tmp.advancement_reward_ui.stone set value [{text:" → "}, {score:{name:"#stone_gain",objective:"tmp"},color:"green"},{text:"§7개"},{"text":" ★", "hover_event":{"action":"show_text", "value":[{text:"§6기초 자원 수급량§r§7과 §a최종 자원 수급량§r§7이 증가합니다.\n\n발전과제 보상: §6수급량 ×3\n§r§7자원 상점 강화: §a수급량 ×"},{storage:"data",nbt:"tmp.resource_shop.stone.now.value",color:"green",plain:true}]}, "color":"green"}]

execute at @s run playsound ui.button.click weather @s ~ ~ ~ 1 2
function util/blank
data modify storage data tmp.creation_ui.stone_regen set value {text:"§b§l[ 업그레이드 ]",hover_event:{action:"show_text",value:["",{text:"§6[§7 필요한 재료 §6]\n"},{storage:"data",nbt:"tmp.cost_text.stone_regen.text",interpret:true}]},click_event:{action:"run_command",command:"/trigger upgrade_trigger set 1102"}}
tellraw @s ["",{text:"  [ 돌 ]",color:"gray",bold:true,shadow_color:-16777216},{text:"\n\n  §8•§7 보유량: ",extra:[{score:{name:"#stone",objective:"material"},color:"white"},{text:"§7개"}]},{text:"\n  §8•§7 수급량: ",extra:[{score:{name:"#stone_base_gain",objective:"tmp"},color:"white"},{text:"§7개"}]},{storage:"data",nbt:"tmp.advancement_reward_ui.stone",interpret:true},{storage:"data",nbt:"tmp.dawn_amplifier_ui",interpret:true},{text:"\n  §8•§7 재생산: 나무 ",extra:[{score:{name:"#stone_restore_value",objective:"tmp"},color:"white"},{text:"§7회 채취 시"}]},{text:"\n\n  ",extra:[{storage:"data",nbt:"tmp.creation_ui.stone_regen",interpret:true}]},{text:"\n"}]
