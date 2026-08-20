execute at @s run playsound ui.button.click weather @s ~ ~ ~ 1 2
function util/blank
execute store result score #cold_cooldown tmp run function resource/material/cold/cooldown
execute store result score #cold_gain tmp run function resource/material/cold/amount
execute store result score #cold_environment_interval tmp run function resource/environment/cold_interval
tellraw @s ["",{text:"  [ 냉기 ]",color:"aqua",bold:true,shadow_color:-16777216},{text:"\n\n  §8•§7 보유량: ",extra:[{score:{name:"#cold",objective:"material"},color:"white"},{text:"§7개"}]},{text:"\n  §8•§7 채굴 획득량: ",extra:[{score:{name:"#cold_gain",objective:"tmp"},color:"white"},{text:"§7개"}]},{text:"\n  §8•§7 재생산 대기: ",extra:[{score:{name:"#cold_cooldown",objective:"tmp"},color:"white"},{text:"§7틱"}]},{text:"\n  §8•§7 환경 수급: ",extra:[{score:{name:"#cold_environment_interval",objective:"tmp"},color:"white"},{text:"§7틱마다 "},{score:{name:"#cold_gain",objective:"tmp"},color:"white"},{text:"§7개"}]},{text:"\n"}]
