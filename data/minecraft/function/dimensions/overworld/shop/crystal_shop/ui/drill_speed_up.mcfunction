function dimensions/overworld/shop/crystal_shop/value/now_drill_speed_up_data
execute store result score #drill_speed_up_display tmp run data get storage data tmp.crystal_shop.drill_speed_up.now.value 100

function dimensions/overworld/shop/crystal_shop/value/drill_speed_up_upgrade_cost
function product/convert_upgrade_cost_to_text_named {id:"crystal_shop_drill_speed_up",insertion:", "}

execute at @s run playsound ui.button.click weather @s ~ ~ ~ 1 2
function util/blank

data modify storage data tmp.creation_ui.crystal_drill_speed set value {text:"§b§l[ 업그레이드 ]",hover_event:{action:"show_text",value:["",{text:"§6[§7 필요한 재료 §6]\n"},{storage:"data",nbt:"tmp.cost_text.crystal_shop_drill_speed_up.text",interpret:true}]},click_event:{action:"run_command",command:"/trigger shop_trigger set 1203"}}
execute if score #trial_active trial matches 1 if score #trial_id trial matches 5 unless score #creation_available_crystal_drill_speed trial matches 1 run data modify storage data tmp.creation_ui.crystal_drill_speed set value {text:"[ 손실됨 ]",color:"dark_gray",shadow_color:-1428043265,bold:true,hover_event:{action:"show_text",value:{text:"그것은 손실되었습니다.",color:"dark_gray",shadow_color:-1428043265,bold:true}}}
tellraw @s ["", \
  { text: "  §b§l[ 결정 상점 - 드릴 속도 증폭 ]§r", shadow_color: -1429069738 },\
  { text: "\n" },\
  { text: "\n  §8•§7 현재 드릴 최종 속도: ", extra: [{ score: { name: "#drill_speed_up_display", objective: "tmp" }, color:white }, { text: "§7%" }] },\
  { text: "\n" },\
  { text: "\n  ", extra: ["", { text: "§e§l[ 자세한 설명 ]", hover_event:{action:"show_text",value:["동굴 구역의 드릴이 Y 좌표를 낮추는 속도가 추가로 상승합니다."]} }] },\
  { text: "\n  ", extra: ["", {storage:"data",nbt:"tmp.creation_ui.crystal_drill_speed",interpret:true}] },\
  { text: "\n" },\
]
