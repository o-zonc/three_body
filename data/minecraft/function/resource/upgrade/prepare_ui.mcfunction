# Macro args: id, trigger
$execute unless score #$(id)_regen_lvl upgrade = #$(id)_regen_lvl upgrade run scoreboard players set #$(id)_regen_lvl upgrade 0
$execute store result storage data tmp.resource.upgrade_ui.lvl int 1 run scoreboard players get #$(id)_regen_lvl upgrade
$data modify storage data tmp.resource.upgrade_ui.id set value "$(id)"
function resource/upgrade/read_cost with storage data tmp.resource.upgrade_ui
$function resource/convert_upgrade_cost_to_text_named {id:"$(id)_regen",insertion:", "}
$data modify storage data tmp.creation_ui.$(id)_regen set value {text:"[ 업그레이드 완료 ]",color:"dark_gray",bold:true}
$execute if data storage data tmp.cost run data modify storage data tmp.creation_ui.$(id)_regen set value {text:"[ 업그레이드 ]",color:"aqua",bold:true,hover_event:{action:"show_text",value:["",{text:"§6[§7 필요한 재료 §6]\n"},{storage:"data",nbt:"tmp.cost_text.$(id)_regen.text",interpret:true}]},click_event:{action:"run_command",command:"/trigger upgrade_trigger set $(trigger)"}}
