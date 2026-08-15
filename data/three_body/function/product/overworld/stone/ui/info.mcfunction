execute store result score #stone_restore_value tmp run function product/overworld/stone/value/regen_value

function product/overworld/stone/value/regen_upgrade_cost
function dimensions/overworld/shop/crystal_shop/value/apply_material_regen_upgrade_cost_down
function product/convert_upgrade_cost_to_text_named {id:"stone_regen",insertion:", "}


execute at @s run playsound ui.button.click weather @s ~ ~ ~ 1 2
function util/blank

data modify storage data tmp.creation_ui.stone_regen set value {text:"§b§l[ 업그레이드 ]",hover_event:{action:"show_text",value:["",{text:"§6[§7 필요한 재료 §6]\n"},{storage:"data",nbt:"tmp.cost_text.stone_regen.text",interpret:true}]},click_event:{action:"run_command",command:"/trigger upgrade_trigger set 1102"}}
execute if score #trial_active trial matches 1 if score #trial_id trial matches 5 unless score #creation_available_stone_regen trial matches 1 run data modify storage data tmp.creation_ui.stone_regen set value {text:"[ 손실됨 ]",color:"dark_gray",shadow_color:-1428043265,bold:true,hover_event:{action:"show_text",value:{text:"그것은 손실되었습니다.",color:"dark_gray",shadow_color:-1428043265,bold:true}}}
tellraw @s ["", \
  { text: "  §e§l[ 돌 ]§r" },\
  { text: "\n" },\
  { text: "\n  §8•§7 돌 보유량: ", extra: [{ score: { name: "#stone", objective: "material" }, color:white }, { text: "§7개" } ] },\
  { text: "\n  §8•§7 재생산: 나무 ", extra: [ { score: { name: "#stone_restore_value", objective: "tmp" }, color: white }, { text: "§7회 파괴 시" } ] },\
  { text: "\n" },\
  { text: "\n  ", extra: ["", {storage:"data",nbt:"tmp.creation_ui.stone_regen",interpret:true}] },\
  { text: "\n" },\
]
