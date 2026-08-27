execute store result score #copper_cooldown tmp run function resource/material/copper/cooldown
function resource/cooldown/prepare_stronghold_ui {id:"copper",score:"copper_cooldown",unit:"틱"}
execute store result score #copper_gain tmp run function resource/material/copper/amount
execute store result score #copper_base_gain tmp run function resource/production/base
function dawn/amplifier/prepare_resource_ui {dim:"overworld",final:100,final_multiplier:2}
function resource/upgrade/prepare_ui {id:"copper",trigger:1112}
scoreboard players set #gain_advancement_threshold tmp 2
function resource/ui/prepare_standard_gain {id:"copper",color:"green",shop_color:"gold",advancement:"copper",advancement_multiplier:2,advancement_label:"2"}

execute at @s run playsound ui.button.click weather @s ~ ~ ~ 1 2
function util/blank
tellraw @s ["",{text:"  [ 구리 ]",color:"gold",bold:true,shadow_color:-16777216},{text:"\n\n  §8•§7 보유량: ",extra:[{score:{name:"#copper",objective:"material"},color:"white"},{text:"§7개"}]},{text:"\n  §8•§7 수급량: ",extra:[{score:{name:"#copper_base_gain",objective:"tmp"},color:"white"},{text:"§7개"}]},{storage:"data",nbt:"tmp.advancement_reward_ui.copper",interpret:true},{text:"\n  §8•§7 재생산 대기: ",extra:[{score:{name:"#copper_cooldown",objective:"tmp"},color:"white"},{text:"§7틱"}]},{storage:"data",nbt:"tmp.alchemy_lab_cooldown_ui.copper",interpret:true},{text:"\n\n  ",extra:[{storage:"data",nbt:"tmp.creation_ui.copper_regen",interpret:true}]},{text:"\n"}]
