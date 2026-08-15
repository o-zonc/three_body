execute store result score #piglin_head_speed_value tmp run function dimensions/nether/piglin_head/value/speed_up_value
function dimensions/nether/piglin_head/value/speed_up_upgrade_cost
function product/convert_upgrade_cost_to_text_named {id:"piglin_head_speed_up",insertion:", "}

execute at @s run playsound ui.button.click weather @s ~ ~ ~ 1 2
function util/blank

data modify storage data tmp.creation_ui.piglin_speed set value {text:"§b§l[ 업그레이드 ]",hover_event:{action:"show_text",value:["",{text:"§6[§7 필요한 재료 §6]\n"},{storage:"data",nbt:"tmp.cost_text.piglin_head_speed_up.text",interpret:true}]},click_event:{action:"run_command",command:"/trigger upgrade_trigger set 1203"}}
tellraw @s ["", \
  {text:"  ",color:"gray"},{text:"[ 피글린 머리 작동 속도 증폭 ]",bold:true,shadow_color:-1426128896},\
  {text:"\n\n  재사용 대기 시간: ",color:"dark_gray"},{score:{name:"#piglin_head_speed_value",objective:"tmp"},color:"gold"},{text:" 틱",color:"gray"},\
  {text:"\n\n  "},{storage:"data",nbt:"tmp.creation_ui.piglin_speed",interpret:true},\
  {text:"\n"}\
]
