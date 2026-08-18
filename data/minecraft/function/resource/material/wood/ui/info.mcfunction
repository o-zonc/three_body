execute store result score #wood_restore_cooldown tmp run function resource/material/wood/cooldown
execute store result score #wood_gain tmp run function resource/material/wood/amount
function resource/material/wood/value/regen_upgrade_cost
function resource/convert_upgrade_cost_to_text_named {id:"wood_regen",insertion:", "}

execute at @s run playsound ui.button.click weather @s ~ ~ ~ 1 2
function util/blank
data modify storage data tmp.creation_ui.wood_regen set value {text:"§b§l[ 업그레이드 ]",hover_event:{action:"show_text",value:["",{text:"§6[§7 필요한 재료 §6]\n"},{storage:"data",nbt:"tmp.cost_text.wood_regen.text",interpret:true}]},click_event:{action:"run_command",command:"/trigger upgrade_trigger set 1101"}}
tellraw @s ["",{text:"  [ 나무 ]",color:"yellow",bold:true,shadow_color:-16777216},{text:"\n\n  §8•§7 보유량: ",extra:[{score:{name:"#wood",objective:"material"},color:"white"},{text:"§7개"}]},{text:"\n  §8•§7 채굴 획득량: ",extra:[{score:{name:"#wood_gain",objective:"tmp"},color:"white"},{text:"§7개"}]},{text:"\n  §8•§7 재생산 대기: ",extra:[{score:{name:"#wood_restore_cooldown",objective:"tmp"},color:"white"},{text:"§7틱"}]},{text:"\n\n  ",extra:[{storage:"data",nbt:"tmp.creation_ui.wood_regen",interpret:true}]},{text:"\n"}]
