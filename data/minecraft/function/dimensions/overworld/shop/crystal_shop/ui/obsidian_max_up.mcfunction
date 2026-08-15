execute store result score #obsidian_max_up_value_base tmp run function dimensions/overworld/shop/crystal_shop/value/obsidian_max_up_base_value
execute store result score #obsidian_max_up_value tmp run function dimensions/overworld/shop/crystal_shop/value/obsidian_max_up_value
scoreboard players set #obsidian_max_up_storage_effect tmp 0
function dimensions/nether/obsidian_storage/effective_milestone
execute if score #obsidian_storage_effective_milestone tmp matches 400.. unless score #obsidian_max_up_value_base tmp = #obsidian_max_up_value tmp run scoreboard players set #obsidian_max_up_storage_effect tmp 1

data modify storage data tmp.crystal_shop.obsidian_max_up.display set value []
execute unless score #obsidian_max_up_storage_effect tmp matches 1 run data modify storage data tmp.crystal_shop.obsidian_max_up.display set value [{ score: { name: "#obsidian_max_up_value", objective: "tmp" }, color:white }, { text: "§7개" }]
execute if score #obsidian_max_up_storage_effect tmp matches 1 run data modify storage data tmp.crystal_shop.obsidian_max_up.display set value [{ score: { name: "#obsidian_max_up_value_base", objective: "tmp" }, color:white }, { text: "§7개 §8→ §f" }, { score: { name: "#obsidian_max_up_value", objective: "tmp" }, color:white }, { text: "§7개 §8(흑요석 저장고 이정표 영향 적용)" }]

function dimensions/overworld/shop/crystal_shop/value/obsidian_max_up_upgrade_cost
function resource/convert_upgrade_cost_to_text_named {id:"crystal_shop_obsidian_max_up",insertion:", "}

execute at @s run playsound ui.button.click weather @s ~ ~ ~ 1 2
function util/blank

data modify storage data tmp.creation_ui.crystal_obsidian_max set value {text:"§b§l[ 업그레이드 ]",hover_event:{action:"show_text",value:["",{text:"§6[§7 필요한 재료 §6]\n"},{storage:"data",nbt:"tmp.cost_text.crystal_shop_obsidian_max_up.text",interpret:true}]},click_event:{action:"run_command",command:"/trigger shop_trigger set 1201"}}
tellraw @s ["", \
  { text: "  §b§l[ 결정 상점 - 흑요석 최대 소지량 증가 ]§r", shadow_color: -1429069738 },\
  { text: "\n" },\
  { text: "\n  §8•§7 현재 흑요석 최대 소지량: ", extra: [{ storage: "data", nbt: "tmp.crystal_shop.obsidian_max_up.display[]", interpret: true, separator: { text: "" } }] },\
  { text: "\n" },\
  { text: "\n  ", extra: ["", { text: "§e§l[ 자세한 설명 ]", hover_event:{action:"show_text",value:["흑요석을 더 많이 보유할 수 있게 됩니다."]} }] },\
  { text: "\n  ", extra: ["", {storage:"data",nbt:"tmp.creation_ui.crystal_obsidian_max",interpret:true}] },\
  { text: "\n" },\
]
