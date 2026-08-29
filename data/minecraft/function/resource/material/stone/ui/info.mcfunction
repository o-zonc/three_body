execute store result score #stone_restore_value tmp run function resource/material/stone/cooldown
function resource/cooldown/prepare_stronghold_ui {id:"stone",score:"stone_restore_value",unit:"회 채취 시"}
execute store result score #stone_gain tmp run function resource/material/stone/amount
execute store result score #stone_base_gain tmp run function resource/production/base
function dawn/amplifier/prepare_resource_ui {dim:"overworld",final:100,final_multiplier:2}
function resource/material/stone/value/regen_upgrade_cost
function resource/convert_upgrade_cost_to_text_named {id:"stone_regen",insertion:", "}
scoreboard players set #gain_advancement_threshold tmp 1
function resource/ui/prepare_standard_gain {id:"stone",color:"green",shop_color:"gray",advancement:"stone",advancement_multiplier:1,advancement_label:"1"}

# 돌 전용 최종 수급 배수는 모든 공통 수급량 증가 항목 뒤에 표시한다.
data modify storage data tmp.stone_special_label set value {text:""}
execute if score #stone_regen_lvl upgrade matches 4 run data modify storage data tmp.stone_special_label set value {text:"1.7",color:"aqua"}
execute if score #stone_regen_lvl upgrade matches 5.. run data modify storage data tmp.stone_special_label set value {text:"3",color:"aqua"}
execute if score #stone_regen_lvl upgrade matches 4.. run data modify storage data tmp.resource_gain_hover.stone append value {text:"\n돌 재생산 특수 강화: ×",color:"gray"}
execute if score #stone_regen_lvl upgrade matches 4.. run data modify storage data tmp.resource_gain_hover.stone append from storage data tmp.stone_special_label
execute if score #stone_regen_lvl upgrade matches 4.. run data modify storage data tmp.advancement_reward_ui.stone set value [{text:" → "},{score:{name:"#stone_gain",objective:"tmp"},color:"green"},{text:"§7개"},{text:" ★",color:"green",hover_event:{action:"show_text",value:[]}}]
execute if score #stone_regen_lvl upgrade matches 4.. run data modify storage data tmp.advancement_reward_ui.stone[3].hover_event.value set from storage data tmp.resource_gain_hover.stone

execute at @s run playsound ui.button.click weather @s ~ ~ ~ 1 2
function util/blank
data modify storage data tmp.creation_ui.stone_regen set value {text:"[ 업그레이드 완료 ]",color:"dark_gray",bold:true}
execute if data storage data tmp.cost run data modify storage data tmp.creation_ui.stone_regen set value {text:"[ 업그레이드 ]",color:"aqua",bold:true,hover_event:{action:"show_text",value:["",{text:"§6[§7 필요한 재료 §6]\n"},{storage:"data",nbt:"tmp.cost_text.stone_regen.text",interpret:true}]},click_event:{action:"run_command",command:"/trigger upgrade_trigger set 1102"}}
tellraw @s ["",{text:"  [ 돌 ]",color:"gray",bold:true,shadow_color:-16777216},{text:"\n\n  §8•§7 보유량: ",extra:[{score:{name:"#stone",objective:"material"},color:"white"},{text:"§7개"}]},{text:"\n  §8•§7 수급량: ",extra:[{score:{name:"#stone_base_gain",objective:"tmp"},color:"white"},{text:"§7개"}]},{storage:"data",nbt:"tmp.advancement_reward_ui.stone",interpret:true},{text:"\n  §8•§7 재생산: 나무 ",extra:[{score:{name:"#stone_restore_value",objective:"tmp"},color:"white"},{text:"§7회 채취 시"}]},{storage:"data",nbt:"tmp.alchemy_lab_cooldown_ui.stone",interpret:true},{text:"\n\n  ",extra:[{storage:"data",nbt:"tmp.creation_ui.stone_regen",interpret:true}]},{text:"\n"}]
