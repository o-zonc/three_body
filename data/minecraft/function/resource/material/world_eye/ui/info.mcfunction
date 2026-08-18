execute at @s run playsound ui.button.click weather @s ~ ~ ~ 1 2
function util/blank
tellraw @s ["",{text:"  [ 세계의 눈 ]",color:"dark_purple",bold:true,shadow_color:-16777216},{text:"\n\n  §8•§7 대응 아이템: §f엔더의 눈"},{text:"\n  §8•§7 보유량: ",extra:[{score:{name:"#world_eye",objective:"material"},color:"white"},{text:"§7개"}]},{text:"\n"}]
