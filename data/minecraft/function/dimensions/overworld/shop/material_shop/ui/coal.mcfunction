function dimensions/overworld/shop/material_shop/value/now_coal_data
execute store result score #coal_base_value tmp run data get storage data tmp.material_shop.coal.now.value
execute store result score #coal_value tmp run function dimensions/overworld/shop/material_shop/value/coal_value
function dimensions/overworld/shop/material_shop/value/quartz_return_rate_text
scoreboard players set #10_1_effective tmp 0
data modify storage data tmp.material_shop.coal.value_component set value ["",{score:{name:"#coal_value",objective:"tmp"},color:"white"},{text:"§7배"}]
data modify storage data tmp.material_shop.coal.value_effects set value []
execute if score #10_1_effective tmp matches 1 run data modify storage data tmp.material_shop.coal.value_effects append value { text: "", extra: [{ text: "§6🍀 " }, { text: "고대의 회귀", color:aqua, bold:true, shadow_color:-1426128896 }, { text: "§7: 효과 배율 §e+" }, { storage: "data", nbt: "tmp.material_shop.quartz_return_rate_text[]", interpret: true, separator: { text: "" } }, { text: "§e배" }] }
execute unless score #coal_base_value tmp = #coal_value tmp run data modify storage data tmp.material_shop.coal.value_component set value ["",{score:{name:"#coal_base_value",objective:"tmp"},color:"white"},{text:"§7배 §8→ "},{score:{name:"#coal_value",objective:"tmp"},color:"aqua"},{text:"§7배 "},{text:"§6🍀 ",hover_event:{action:"show_text",value:{storage:"data",nbt:"tmp.material_shop.coal.value_effects[]",interpret:true,separator:"\n"}}}]

function dimensions/overworld/shop/material_shop/value/coal_upgrade_cost
function dimensions/overworld/shop/crystal_shop/value/apply_material_shop_cost_down
function dimensions/overworld/shop/material_shop/convert_cost_to_text_named {id:"material_shop_coal",insertion:", "}

execute at @s run playsound ui.button.click weather @s ~ ~ ~ 1 2
function util/blank

data modify storage data tmp.creation_ui.material_shop_coal set value {text:"§b§l[ 업그레이드 ]",hover_event:{action:"show_text",value:["",{text:"§6[§7 필요한 재료 §6]\n"},{storage:"data",nbt:"tmp.cost_text.material_shop_coal.text",interpret:true}]},click_event:{action:"run_command",command:"/trigger shop_trigger set 1103"}}
tellraw @s ["", \
  { text: "  §6§l[ 자원 상점 - 석탄 ]§r" },\
  { text: "\n" },\
  { text: "\n  §8•§7 현재 수급량: ", extra: [{ storage: "data", nbt: "tmp.material_shop.coal.value_component", interpret: true }] },\
  { text: "\n" },\
  { text: "\n  ", extra: ["", {storage:"data",nbt:"tmp.creation_ui.material_shop_coal",interpret:true}] },\
  { text: "\n" },\
]
