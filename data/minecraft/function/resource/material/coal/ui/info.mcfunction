execute store result score #coal_restore_cooldown tmp run function resource/material/coal/cooldown
execute store result score #coal_gain tmp run function resource/material/coal/amount
function resource/upgrade/prepare_ui {id:"coal",trigger:1111}
execute at @s run playsound ui.button.click weather @s ~ ~ ~ 1 2
function util/blank
tellraw @s ["",{text:"  [ 석탄 ]",color:"dark_gray",bold:true,shadow_color:-16777216},{text:"\n\n  §8•§7 보유량: ",extra:[{score:{name:"#coal",objective:"material"},color:"white"},{text:"§7개"}]},{text:"\n  §8•§7 채굴 획득량: ",extra:[{score:{name:"#coal_gain",objective:"tmp"},color:"white"},{text:"§7개"}]},{text:"\n  §8•§7 재생산 대기: ",extra:[{score:{name:"#coal_restore_cooldown",objective:"tmp"},color:"white"},{text:"§7틱"}]},{text:"\n\n  ",extra:[{storage:"data",nbt:"tmp.creation_ui.coal_regen",interpret:true}]},{text:"\n"}]
