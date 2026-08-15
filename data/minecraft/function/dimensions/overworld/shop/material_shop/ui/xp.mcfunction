function dimensions/overworld/shop/material_shop/value/now_xp_data
execute store result score #xp_base_value tmp run data get storage data tmp.material_shop.xp.now.value
execute store result score #xp_value tmp run function dimensions/overworld/shop/material_shop/value/xp_value
data modify storage data tmp.material_shop.xp.value_component set value ["",{score:{name:"#xp_value",objective:"tmp"},color:"white"},{text:"§7 XP"}]
execute unless score #xp_base_value tmp = #xp_value tmp run data modify storage data tmp.material_shop.xp.value_component set value ["",{score:{name:"#xp_base_value",objective:"tmp"},color:"white"},{text:"§7 XP §8→ "},{score:{name:"#xp_value",objective:"tmp"},color:"aqua"},{text:"§7 XP §8(발전 과제 영향 적용)"}]

function dimensions/overworld/shop/material_shop/value/xp_upgrade_cost
function dimensions/overworld/shop/crystal_shop/value/apply_material_shop_cost_down
function dimensions/overworld/shop/material_shop/convert_cost_to_text_named {id:"material_shop_xp",insertion:", "}

execute at @s run playsound ui.button.click weather @s ~ ~ ~ 1 2
function util/blank

data modify storage data tmp.creation_ui.material_shop_xp set value {text:"§b§l[ 업그레이드 ]",hover_event:{action:"show_text",value:["",{text:"§6[§7 필요한 재료 §6]\n"},{storage:"data",nbt:"tmp.cost_text.material_shop_xp.text",interpret:true}]},click_event:{action:"run_command",command:"/trigger shop_trigger set 1105"}}
execute if score #trial_active trial matches 1 if score #trial_id trial matches 5 unless score #creation_available_material_shop_xp trial matches 1 run data modify storage data tmp.creation_ui.material_shop_xp set value {text:"[ 손실됨 ]",color:"dark_gray",shadow_color:-1428043265,bold:true,hover_event:{action:"show_text",value:{text:"그것은 손실되었습니다.",color:"dark_gray",shadow_color:-1428043265,bold:true}}}
tellraw @s ["", \
  { text: "  §6§l[ 자원 상점 - 경험치 ]§r" },\
  { text: "\n" },\
  { text: "\n  §8•§7 경험치 구슬 값: ", extra: [{ storage: "data", nbt: "tmp.material_shop.xp.value_component", interpret: true }] },\
  { text: "\n" },\
  { text: "\n  ", extra: ["", {storage:"data",nbt:"tmp.creation_ui.material_shop_xp",interpret:true}] },\
  { text: "\n" },\
]
