execute store result score #diamond_cooldown tmp run function resource/material/diamond/cooldown
execute store result score #diamond_gain tmp run function resource/material/diamond/amount
function resource/upgrade/prepare_ui {id:"diamond",trigger:1115}
execute at @s run playsound ui.button.click weather @s ~ ~ ~ 1 2
function util/blank
tellraw @s ["",{text:"  [ 다이아몬드 ]",color:"aqua",bold:true,shadow_color:-16777216},{text:"\n\n  §8•§7 보유량: ",extra:[{score:{name:"#diamond",objective:"material"},color:"white"},{text:"§7개"}]},{text:"\n  §8•§7 채굴 획득량: ",extra:[{score:{name:"#diamond_gain",objective:"tmp"},color:"white"},{text:"§7개"}]},{text:"\n  §8•§7 재생산 대기: ",extra:[{score:{name:"#diamond_cooldown",objective:"tmp"},color:"white"},{text:"§7틱"}]},{text:"\n\n  ",extra:[{storage:"data",nbt:"tmp.creation_ui.diamond_regen",interpret:true}]},{text:"\n"}]
