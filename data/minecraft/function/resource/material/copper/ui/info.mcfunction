execute store result score #copper_cooldown tmp run function resource/material/copper/cooldown
execute store result score #copper_gain tmp run function resource/material/copper/amount
function resource/upgrade/prepare_ui {id:"copper",trigger:1112}
execute at @s run playsound ui.button.click weather @s ~ ~ ~ 1 2
function util/blank
tellraw @s ["",{text:"  [ 구리 ]",color:"gold",bold:true,shadow_color:-16777216},{text:"\n\n  §8•§7 보유량: ",extra:[{score:{name:"#copper",objective:"material"},color:"white"},{text:"§7개"}]},{text:"\n  §8•§7 채굴 획득량: ",extra:[{score:{name:"#copper_gain",objective:"tmp"},color:"white"},{text:"§7개"}]},{text:"\n  §8•§7 재생산 대기: ",extra:[{score:{name:"#copper_cooldown",objective:"tmp"},color:"white"},{text:"§7틱"}]},{text:"\n\n  ",extra:[{storage:"data",nbt:"tmp.creation_ui.copper_regen",interpret:true}]},{text:"\n"}]
