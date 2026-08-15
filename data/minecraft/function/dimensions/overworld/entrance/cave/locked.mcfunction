execute if score #cave unlock matches 1 run return 0

data remove storage data tmp.cost
data remove storage data tmp.cost_original
data modify storage data tmp.cost set from storage data const.dimensions.overworld.entrance[{id:"cave"}].cost
function product/convert_cost_to_text_named {id:"cave_entrance",insertion:", "}

execute at @s run playsound ui.button.click weather @s ~ ~ ~ 1 2
function util/blank

data modify storage data tmp.creation_ui.cave set value {text:"        §c§l🔒",hover_event:{action:"show_text",value:["",{text:"§9클릭하여 해금§r\n\n§6[§7 필요한 재료 §6]\n"},{storage:"data",nbt:"tmp.cost_text.cave_entrance.text",interpret:true}]},click_event:{action:"run_command",command:"/trigger entrance_trigger set 1101"}}
tellraw @s ["", \
  { text: "  §6§l< 구역 '동굴' >§r" },\
  { text: "\n\n" },\
  {storage:"data",nbt:"tmp.creation_ui.cave",interpret:true},\
  { text: "\n" },\
]
