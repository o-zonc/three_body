execute at @s run playsound block.note_block.chime weather @s ~ ~ ~ 1 1.5
function util/blank
tellraw @s ["",{text:"  [ 천공의 제단 ]",color:"#91D7FF",bold:true,shadow_color:-16777216},{text:"\n\n  • 완성된 도구  Lv. ",color:"gray",bold:false},{score:{name:"#tool",objective:"upgrade"},color:"aqua"},{text:"  "},{storage:"data",nbt:"tmp.tool.now.components.custom_name"},{text:"\n\n  하늘이 더 이상 답하지 않습니다.",color:"green"},{text:"\n  이 도구는 제단이 허락한 마지막 경지에 도달했습니다.",color:"gray"},{text:"\n"}]
