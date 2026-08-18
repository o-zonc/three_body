execute at @s run playsound ui.button.click weather @s ~ ~ ~ 1 2
function util/blank
tellraw @s ["",{text:"  [ 정보 ]",color:"light_purple",bold:true,shadow_color:-16777216},{text:"\n\n  §8•§7 대응 아이템: §f자수정 조각"},{text:"\n  §8•§7 보유량: ",extra:[{score:{name:"#information",objective:"material"},color:"white"},{text:"§7개"}]},{text:"\n"}]
