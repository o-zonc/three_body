function dimensions/overworld/shop/material_shop/value/now_wood_data
execute store result score #wood_base_value tmp run data get storage data tmp.material_shop.wood.now.value
execute store result score #wood_value tmp run function dimensions/overworld/shop/material_shop/value/wood_value
data modify storage data tmp.material_shop.wood.value_component set value ["",{score:{name:"#wood_value",objective:"tmp"},color:"white"},{text:"§7배"}]
execute unless score #wood_base_value tmp = #wood_value tmp run data modify storage data tmp.material_shop.wood.value_component set value ["",{score:{name:"#wood_base_value",objective:"tmp"},color:"white"},{text:"§7배 §8→ "},{score:{name:"#wood_value",objective:"tmp"},color:"aqua"},{text:"§7배 §8(발전 과제 영향 적용)"}]

function dimensions/overworld/shop/material_shop/value/wood_upgrade_cost
function dimensions/overworld/shop/crystal_shop/value/apply_material_shop_cost_down
function dimensions/overworld/shop/material_shop/convert_cost_to_text_named {id:"material_shop_wood",insertion:", "}

execute at @s run playsound ui.button.click weather @s ~ ~ ~ 1 2
function util/blank

data modify storage data tmp.creation_ui.material_shop_wood set value {text:"§b§l[ 업그레이드 ]",hover_event:{action:"show_text",value:["",{text:"§6[§7 필요한 재료 §6]\n"},{storage:"data",nbt:"tmp.cost_text.material_shop_wood.text",interpret:true}]},click_event:{action:"run_command",command:"/trigger shop_trigger set 1101"}}
tellraw @s ["", \
  { text: "  [ 자원 상점 - 나무 ]", color: "yellow", bold: true, shadow_color: -16777216 },\
  { text: "\n" },\
  { text: "\n  §8•§7 현재 수급량: ", extra: [{ storage: "data", nbt: "tmp.material_shop.wood.value_component", interpret: true }] },\
  { text: "\n" },\
  { text: "\n  ", extra: ["", {storage:"data",nbt:"tmp.creation_ui.material_shop_wood",interpret:true}] },\
  { text: "\n" },\
]
