execute store result score #blaze_powder_drop tmp run function resource/nether/blaze/value/drop_value
scoreboard players set #blaze_restore_base_value tmp 100
execute store result score #blaze_restore_value tmp run function resource/nether/blaze/value/regen_value

data modify storage data tmp.resource.blaze.restore_display set value [{ score: { name: "#blaze_restore_value", objective: "tmp" }, color: white }, { text: "§7틱" }]
execute if score #nether_7 advancement matches 1 unless score #nether_advancement_reward_disabled var matches 1 run data modify storage data tmp.resource.blaze.restore_display set value [{ score: { name: "#blaze_restore_base_value", objective: "tmp" }, color: gray }, { text: "§7틱 §8→ " }, { score: { name: "#blaze_restore_value", objective: "tmp" }, color: aqua }, { text: "§7틱 §8(발전 과제 영향 적용)" }]

function resource/nether/blaze/value/drop_upgrade_cost
function resource/convert_upgrade_cost_to_text_named {id:"blaze_drop",insertion:", "}

execute at @s run playsound ui.button.click weather @s ~ ~ ~ 1 2
function util/blank

data modify storage data tmp.creation_ui.blaze_drop set value {text:"§b§l[ 업그레이드 ]",hover_event:{action:"show_text",value:["",{text:"§6[§7 필요한 재료 §6]\n"},{storage:"data",nbt:"tmp.cost_text.blaze_drop.text",interpret:true}]},click_event:{action:"run_command",command:"/trigger upgrade_trigger set 1202"}}
tellraw @s ["", \
  { text: "  §6§l[ 블레이즈 ]§r" },\
  { text: "\n" },\
  { text: "\n  §8•§7 블레이즈 가루 보유량: ", extra: [{ score: { name: "#blaze_powder", objective: "material" }, color: red }, { text: "§7개" } ] },\
  { text: "\n  §8•§7 처치 보상: ", extra: [{ score: { name: "#blaze_powder_drop", objective: "tmp" }, color: red }, { text: "§7개" } ] },\
  { text: "\n  §8•§7 재생산 대기 시간: ", extra: [{ storage: "data", nbt: "tmp.resource.blaze.restore_display", interpret: true }] },\
  { text: "\n" },\
  { text: "\n  ", extra: ["", {storage:"data",nbt:"tmp.creation_ui.blaze_drop",interpret:true}] },\
  { text: "\n" }\
]
