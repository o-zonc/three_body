execute store result score #emerald_cooldown tmp run function resource/material/emerald/cooldown
execute store result score #emerald_gain tmp run function resource/material/emerald/amount
function resource/upgrade/prepare_ui {id:"emerald",trigger:1116}
execute at @s run playsound ui.button.click weather @s ~ ~ ~ 1 2
function util/blank
tellraw @s ["",{text:"  [ 에메랄드 ]",color:"green",bold:true,shadow_color:-16777216},{text:"\n\n  §8•§7 보유량: ",extra:[{score:{name:"#emerald",objective:"material"},color:"white"},{text:"§7개"}]},{text:"\n  §8•§7 채굴 획득량: ",extra:[{score:{name:"#emerald_gain",objective:"tmp"},color:"white"},{text:"§7개"}]},{text:"\n  §8•§7 재생산 대기: ",extra:[{score:{name:"#emerald_cooldown",objective:"tmp"},color:"white"},{text:"§7틱"}]},{text:"\n\n  ",extra:[{storage:"data",nbt:"tmp.creation_ui.emerald_regen",interpret:true}]},{text:"\n"}]
