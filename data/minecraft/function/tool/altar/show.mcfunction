function tool/get_now_tool_data
function tool/get_next_tool_data

# cost 값이 없는 마지막 단계는 완료 전용 화면을 표시한다.
execute unless data storage data tmp.tool.now.cost run function tool/altar/show_max
execute unless data storage data tmp.tool.now.cost run return 0

data remove storage data tmp.cost
data remove storage data tmp.cost_original
data modify storage data tmp.cost set from storage data tmp.tool.now.cost
function resource/convert_upgrade_cost_to_text_named {id:"tool_upgrade",insertion:", "}

execute at @s run playsound ui.button.click weather @s ~ ~ ~ 1 1.4
function util/blank
tellraw @s ["",{text:"  [ 천공의 제단 ]",color:"#91D7FF",bold:true,shadow_color:-16777216},{text:"\n  하늘의 힘이 도구에 깃들 준비를 마쳤습니다.",color:"dark_aqua",italic:true},{text:"\n\n  • 현재 도구  Lv. ",color:"gray",bold:false,italic:false},{score:{name:"#tool",objective:"upgrade"},color:"white"},{text:"  "},{storage:"data",nbt:"tmp.tool.now.components.custom_name"},{text:"\n  • 승천할 도구  Lv. ",color:"gray"},{score:{name:"#tool_next",objective:"tmp"},color:"aqua"},{text:"  "},{storage:"data",nbt:"tmp.tool.next.components.custom_name"},{text:"\n\n  제물  ",color:"gray"},{storage:"data",nbt:"tmp.cost_text.tool_upgrade.text",interpret:true},{text:"\n\n  [ 하늘의 힘을 받아들인다 ]",color:"aqua",bold:true,hover_event:{action:"show_text",value:{text:"제물을 바치고 도구를 다음 단계로 승천시킵니다.",color:"gray"}},click_event:{action:"run_command",command:"/trigger tool_trigger set 1"}},{text:"\n"}]
