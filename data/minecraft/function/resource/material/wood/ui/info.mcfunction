execute store result score #wood_restore_cooldown tmp run function resource/material/wood/cooldown
execute store result score #wood_gain tmp run function resource/material/wood/amount
execute store result score #wood_base_gain tmp run function resource/production/base
execute if score #wood_advancement_reward var matches 1 unless score #overworld_advancement_reward_disabled var matches 1 run scoreboard players set #advancement_reward_multiplier tmp 3
execute if score #wood_advancement_reward var matches 1 unless score #overworld_advancement_reward_disabled var matches 1 run scoreboard players operation #wood_base_gain tmp *= #advancement_reward_multiplier tmp
function resource/material/wood/value/regen_upgrade_cost
function resource/convert_upgrade_cost_to_text_named {id:"wood_regen",insertion:", "}
data modify storage data tmp.advancement_reward_ui.wood set value {text:""}
execute if score #wood_advancement_reward var matches 1 unless score #overworld_advancement_reward_disabled var matches 1 run data modify storage data tmp.advancement_reward_ui.wood set value {text:"\n  §8•§7 발전과제 보상: §6수급량 ×3"}

execute at @s run playsound ui.button.click weather @s ~ ~ ~ 1 2
function util/blank
data modify storage data tmp.creation_ui.wood_regen set value {text:"§b§l[ 업그레이드 ]",hover_event:{action:"show_text",value:["",{text:"§6[§7 필요한 재료 §6]\n"},{storage:"data",nbt:"tmp.cost_text.wood_regen.text",interpret:true}]},click_event:{action:"run_command",command:"/trigger upgrade_trigger set 1101"}}
tellraw @s ["",{text:"  [ 나무 ]",color:"yellow",bold:true,shadow_color:-16777216},{text:"\n\n  §8•§7 보유량: ",extra:[{score:{name:"#wood",objective:"material"},color:"white"},{text:"§7개"}]},{text:"\n  §8•§7 원래 수급량: ",extra:[{score:{name:"#wood_base_gain",objective:"tmp"},color:"white"},{text:"§7개"}]},{text:"\n  §8•§7 증가 후 수급량: ",extra:[{score:{name:"#wood_gain",objective:"tmp"},color:"green"},{text:"§7개"}]},{storage:"data",nbt:"tmp.advancement_reward_ui.wood"},{text:"\n  §8•§7 재생산 대기: ",extra:[{score:{name:"#wood_restore_cooldown",objective:"tmp"},color:"white"},{text:"§7틱"}]},{text:"\n\n  ",extra:[{storage:"data",nbt:"tmp.creation_ui.wood_regen",interpret:true}]},{text:"\n"}]
