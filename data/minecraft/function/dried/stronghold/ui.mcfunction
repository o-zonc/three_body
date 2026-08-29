# Macro args: id, name, color, trigger, effect, block, x, z
$execute unless score #stronghold_$(id) upgrade = #stronghold_$(id) upgrade run scoreboard players set #stronghold_$(id) upgrade 0
function dried/stronghold/complete
$execute if score #stronghold_$(id) upgrade matches 1.. in dried run setblock $(x) 66 $(z) air
$execute if score #stronghold_$(id) upgrade matches 1.. in dried run setblock $(x) 65 $(z) minecraft:$(block)
$execute if score #stronghold_$(id) upgrade matches 0 run scoreboard players set #stronghold_cost_mode tmp $(trigger)
execute if score #stronghold_cost_mode tmp matches 2011 run scoreboard players set #stronghold_cost_mode tmp 1
execute if score #stronghold_cost_mode tmp matches 2012 run scoreboard players set #stronghold_cost_mode tmp 2
execute if score #stronghold_cost_mode tmp matches 2013 run scoreboard players set #stronghold_cost_mode tmp 3
$function dried/stronghold/cost {id:"$(id)"}
function resource/convert_cost_to_text_named {id:"stronghold",insertion:", "}
execute at @s run playsound ui.button.click weather @s ~ ~ ~ 1 2
function util/blank
$execute if score #stronghold_$(id) upgrade matches 0 run tellraw @s ["",{text:"  [ $(name) 유적지 ]",color:"$(color)",bold:true},{text:"\n\n  고대의 유적으로부터 얻은 지식으로 $(effect)을 줄입니다.",color:"gray"},{text:"\n  복구 효과: §6대기 시간 -20%"},{text:"\n\n  "},{text:"[ 유적지 해금 ]",color:"gold",bold:true,hover_event:{action:"show_text",value:[{text:"§6[§7 필요한 재료 §6]\n"},{storage:"data",nbt:"tmp.cost_text.stronghold.text",interpret:true}]},click_event:{action:"run_command",command:"/trigger shop_trigger set $(trigger)"}},{text:"\n"}]
$execute if score #stronghold_$(id) upgrade matches 1.. run tellraw @s ["",{text:"  [ $(name) 유적지 ]",color:"$(color)",bold:true},{text:"\n\n  유적지 복구가 완료되었습니다.",color:"gray"},{text:"\n  $(effect): §a-20%",color:"white"},{text:"\n"}]
