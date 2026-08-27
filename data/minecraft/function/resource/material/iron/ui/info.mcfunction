execute store result score #iron_restore_cooldown tmp run function resource/material/iron/cooldown
function resource/cooldown/prepare_stronghold_ui {id:"iron",score:"iron_restore_cooldown",unit:"틱"}
execute store result score #iron_gain tmp run function resource/material/iron/amount
execute store result score #iron_base_gain tmp run function resource/production/base
function dawn/amplifier/prepare_resource_ui {dim:"overworld",final:100,final_multiplier:2}
function resource/upgrade/prepare_ui {id:"iron",trigger:1113}
scoreboard players set #gain_advancement_threshold tmp 2
function resource/ui/prepare_standard_gain {id:"iron",color:"green",shop_color:"white",advancement:"iron",advancement_multiplier:2,advancement_label:"1.5"}

execute at @s run playsound ui.button.click weather @s ~ ~ ~ 1 2
function util/blank
tellraw @s ["",{text:"  [ 철 ]",color:"white",bold:true,shadow_color:-16777216},{text:"\n\n  §8•§7 보유량: ",extra:[{score:{name:"#iron",objective:"material"},color:"white"},{text:"§7개"}]},{text:"\n  §8•§7 수급량: ",extra:[{score:{name:"#iron_base_gain",objective:"tmp"},color:"white"},{text:"§7개"}]},{storage:"data",nbt:"tmp.advancement_reward_ui.iron",interpret:true},{text:"\n  §8•§7 재생산 대기: ",extra:[{score:{name:"#iron_restore_cooldown",objective:"tmp"},color:"white"},{text:"§7틱"}]},{storage:"data",nbt:"tmp.alchemy_lab_cooldown_ui.iron",interpret:true},{text:"\n\n  ",extra:[{storage:"data",nbt:"tmp.creation_ui.iron_regen",interpret:true}]},{text:"\n"}]
