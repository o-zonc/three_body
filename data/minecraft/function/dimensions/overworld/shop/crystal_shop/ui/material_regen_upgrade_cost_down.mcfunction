function dimensions/overworld/shop/crystal_shop/value/now_material_regen_upgrade_cost_down_data
execute store result score #material_regen_upgrade_cost_down_display tmp run data get storage data tmp.crystal_shop.material_regen_upgrade_cost_down.now.value 100

function dimensions/overworld/shop/crystal_shop/value/material_regen_upgrade_cost_down_upgrade_cost
function product/convert_upgrade_cost_to_text_named {id:"crystal_shop_material_regen_upgrade_cost_down",insertion:", "}

execute at @s run playsound ui.button.click weather @s ~ ~ ~ 1 2
function util/blank

data modify storage data tmp.creation_ui.crystal_material_regen_cost set value {text:"§b§l[ 업그레이드 ]",hover_event:{action:"show_text",value:["",{text:"§6[§7 필요한 재료 §6]\n"},{storage:"data",nbt:"tmp.cost_text.crystal_shop_material_regen_upgrade_cost_down.text",interpret:true}]},click_event:{action:"run_command",command:"/trigger shop_trigger set 1205"}}
execute if score #trial_active trial matches 1 if score #trial_id trial matches 5 unless score #creation_available_crystal_material_regen_cost trial matches 1 run data modify storage data tmp.creation_ui.crystal_material_regen_cost set value {text:"[ 손실됨 ]",color:"dark_gray",shadow_color:-1428043265,bold:true,hover_event:{action:"show_text",value:{text:"그것은 손실되었습니다.",color:"dark_gray",shadow_color:-1428043265,bold:true}}}
tellraw @s ["", \
  { text: "  §b§l[ 결정 상점 - 자원 재생산 업그레이드 비용 감소 ]§r", shadow_color: -1429069738 },\
  { text: "\n" },\
  { text: "\n  §8•§7 현재 나무/돌/몹 재생산 업그레이드 비용 감소: ", extra: [{ score: { name: "#material_regen_upgrade_cost_down_display", objective: "tmp" }, color:white }, { text: "§7%" }] },\
  { text: "\n" },\
  { text: "\n  ", extra: ["", { text: "§e§l[ 자세한 설명 ]", hover_event:{action:"show_text",value:["자원의 재생산 속도를 올리는 업그레이드를 구매할 때 필요한 자원의 수가 감소합니다.\n\n§8단, 이 효과는 나무, 돌, 몹에 한해서만 적용됩니다."]} }] },\
  { text: "\n  ", extra: ["", {storage:"data",nbt:"tmp.creation_ui.crystal_material_regen_cost",interpret:true}] },\
  { text: "\n" },\
]
