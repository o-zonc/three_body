execute store result score #wood_restore_cooldown tmp run function resource/overworld/wood/value/regen_value

function resource/overworld/wood/value/regen_upgrade_cost
# function dimensions/overworld/shop/crystal_shop/value/apply_material_regen_upgrade_cost_down
function resource/convert_upgrade_cost_to_text_named {id:"wood_regen",insertion:", "}



execute at @s run playsound ui.button.click weather @s ~ ~ ~ 1 2
function util/blank
data modify storage data tmp.creation_ui.wood_regen set value {text:"§b§l[ 업그레이드 ]",hover_event:{action:"show_text",value:["",{text:"§6[§7 필요한 재료 §6]\n"},{storage:"data",nbt:"tmp.cost_text.wood_regen.text",interpret:true}]},click_event:{action:"run_command",command:"/trigger upgrade_trigger set 1101"}}
tellraw @s ["", \
  { text: "  §a§l[ 나무 ]§r" },\
  { text: "\n" },\
  { text: "\n  §8•§7 나무 보유량: ", extra: [{ score: { name: "#wood", objective: "material" }, color:white }, { text: "§7개" } ] },\
  { text: "\n  §8•§7 재생산: 블럭 파괴 후 ", extra: [ { score: { name: "#wood_restore_cooldown", objective: "tmp" }, color: white }, { text: "§7틱의 쿨다운" } ] },\
  { text: "\n" },\
  { text: "\n  ", extra: ["", {storage:"data",nbt:"tmp.creation_ui.wood_regen",interpret:true}] },\
  { text: "\n" },\
]
