function dimensions/overworld/shop/crystal_shop/value/now_dig_speed_up_data
execute store result score #dig_speed_up_display tmp run data get storage data tmp.crystal_shop.dig_speed_up.now.value 100

function dimensions/overworld/shop/crystal_shop/value/dig_speed_up_upgrade_cost
function product/convert_upgrade_cost_to_text_named {id:"crystal_shop_dig_speed_up",insertion:", "}

execute at @s run playsound ui.button.click weather @s ~ ~ ~ 1 2
function util/blank

data modify storage data tmp.creation_ui.crystal_dig_speed set value {text:"§b§l[ 업그레이드 ]",hover_event:{action:"show_text",value:["",{text:"§6[§7 필요한 재료 §6]\n"},{storage:"data",nbt:"tmp.cost_text.crystal_shop_dig_speed_up.text",interpret:true}]},click_event:{action:"run_command",command:"/trigger shop_trigger set 1202"}}
tellraw @s ["", \
  { text: "  §b§l[ 결정 상점 - 채광 속도 증폭 ]§r", shadow_color: -1429069738 },\
  { text: "\n" },\
  { text: "\n  §8•§7 현재 채광 속도 증폭: ", extra: [{ score: { name: "#dig_speed_up_display", objective: "tmp" }, color:white }, { text: "§7%" }] },\
  { text: "\n" },\
  { text: "\n  ", extra: ["", { text: "§e§l[ 자세한 설명 ]", hover_event:{action:"show_text",value:["도구의 블럭 파괴 속도와 별개로, 기본적으로 블럭을 파괴하는 속도가 상승합니다."]} }] },\
  { text: "\n  ", extra: ["", {storage:"data",nbt:"tmp.creation_ui.crystal_dig_speed",interpret:true}] },\
  { text: "\n" },\
]
