execute store result score #gold_restore_cooldown tmp run function resource/nether/gold/value/regen_value

function resource/nether/gold/value/regen_upgrade_cost
function resource/convert_upgrade_cost_to_text_named {id:"gold_regen",insertion:", "}

data modify storage data tmp.resource.gold.gain_display set value [{ text: "§f1개" }]
execute if score #nether_8 advancement matches 1 unless score #nether_advancement_reward_disabled var matches 1 run data modify storage data tmp.resource.gold.gain_display set value [{ text: "§71개 §8→ §f4개 §8(발전 과제 영향 적용)" }]

execute at @s run playsound ui.button.click weather @s ~ ~ ~ 1 2
function util/blank
data modify storage data tmp.creation_ui.gold_regen set value {text:"§b§l[ 업그레이드 ]",hover_event:{action:"show_text",value:["",{text:"§6[§7 필요한 재료 §6]\n"},{storage:"data",nbt:"tmp.cost_text.gold_regen.text",interpret:true}]},click_event:{action:"run_command",command:"/trigger upgrade_trigger set 1201"}}
tellraw @s ["", \
  { text: "  §6§l[ 금 ]§r", shadow_color: -1426128896 },\
  { text: "\n" },\
  { text: "\n  §8•§7 금 보유량: ", extra: [{ score: { name: "#gold", objective: "material" }}, { text: "§7개" } ] },\
  { text: "\n  §8•§7 재생된 블럭 파괴 시 ", extra: [ { score: { name: "#gold_restore_cooldown", objective: "tmp" }}, { text: "§7틱의 쿨다운" } ] },\
  { text: "\n  §8•§7 채굴 획득량: ", extra: [{ storage: "data", nbt: "tmp.resource.gold.gain_display[]", interpret: true, separator: { text: "" } }] },\
  { text: "\n" },\
  { text: "\n  ", extra: ["", {storage:"data",nbt:"tmp.creation_ui.gold_regen",interpret:true}] },\
  { text: "\n" },\
]
