function dimensions/overworld/shop/crystal_shop/value/now_material_shop_cost_down_data
execute store result score #material_shop_cost_down_display tmp run data get storage data tmp.crystal_shop.material_shop_cost_down.now.value 100

function dimensions/overworld/shop/crystal_shop/value/material_shop_cost_down_upgrade_cost
function product/convert_upgrade_cost_to_text_named {id:"crystal_shop_material_shop_cost_down",insertion:", "}

execute at @s run playsound ui.button.click weather @s ~ ~ ~ 1 2
function util/blank

data modify storage data tmp.creation_ui.crystal_material_shop_cost set value {text:"§b§l[ 업그레이드 ]",hover_event:{action:"show_text",value:["",{text:"§6[§7 필요한 재료 §6]\n"},{storage:"data",nbt:"tmp.cost_text.crystal_shop_material_shop_cost_down.text",interpret:true}]},click_event:{action:"run_command",command:"/trigger shop_trigger set 1206"}}
execute if score #trial_active trial matches 1 if score #trial_id trial matches 5 unless score #creation_available_crystal_material_shop_cost trial matches 1 run data modify storage data tmp.creation_ui.crystal_material_shop_cost set value {text:"[ 손실됨 ]",color:"dark_gray",shadow_color:-1428043265,bold:true,hover_event:{action:"show_text",value:{text:"그것은 손실되었습니다.",color:"dark_gray",shadow_color:-1428043265,bold:true}}}
tellraw @s ["", \
  { text: "  §b§l[ 결정 상점 - 자원 상점 비용 감소 ]§r", shadow_color: -1429069738 },\
  { text: "\n" },\
  { text: "\n  §8•§7 현재 자원 상점 업그레이드 비용 감소: ", extra: [{ score: { name: "#material_shop_cost_down_display", objective: "tmp" }, color:white }, { text: "§7%" }] },\
  { text: "\n" },\
  { text: "\n  ", extra: ["", { text: "§e§l[ 자세한 설명 ]", hover_event:{action:"show_text",value:["자원 상점에서 업그레이드 요소를 구매할 때 필요한 자원의 갯수가 감소합니다."]} }] },\
  { text: "\n  ", extra: ["", {storage:"data",nbt:"tmp.creation_ui.crystal_material_shop_cost",interpret:true}] },\
  { text: "\n" },\
]
