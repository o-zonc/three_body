execute store result score #mob_restore_value tmp run function resource/overworld/mob/value/regen_value

function resource/overworld/mob/value/regen_upgrade_cost
function dimensions/overworld/shop/crystal_shop/value/apply_material_regen_upgrade_cost_down
function resource/convert_upgrade_cost_to_text_named {id:"mob_regen",insertion:", "}


execute at @s run playsound ui.button.click weather @s ~ ~ ~ 1 2
function util/blank

data modify storage data tmp.creation_ui.mob_regen set value {text:"§b§l[ 업그레이드 ]",hover_event:{action:"show_text",value:["",{text:"§6[§7 필요한 재료 §6]\n"},{storage:"data",nbt:"tmp.cost_text.mob_regen.text",interpret:true}]},click_event:{action:"run_command",command:"/trigger upgrade_trigger set 1103"}}
tellraw @s ["", \
  { text: "  §6§l[ 몹 ]§r" },\
  { text: "\n" },\
  { text: "\n  §8•§7 재생산: 몹 처치 후 ", extra: [ { score: { name: "#mob_restore_value", objective: "tmp" }, color: white }, { text: "§7틱의 쿨다운" } ] },\
  { text: "\n" },\
  { text: "\n  ", extra: ["", {storage:"data",nbt:"tmp.creation_ui.mob_regen",interpret:true}] },\
  { text: "\n" },\
]
