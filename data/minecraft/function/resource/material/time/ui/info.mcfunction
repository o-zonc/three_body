execute at @s run playsound ui.button.click weather @s ~ ~ ~ 1 2
function util/blank
function meta/sync
tellraw @s ["",{text:"  [ 시간 ]",color:"dark_aqua",bold:true,shadow_color:-16777216},{text:"\n\n  §8•§7 아이템: §f메아리 조각"},{text:"\n  §8•§7 소지량: ",extra:[{score:{name:"#time_wallet",objective:"tmp"},color:"white"},{text:"§7 / "},{score:{name:"#time_capacity",objective:"meta"},color:"white"},{text:"§7조각"}]},{text:"\n  §8•§7 보관량: ",extra:[{score:{name:"#time_bank",objective:"meta"},color:"dark_aqua"},{text:"§7조각"}]},{text:"\n"}]
