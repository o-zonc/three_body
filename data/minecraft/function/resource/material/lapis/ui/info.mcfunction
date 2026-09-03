execute store result score #lapis_cooldown tmp run function resource/material/lapis/cooldown
function shop/alchemy/lab/cooldown/prepare_ui {id:"lapis",rate:"early"}
execute store result score #lapis_gain tmp run function resource/material/lapis/amount
execute store result score #lapis_base_gain tmp run function resource/production/base
function dawn/amplifier/prepare_resource_ui {dim:"overworld",final:150,final_multiplier:2.5}
scoreboard players set #gain_advancement_threshold tmp 2
function resource/ui/prepare_standard_gain {id:"lapis",color:"green",shop_color:"blue",advancement:"lapis",advancement_multiplier:2,advancement_label:"2"}

execute at @s run playsound ui.button.click weather @s ~ ~ ~ 1 2
function util/blank
tellraw @s ["",{text:"  [ 청금석 ]",color:"blue",bold:true,shadow_color:-16777216},{text:"\n\n  §8•§7 보유량: ",extra:[{score:{name:"#lapis",objective:"material"},color:"white"},{text:"§7개"}]},{text:"\n  §8•§7 수급량: ",extra:[{score:{name:"#lapis_base_gain",objective:"tmp"},color:"white"},{text:"§7개"}]},{storage:"data",nbt:"tmp.advancement_reward_ui.lapis",interpret:true},{text:"\n  §8•§7 재생산 대기: ",extra:[{score:{name:"#lapis_base_cooldown",objective:"tmp"},color:"white"},{text:"§7틱"}]},{storage:"data",nbt:"tmp.alchemy_lab_cooldown_ui.lapis",interpret:true},{text:"\n  §8•§7 자원 상점은 재생산 대기만 줄이고, 세공 작업대는 생산량을 늘립니다."},{text:"\n"}]
