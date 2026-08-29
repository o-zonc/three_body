# Macro args: name, hint
execute at @s run playsound block.note_block.bass weather @s ~ ~ ~ 0.8 0.5
function util/blank
$tellraw @s ["",{text:"  §8§l[ $(name) ]§r"},{text:"\n\n    "},{text:"§c§l🔒",hover_event:{action:"show_text",value:["",{text:"§9§l해금 조건§r\n"},{text:"§f$(hint)"}]},click_event:{action:"run_command",command:"/trigger unlock_trigger set 1000"}},{text:"\n"}]
execute at @s run playsound ui.button.click weather @s ~ ~ ~ 1 2
