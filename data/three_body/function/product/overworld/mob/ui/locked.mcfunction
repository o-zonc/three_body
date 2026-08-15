data remove storage data tmp.cost
data remove storage data tmp.cost_original
data modify storage data tmp.cost set from storage data const.product.mob.unlock_cost
function product/convert_cost_to_text_named {id:"mob_unlock",insertion:", "}

execute at @s run playsound ui.button.click weather @s ~ ~ ~ 1 2
function util/blank

data modify storage data tmp.creation_ui.mob set value {text:"    §c§l🔒",hover_event:{action:"show_text",value:["",{text:"§9클릭하여 해금§r\n\n§6[§7 필요한 재료 §6]\n"},{storage:"data",nbt:"tmp.cost_text.mob_unlock.text",interpret:true}]},click_event:{action:"run_command",command:"/trigger unlock_trigger set 1102"}}
execute if score #trial_active trial matches 1 if score #trial_id trial matches 5 unless score #creation_available_mob trial matches 1 run data modify storage data tmp.creation_ui.mob set value {text:"   ✶",color:"dark_gray",shadow_color:-1428043265,bold:true,hover_event:{action:"show_text",value:{text:"그것은 손실되었습니다.",color:"dark_gray",shadow_color:-1428043265,bold:true}}}
tellraw @s ["", \
  { text: "  §6§l[ 몹 ]§r" },\
  { text: "\n\n" },\
  {storage:"data",nbt:"tmp.creation_ui.mob",interpret:true},\
  { text: "\n" },\
]
