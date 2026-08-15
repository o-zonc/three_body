function dimensions/nether/piglin_head/value/piglin_shop_upgrade_cost
function resource/convert_upgrade_cost_to_text_named {id:"piglin_shop",insertion:", "}

execute at @s run playsound ui.button.click weather @s ~ ~ ~ 1 2
function util/blank

data modify storage data tmp.creation_ui.piglin_shop set value {text:"§b§l[ 업그레이드 ]",hover_event:{action:"show_text",value:["",{text:"§6[§7 필요한 재료 §6]\n"},{storage:"data",nbt:"tmp.cost_text.piglin_shop.text",interpret:true}]},click_event:{action:"run_command",command:"/trigger shop_trigger set 1301"}}
tellraw @s ["", \
  {text:"  ",color:"gray"},{text:"[ 피글린 머리 상점 ]",color:"red",bold:true},\
  {text:"\n\n  해금 레벨: ",color:"dark_gray"},{score:{name:"#piglin_shop_lvl",objective:"piglin_head"},color:"white"},{text:" / 8",color:"gray"},\
  {text:"\n  해금 순서: ",color:"dark_gray"},{text:"나무 > 돌 > 몹 > 석탄 > 철 > 흑요석 > 블레이즈 > 석영",color:"white"},\
  {text:"\n\n  §a§l[ 피글린 머리? ]§r",hover_event:{action:"show_text",value:["",{text:"피글린 머리는 자원 위에 배치되어 해당 자원을 관리합니다.\n\n모든 피글린 머리는 일정 시간에 한 번 작동하며,\n\n작동하면 해당 피글린 머리가 관리하는 자원을 자동으로 수급할 수 있습니다.\n\n해금 레벨이 높아질 수록 더 많은 피글린 머리를 보유하게 됩니다.\n§7(해금 레벨에 따른 피글린 머리의 배치 위치는 상단에\n표기된 해금 순서 순입니다.)§r\n\n배치된 피글린 머리를 우클릭하여 작동을 멈출 수도 있습니다."}]}},\
  {text:"\n\n  "},{storage:"data",nbt:"tmp.creation_ui.piglin_shop",interpret:true},\
  {text:"\n"}\
]
