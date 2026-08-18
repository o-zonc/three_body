execute at @s run playsound ui.button.click weather @s ~ ~ ~ 1 2
function util/blank
tellraw @s ["",{text:"  [ 시간 ]",color:"dark_aqua",bold:true,shadow_color:-16777216},{text:"\n\n  §8•§7 대응 아이템: §f메아리 조각"},{text:"\n  §8•§7 보유량: ",extra:[{score:{name:"#time",objective:"material"},color:"white"},{text:"§7개"}]},{text:"\n"}]
