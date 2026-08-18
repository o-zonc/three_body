execute at @s run playsound ui.button.click weather @s ~ ~ ~ 1 2
function util/blank
tellraw @s ["",{text:"  [ 열기 ]",color:"red",bold:true,shadow_color:-16777216},{text:"\n\n  §8•§7 대응 아이템: §f화염구"},{text:"\n  §8•§7 보유량: ",extra:[{score:{name:"#heat",objective:"material"},color:"white"},{text:"§7개"}]},{text:"\n"}]
