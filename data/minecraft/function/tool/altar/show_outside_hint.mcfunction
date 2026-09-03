function tool/get_now_tool_data

# 현재 단계의 cost는 다음 도구 단계로 승천할 때 필요한 제물이다.
execute if data storage data tmp.tool.now.cost run data remove storage data tmp.cost
execute if data storage data tmp.tool.now.cost run data remove storage data tmp.cost_original
execute if data storage data tmp.tool.now.cost run data modify storage data tmp.cost set from storage data tmp.tool.now.cost
execute if data storage data tmp.tool.now.cost run function resource/convert_upgrade_cost_to_text_named {id:"tool_upgrade",insertion:", "}

execute unless entity @a[tag=accelerator_experiment_running] if data storage data tmp.tool.now.cost run title @s actionbar ["",{text:"하늘의 힘은 천공의 제단 위에서만 응답합니다.",color:"aqua",italic:true},{text:" 다음 업그레이드: ",color:"gray",italic:true},{storage:"data",nbt:"tmp.cost_text.tool_upgrade.text",interpret:true,italic:true}]
execute unless entity @a[tag=accelerator_experiment_running] unless data storage data tmp.tool.now.cost run title @s actionbar {text:"하늘의 힘은 천공의 제단 위에서만 응답합니다.",color:"aqua",italic:true}
