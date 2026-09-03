execute at @s run playsound ui.button.click weather @s ~ ~ ~ 1 2
execute unless entity @a[tag=accelerator_experiment_running] unless score #frozen_shop unlock matches 1.. run title @s actionbar {text:"얼어붙은 세계의 상점이 잠겨 있습니다.",color:"red",italic:true}
execute unless score #frozen_shop unlock matches 1.. run return 0

function util/blank
tellraw @s ["",{text:"  [ 한파 대응 물약 ]",color:"aqua",bold:true,shadow_color:-16777216},{text:"\n\n  난세기의 한파를 견딜 수 있게 해 줍니다.",color:"gray",bold:false}]

data modify storage data tmp.cost set value [{type:"heat",amount:1}]
function resource/convert_cost_to_text_named {id:"frozen_warmth_potion",insertion:", "}
tellraw @s ["",{text:"\n\n  "},{text:"[ 보온 물약 구매 ]",color:"aqua",bold:true,hover_event:{action:"show_text",value:["",{text:"§7마시면 현재 난세기 동안 실외 채굴 속도 감소를 무시합니다.\n\n§6[§7 필요한 재료 §6]\n"},{storage:"data",nbt:"tmp.cost_text.frozen_warmth_potion.text",interpret:true}]},click_event:{action:"run_command",command:"/trigger shop_trigger set 2002"}},"\n"]
