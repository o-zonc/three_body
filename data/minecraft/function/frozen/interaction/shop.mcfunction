execute at @s run playsound ui.button.click weather @s ~ ~ ~ 1 2
execute unless entity @a[tag=accelerator_experiment_running] unless score #frozen_shop unlock matches 1.. run title @s actionbar {text:"얼어붙은 세계의 상점이 잠겨 있습니다.",color:"red",italic:true}
execute unless score #frozen_shop unlock matches 1.. run return 0

function util/blank
tellraw @s ["",{text:"  [ 얼어붙은 상점 ]",color:"aqua",bold:true,shadow_color:-16777216},{text:"\n\n  얼음 협곡 너머로 향하는 시설을 개방합니다.",color:"gray",bold:false}]

execute unless score #frozen_bridge unlock matches 1.. run data modify storage data tmp.cost set value [{type:"diamond",amount:2},{type:"cold",amount:1}]
execute unless score #frozen_bridge unlock matches 1.. run function resource/convert_cost_to_text_named {id:"frozen_bridge",insertion:", "}
execute unless score #frozen_bridge unlock matches 1.. run tellraw @s ["",{text:"\n\n  "},{text:"[ 다리 해금 ]",color:"aqua",bold:true,hover_event:{action:"show_text",value:["",{text:"§6[§7 필요한 재료 §6]\n"},{storage:"data",nbt:"tmp.cost_text.frozen_bridge.text",interpret:true}]},click_event:{action:"run_command",command:"/trigger shop_trigger set 1902"}}]
execute if score #frozen_bridge unlock matches 1.. run tellraw @s ["",{text:"\n\n  ✔ 다리",color:"green"}]

execute unless score #frozen_bridge unlock matches 1.. run tellraw @s ["",{text:"\n  🔒 지하 미로 §8(다리를 먼저 해금해야 합니다.)"},{text:"\n"}]
execute unless score #frozen_bridge unlock matches 1.. run return 0
execute unless score #frozen_maze unlock matches 1.. run data modify storage data tmp.cost set value [{type:"diamond",amount:50},{type:"cold",amount:50}]
execute unless score #frozen_maze unlock matches 1.. run function resource/convert_cost_to_text_named {id:"frozen_maze",insertion:", "}
execute unless score #frozen_maze unlock matches 1.. run tellraw @s ["",{text:"\n  "},{text:"[ 지하 미로 해금 ]",color:"light_purple",bold:true,hover_event:{action:"show_text",value:["",{text:"§6[§7 필요한 재료 §6]\n"},{storage:"data",nbt:"tmp.cost_text.frozen_maze.text",interpret:true}]},click_event:{action:"run_command",command:"/trigger shop_trigger set 1903"}},{text:"\n"}]
execute if score #frozen_maze unlock matches 1.. run tellraw @s ["",{text:"\n  ✔ 지하 미로",color:"green"},{text:"\n"}]
