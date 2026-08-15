function tool/get_now_tool_data

data remove storage data tmp.cost
data remove storage data tmp.cost_original
data modify storage data tmp.cost set from storage data tmp.tool.now.cost
function product/convert_upgrade_cost_to_text_named {id:"tool_upgrade",insertion:", "}

execute at @s run playsound block.note_block.bit weather @s ~ ~ ~ 1 1
execute if score #trial_active trial matches 1 if score #trial_id trial matches 5 unless score #creation_available_tool trial matches 1 run title @s actionbar {"text":"그것은 손실되었습니다.","color":"dark_gray","shadow_color":-1428043265,"bold":true,"hover_event":{"action":"show_text","value":{"text":"그것은 손실되었습니다.","color":"dark_gray","shadow_color":-1428043265,"bold":true}}}
execute if score #trial_active trial matches 1 if score #trial_id trial matches 5 unless score #creation_available_tool trial matches 1 run return 0
title @s actionbar ["", { text: "§7§l필요한 재료:§r " }, { storage: "data", nbt: "tmp.cost_text.tool_upgrade.text", interpret: true }]
