execute store result score #coal_restore_cooldown tmp run function resource/material/coal/cooldown
execute store result score #coal_gain tmp run function resource/material/coal/amount
execute store result score #coal_base_gain tmp run function resource/production/base
function dawn/amplifier/prepare_resource_ui {dim:"overworld",final:100}

execute if score #coal_advancement_reward var matches 1 unless score #overworld_advancement_reward_disabled var matches 1 run scoreboard players set #advancement_reward_multiplier tmp 3
execute if score #coal_advancement_reward var matches 1 unless score #overworld_advancement_reward_disabled var matches 1 run scoreboard players operation #coal_base_gain tmp *= #advancement_reward_multiplier tmp
function resource/upgrade/prepare_ui {id:"coal",trigger:1111}

data modify storage data tmp.advancement_reward_ui.coal set value {text:" "}
execute unless score #coal_gain tmp = #coal_base_gain tmp run data modify storage data tmp.advancement_reward_ui.coal set value [{text:" → "}, {score:{name:"#coal_gain",objective:"tmp"},color:"green"},{text:"§7개"},{"text":" ★", "hover_event":{"action":"show_text", "value":[{text:"§a최종 자원 수급량§r§7이 증가합니다.\n\n자원 상점 강화: §a수급량 ×"},{storage:"data",nbt:"tmp.resource_shop.coal.now.value",color:"green",plain:true}]}, "color":"green"}]
execute if score #coal_advancement_reward var matches 1 unless score #overworld_advancement_reward_disabled var matches 1 run data modify storage data tmp.advancement_reward_ui.coal set value [{text:" → "}, {score:{name:"#coal_gain",objective:"tmp"},color:"green"},{text:"§7개"},{"text":" ★", "hover_event":{"action":"show_text", "value":[{text:"§6기초 자원 수급량§r§7과 §a최종 자원 수급량§r§7이 증가합니다.\n\n발전과제 보상: §6수급량 ×3\n§r§7자원 상점 강화: §a수급량 ×"},{storage:"data",nbt:"tmp.resource_shop.coal.now.value",color:"green",plain:true}]}, "color":"green"}]

execute at @s run playsound ui.button.click weather @s ~ ~ ~ 1 2
function util/blank
tellraw @s ["",{text:"  [ 석탄 ]",color:"dark_gray",bold:true,shadow_color:-16777216},{text:"\n\n  §8•§7 보유량: ",extra:[{score:{name:"#coal",objective:"material"},color:"white"},{text:"§7개"}]},{text:"\n  §8•§7 수급량: ",extra:[{score:{name:"#coal_base_gain",objective:"tmp"},color:"white"},{text:"§7개"}]},{storage:"data",nbt:"tmp.advancement_reward_ui.coal",interpret:true},{storage:"data",nbt:"tmp.dawn_amplifier_ui",interpret:true},{text:"\n  §8•§7 재생산 대기: ",extra:[{score:{name:"#coal_restore_cooldown",objective:"tmp"},color:"white"},{text:"§7틱"}]},{text:"\n\n  ",extra:[{storage:"data",nbt:"tmp.creation_ui.coal_regen",interpret:true}]},{text:"\n"}]
