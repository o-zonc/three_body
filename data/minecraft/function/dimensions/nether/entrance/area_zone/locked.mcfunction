# execute if score #trial_active trial matches 1 if score #trial_id trial matches 3 run return run function trial/dimension/switch
execute if score #area_zone unlock matches 1 run return 0

execute at @s run playsound ui.button.click weather @s ~ ~ ~ 1 2
function util/blank

data modify storage data tmp.creation_ui.area_zone set value {text:"         §c§l🔒",hover_event:{action:"show_text",value:{text:"§9클릭하여 해금\n§7조건을 만족해야 합니다."}},click_event:{action:"run_command",command:"/trigger entrance_trigger set 1201"}}
execute if score #trial_active trial matches 1 if score #trial_id trial matches 5 unless score #creation_available_area_zone trial matches 1 run data modify storage data tmp.creation_ui.area_zone set value {text:"         ✶",color:"dark_gray",shadow_color:-1428043265,bold:true,hover_event:{action:"show_text",value:{text:"그것은 손실되었습니다.",color:"dark_gray",shadow_color:-1428043265,bold:true}}}
tellraw @s ["", \
  { text: "  §e§l< 구역 §6§lArea Zone§e§l >§r" },\
  { text: "\n\n" },\
  {storage:"data",nbt:"tmp.creation_ui.area_zone",interpret:true},\
  { text: "\n" },\
]
