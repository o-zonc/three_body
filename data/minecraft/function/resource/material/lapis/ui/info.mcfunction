execute store result score #lapis_cooldown tmp run function resource/material/lapis/cooldown
execute store result score #lapis_gain tmp run function resource/material/lapis/amount
function resource/upgrade/prepare_ui {id:"lapis",trigger:1117}
execute at @s run playsound ui.button.click weather @s ~ ~ ~ 1 2
function util/blank
tellraw @s ["",{text:"  [ 청금석 ]",color:"blue",bold:true,shadow_color:-16777216},{text:"\n\n  §8•§7 보유량: ",extra:[{score:{name:"#lapis",objective:"material"},color:"white"},{text:"§7개"}]},{text:"\n  §8•§7 채굴 획득량: ",extra:[{score:{name:"#lapis_gain",objective:"tmp"},color:"white"},{text:"§7개"}]},{text:"\n  §8•§7 재생산 대기: ",extra:[{score:{name:"#lapis_cooldown",objective:"tmp"},color:"white"},{text:"§7틱"}]},{text:"\n\n  ",extra:[{storage:"data",nbt:"tmp.creation_ui.lapis_regen",interpret:true}]},{text:"\n"}]
