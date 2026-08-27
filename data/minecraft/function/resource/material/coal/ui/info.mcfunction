execute store result score #coal_restore_cooldown tmp run function resource/material/coal/cooldown
function resource/cooldown/prepare_stronghold_ui {id:"coal",score:"coal_restore_cooldown",unit:"틱"}
execute store result score #coal_gain tmp run function resource/material/coal/amount
execute store result score #coal_base_gain tmp run function resource/production/base
function dawn/amplifier/prepare_resource_ui {dim:"overworld",final:100,final_multiplier:2}
function resource/upgrade/prepare_ui {id:"coal",trigger:1111}
scoreboard players set #gain_advancement_threshold tmp 3
function resource/ui/prepare_standard_gain {id:"coal",color:"green",shop_color:"dark_gray",advancement:"coal",advancement_multiplier:3,advancement_label:"3"}

execute at @s run playsound ui.button.click weather @s ~ ~ ~ 1 2
function util/blank
tellraw @s ["",{text:"  [ 석탄 ]",color:"dark_gray",bold:true,shadow_color:-16777216},{text:"\n\n  §8•§7 보유량: ",extra:[{score:{name:"#coal",objective:"material"},color:"white"},{text:"§7개"}]},{text:"\n  §8•§7 수급량: ",extra:[{score:{name:"#coal_base_gain",objective:"tmp"},color:"white"},{text:"§7개"}]},{storage:"data",nbt:"tmp.advancement_reward_ui.coal",interpret:true},{text:"\n  §8•§7 재생산 대기: ",extra:[{score:{name:"#coal_restore_cooldown",objective:"tmp"},color:"white"},{text:"§7틱"}]},{storage:"data",nbt:"tmp.alchemy_lab_cooldown_ui.coal",interpret:true},{text:"\n\n  ",extra:[{storage:"data",nbt:"tmp.creation_ui.coal_regen",interpret:true}]},{text:"\n"}]
