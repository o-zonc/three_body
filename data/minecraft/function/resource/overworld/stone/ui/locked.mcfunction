data remove storage data tmp.cost
data remove storage data tmp.cost_original
data modify storage data tmp.cost set from storage data const.resource.stone.unlock_cost
function resource/convert_cost_to_text_named {id:"stone_unlock",insertion:", "}

execute at @s run playsound ui.button.click weather @s ~ ~ ~ 1 2
function util/blank

data modify storage data tmp.creation_ui.stone set value {text:"    §c§l🔒",hover_event:{action:"show_text",value:["",{text:"§9클릭하여 해금§r\n\n§6[§7 필요한 재료 §6]\n"},{storage:"data",nbt:"tmp.cost_text.stone_unlock.text",interpret:true}]},click_event:{action:"run_command",command:"/trigger unlock_trigger set 1101"}}
tellraw @s ["", \
  { text: "  §e§l[ 돌 ]§r" },\
  { text: "\n\n" },\
  {storage:"data",nbt:"tmp.creation_ui.stone",interpret:true},\
  { text: "\n" },\
]
