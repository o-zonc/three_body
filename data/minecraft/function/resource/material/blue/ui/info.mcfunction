execute store result score #blue_cooldown tmp run function resource/material/blue/cooldown
function resource/cooldown/prepare_stronghold_ui {id:"blue",score:"blue_cooldown",unit:"틱"}
function resource/upgrade/prepare_ui {id:"blue",trigger:1119}
data modify storage data tmp.color_mining_pause_ui set value {text:"",bold:false}
execute if score #GLOBAL era_paused matches 1 if entity @s[advancements={0_overworld/25_blue_time_machine=true}] run data modify storage data tmp.color_mining_pause_ui set value {text:" (시간 정지로 자동 채굴 중단)",color:"red",bold:false}

execute at @s run playsound ui.button.click weather @s ~ ~ ~ 1 2
function util/blank
tellraw @s ["",{text:"  [ 파랑 ]",color:"blue",shadow_color:-16746497,bold:true},{text:"\n\n  중입자 충돌에서 발견된 불안정한 물질 자원입니다.",color:"gray",bold:false},{text:"\n  §8•§7 보유량: ",bold:false,extra:[{score:{name:"#blue",objective:"material"},color:"white",bold:false},{text:"§7개",bold:false}]},{text:"\n  §8•§7 수급량: §f1§7개",bold:false},{storage:"data",nbt:"tmp.color_mining_pause_ui",interpret:true},{text:"\n  §8•§7 재생산 대기: ",bold:false,extra:[{score:{name:"#blue_cooldown",objective:"tmp"},color:"white",bold:false},{text:"§7틱",bold:false}]},{storage:"data",nbt:"tmp.alchemy_lab_cooldown_ui.blue",interpret:true},{text:"\n\n  ",bold:false,extra:[{storage:"data",nbt:"tmp.creation_ui.blue_regen",interpret:true}]},{text:"\n"}]
