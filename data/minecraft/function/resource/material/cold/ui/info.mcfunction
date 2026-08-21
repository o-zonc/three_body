execute at @s run playsound ui.button.click weather @s ~ ~ ~ 1 2
function util/blank
execute store result score #cold_cooldown tmp run function resource/material/cold/cooldown
execute store result score #cold_gain tmp run function resource/material/cold/amount
scoreboard players set #cold_base_gain tmp 1
execute store result score #cold_environment_interval tmp run function resource/environment/cold_interval

data modify storage data tmp.advancement_reward_ui.cold set value {text:" "}
execute unless score #cold_gain tmp = #cold_base_gain tmp run data modify storage data tmp.advancement_reward_ui.cold set value [{text:" → "},{score:{name:"#cold_gain",objective:"tmp"},color:"green"},{text:"§7개"},{text:" ★",color:"green",hover_event:{action:"show_text",value:[{text:"§a최종 자원 수급량§r§7이 증가합니다."}]}}]
execute if entity @a[nbt={Dimension:"minecraft:frozen"}] if entity @a[advancements={1_frozen/01_chaos_survivor=true}] run data modify storage data tmp.advancement_reward_ui.cold set value [{text:" → "},{score:{name:"#cold_gain",objective:"tmp"},color:"green"},{text:"§7개"},{text:" ★",color:"green",hover_event:{action:"show_text",value:[{text:"§6발전과제 보상§r§7으로 §a최종 자원 수급량§r§7이 증가합니다.\n\n파괴되지 않은 세계: §6수급량 ×2"}]}}]

tellraw @s ["",{text:"  [ 냉기 ]",color:"aqua",bold:true,shadow_color:-16777216},{text:"\n\n  §8•§7 보유량: ",extra:[{score:{name:"#cold",objective:"material"},color:"white"},{text:"§7개"}]},{text:"\n  §8•§7 수급량: ",extra:[{score:{name:"#cold_base_gain",objective:"tmp"},color:"white"},{text:"§7개"}]},{storage:"data",nbt:"tmp.advancement_reward_ui.cold",interpret:true},{text:"\n  §8•§7 재생산 대기: ",extra:[{score:{name:"#cold_cooldown",objective:"tmp"},color:"white"},{text:"§7틱"}]},{text:"\n  §8•§7 환경 수급: ",extra:[{score:{name:"#cold_environment_interval",objective:"tmp"},color:"white"},{text:"§7틱마다 "},{score:{name:"#cold_gain",objective:"tmp"},color:"green"},{text:"§7개"}]},{text:"\n"}]
