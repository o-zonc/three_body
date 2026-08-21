execute store result score #diamond_cooldown tmp run function resource/material/diamond/cooldown
execute store result score #diamond_gain tmp run function resource/material/diamond/amount
scoreboard players set #diamond_base_gain tmp 1
function resource/upgrade/prepare_ui {id:"diamond",trigger:1115}

data modify storage data tmp.advancement_reward_ui.diamond set value {text:" "}
execute unless score #diamond_gain tmp = #diamond_base_gain tmp run data modify storage data tmp.advancement_reward_ui.diamond set value [{text:" → "},{score:{name:"#diamond_gain",objective:"tmp"},color:"green"},{text:"§7개"},{text:" ★",color:"green",hover_event:{action:"show_text",value:[{text:"§a최종 자원 수급량§r§7이 증가합니다."}]}}]
execute if entity @a[nbt={Dimension:"minecraft:frozen"}] if entity @a[advancements={1_frozen/01_chaos_survivor=true}] run data modify storage data tmp.advancement_reward_ui.diamond set value [{text:" → "},{score:{name:"#diamond_gain",objective:"tmp"},color:"green"},{text:"§7개"},{text:" ★",color:"green",hover_event:{action:"show_text",value:[{text:"§6발전과제 보상§r§7으로 §a최종 자원 수급량§r§7이 증가합니다.\n\n파괴되지 않은 세계: §6수급량 ×2"}]}}]

execute at @s run playsound ui.button.click weather @s ~ ~ ~ 1 2
function util/blank
tellraw @s ["",{text:"  [ 다이아몬드 ]",color:"aqua",bold:true,shadow_color:-16741750},{text:"\n\n  §8•§7 보유량: ",extra:[{score:{name:"#diamond",objective:"material"},color:"white"},{text:"§7개"}]},{text:"\n  §8•§7 수급량: ",extra:[{score:{name:"#diamond_base_gain",objective:"tmp"},color:"white"},{text:"§7개"}]},{storage:"data",nbt:"tmp.advancement_reward_ui.diamond",interpret:true},{text:"\n  §8•§7 재생산 대기: ",extra:[{score:{name:"#diamond_cooldown",objective:"tmp"},color:"white"},{text:"§7틱"}]},{text:"\n\n  ",extra:[{storage:"data",nbt:"tmp.creation_ui.diamond_regen",interpret:true}]},{text:"\n"}]
