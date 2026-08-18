execute store result score #gold_restore_cooldown tmp run function resource/material/gold/cooldown
execute store result score #gold_gain tmp run function resource/material/gold/amount
function resource/upgrade/prepare_ui {id:"gold",trigger:1114}

execute at @s run playsound ui.button.click weather @s ~ ~ ~ 1 2
function util/blank
tellraw @s ["",{text:"  [ 금 ]",color:"gold",bold:true,shadow_color:-7710208},{text:"\n\n  §8•§7 보유량: ",extra:[{score:{name:"#gold",objective:"material"},color:"white"},{text:"§7개"}]},{text:"\n  §8•§7 채굴 획득량: ",extra:[{score:{name:"#gold_gain",objective:"tmp"},color:"white"},{text:"§7개"}]},{text:"\n  §8•§7 재생산 대기: ",extra:[{score:{name:"#gold_restore_cooldown",objective:"tmp"},color:"white"},{text:"§7틱"}]},{text:"\n\n  ",extra:[{storage:"data",nbt:"tmp.creation_ui.gold_regen",interpret:true}]},{text:"\n"}]
