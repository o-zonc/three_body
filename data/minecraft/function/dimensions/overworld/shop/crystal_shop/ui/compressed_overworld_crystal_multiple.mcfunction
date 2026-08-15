function dimensions/overworld/shop/crystal_shop/value/now_compressed_overworld_crystal_multiple_data
execute store result score #compressed_overworld_crystal_multiple_display tmp run data get storage data tmp.crystal_shop.compressed_overworld_crystal_multiple.now.value 100

function dimensions/overworld/shop/crystal_shop/value/compressed_overworld_crystal_multiple_upgrade_cost
function product/convert_upgrade_cost_to_text_named {id:"crystal_shop_compressed_overworld_crystal_multiple",insertion:", "}

execute at @s run playsound ui.button.click weather @s ~ ~ ~ 1 2
function util/blank

data modify storage data tmp.creation_ui.crystal_overworld_crystal set value {text:"§b§l[ 업그레이드 ]",hover_event:{action:"show_text",value:["",{text:"§6[§7 필요한 재료 §6]\n"},{storage:"data",nbt:"tmp.cost_text.crystal_shop_compressed_overworld_crystal_multiple.text",interpret:true}]},click_event:{action:"run_command",command:"/trigger shop_trigger set 1207"}}
execute if score #trial_active trial matches 1 if score #trial_id trial matches 5 unless score #creation_available_crystal_overworld_crystal trial matches 1 run data modify storage data tmp.creation_ui.crystal_overworld_crystal set value {text:"[ 손실됨 ]",color:"dark_gray",shadow_color:-1428043265,bold:true,hover_event:{action:"show_text",value:{text:"그것은 손실되었습니다.",color:"dark_gray",shadow_color:-1428043265,bold:true}}}
tellraw @s ["", \
  { text: "  §b§l[ 결정 상점 - 오버월드 압축 결정 획득량 증폭 ]§r", shadow_color: -1429069738 },\
  { text: "\n" },\
  { text: "\n  §8•§7 현재 오버월드 압축 결정 획득량: ", extra: [{ score: { name: "#compressed_overworld_crystal_multiple_display", objective: "tmp" }, color:white }, { text: "§7%" }] },\
  { text: "\n" },\
  { text: "\n  ", extra: ["", { text: "§e§l[ 자세한 설명 ]", hover_event:{action:"show_text",value:["오버월드 차원을 압축할 때 획득하는 오버월드 차원 압축 결정의 갯수가 증가합니다."]} }] },\
  { text: "\n  ", extra: ["", {storage:"data",nbt:"tmp.creation_ui.crystal_overworld_crystal",interpret:true}] },\
  { text: "\n" },\
]
