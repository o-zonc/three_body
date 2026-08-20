execute at @s run playsound ui.button.click weather @s ~ ~ ~ 1 2
function util/blank
function meta/sync
tellraw @s ["",{text:"  [ 정보 ]",color:"light_purple",bold:true,shadow_color:-16777216},{text:"\n\n  §8•§7 아이템: §f자수정 조각"},{text:"\n  §8•§7 소지량: ",extra:[{score:{name:"#information_wallet",objective:"tmp"},color:"white"},{text:"§7 / "},{score:{name:"#information_capacity",objective:"meta"},color:"white"},{text:"§7조각"}]},{text:"\n  §8•§7 보관량: ",extra:[{score:{name:"#information_bank",objective:"meta"},color:"light_purple"},{text:"§7조각"}]},{text:"\n"}]
