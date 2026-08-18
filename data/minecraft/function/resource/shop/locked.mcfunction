# Macro args: name, color
execute at @s run playsound block.note_block.bass weather @s ~ ~ ~ 0.8 0.5
function util/blank
$tellraw @s ["",{text:"  [ 자원 상점 - $(name) ]",color:"$(color)",bold:true,shadow_color:-16777216},{text:"\n\n  🔒 해금되지 않은 자원입니다.",color:"red",bold:false},{text:"\n  자원을 먼저 해금해야 수급량을 업그레이드할 수 있습니다.\n",color:"gray",bold:false}]
