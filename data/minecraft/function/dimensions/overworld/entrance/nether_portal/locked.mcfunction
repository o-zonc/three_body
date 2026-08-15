execute if score #nether_portal unlock matches 1 run return 0

data remove storage data tmp.cost
data remove storage data tmp.cost_original
data modify storage data tmp.cost set from storage data const.dimensions.overworld.entrance[{id:"nether_portal"}].cost
function product/convert_cost_to_text_named {id:"nether_portal_entrance",insertion:", "}

execute at @s run playsound ui.button.click weather @s ~ ~ ~ 1 2
function util/blank

data modify storage data tmp.creation_ui.nether_portal set value {text:"           §c§l🔒",hover_event:{action:"show_text",value:["",{text:"§9클릭하여 해금§r\n\n§6[§7 필요한 재료 §6]\n"},{storage:"data",nbt:"tmp.cost_text.nether_portal_entrance.text",interpret:true}]},click_event:{action:"run_command",command:"/trigger entrance_trigger set 1103"}}
tellraw @s ["", \
  { text: "  §6§l< 구역 '네더 포탈' >§r" },\
  { text: "\n\n" },\
  {storage:"data",nbt:"tmp.creation_ui.nether_portal",interpret:true},\
  { text: "\n" },\
]
