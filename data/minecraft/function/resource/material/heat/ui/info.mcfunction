execute at @s run playsound ui.button.click weather @s ~ ~ ~ 1 2
function util/blank
execute store result score #heat_cooldown tmp run function resource/material/heat/cooldown
execute store result score #heat_gain tmp run function resource/material/heat/amount
execute store result score #heat_environment_interval tmp run function resource/environment/heat_interval
tellraw @s ["",{text:"  [ 열기 ]",color:"red",bold:true,shadow_color:-16777216},{text:"\n\n  §8•§7 자원 블록: §f마그마 블록"},{text:"\n  §8•§7 보유량: ",extra:[{score:{name:"#heat",objective:"material"},color:"white"},{text:"§7개"}]},{text:"\n  §8•§7 채굴 획득량: ",extra:[{score:{name:"#heat_gain",objective:"tmp"},color:"white"},{text:"§7개"}]},{text:"\n  §8•§7 재생산 대기: ",extra:[{score:{name:"#heat_cooldown",objective:"tmp"},color:"white"},{text:"§7틱"}]},{text:"\n  §8•§7 환경 수급: ",extra:[{score:{name:"#heat_environment_interval",objective:"tmp"},color:"white"},{text:"§7틱마다 "},{score:{name:"#heat_gain",objective:"tmp"},color:"white"},{text:"§7개"}]},{text:"\n"}]
