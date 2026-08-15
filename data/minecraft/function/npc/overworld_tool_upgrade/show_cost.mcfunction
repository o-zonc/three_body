function tool/get_now_tool_data

data remove storage data tmp.cost
data remove storage data tmp.cost_original
data modify storage data tmp.cost set from storage data tmp.tool.now.cost
function resource/convert_upgrade_cost_to_text_named {id:"tool_upgrade",insertion:", "}

execute at @s run playsound block.note_block.bit weather @s ~ ~ ~ 1 1
title @s actionbar ["", { text: "§7§l필요한 재료:§r " }, { storage: "data", nbt: "tmp.cost_text.tool_upgrade.text", interpret: true }]
