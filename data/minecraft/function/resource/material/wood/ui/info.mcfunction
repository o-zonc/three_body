execute store result score #wood_restore_cooldown tmp run function resource/material/wood/cooldown
function resource/cooldown/prepare_stronghold_ui {id:"wood",score:"wood_restore_cooldown",unit:"틱"}
execute store result score #wood_gain tmp run function resource/material/wood/amount
execute store result score #wood_base_gain tmp run function resource/production/base
function dawn/amplifier/prepare_resource_ui {dim:"overworld",final:100,final_multiplier:2}
function resource/material/wood/value/regen_upgrade_cost
function resource/convert_upgrade_cost_to_text_named {id:"wood_regen",insertion:", "}
scoreboard players set #gain_advancement_threshold tmp 3
function resource/ui/prepare_standard_gain {id:"wood",color:"green",shop_color:"yellow",advancement:"wood",advancement_multiplier:3,advancement_label:"3"}

execute at @s run playsound ui.button.click weather @s ~ ~ ~ 1 2
function util/blank
data modify storage data tmp.creation_ui.wood_regen set value {text:"[ 업그레이드 완료 ]",color:"dark_gray",bold:true}
execute if data storage data tmp.cost run data modify storage data tmp.creation_ui.wood_regen set value {text:"[ 업그레이드 ]",color:"aqua",bold:true,hover_event:{action:"show_text",value:["",{text:"§6[§7 필요한 재료 §6]\n"},{storage:"data",nbt:"tmp.cost_text.wood_regen.text",interpret:true}]},click_event:{action:"run_command",command:"/trigger upgrade_trigger set 1101"}}
tellraw @s ["",{text:"  [ 나무 ]",color:"yellow",bold:true,shadow_color:-16777216},{text:"\n\n  §8•§7 보유량: ",extra:[{score:{name:"#wood",objective:"material"},color:"white"},{text:"§7개"}]},{text:"\n  §8•§7 수급량: ",extra:[{score:{name:"#wood_base_gain",objective:"tmp"},color:"white"},{text:"§7개"}]},{storage:"data",nbt:"tmp.advancement_reward_ui.wood",interpret:true},{text:"\n  §8•§7 재생산 대기: ",extra:[{score:{name:"#wood_restore_cooldown",objective:"tmp"},color:"white"},{text:"§7틱"}]},{storage:"data",nbt:"tmp.alchemy_lab_cooldown_ui.wood",interpret:true},{text:"\n\n  ",extra:[{storage:"data",nbt:"tmp.creation_ui.wood_regen",interpret:true}]},{text:"\n"}]
