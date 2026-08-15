execute store result score #obsidian_max_up_value_base tmp run function dimensions/overworld/shop/crystal_shop/value/obsidian_max_up_base_value
execute store result score #obsidian_max_up_value tmp run function dimensions/overworld/shop/crystal_shop/value/obsidian_max_up_value
execute store result score #obsidian_restore_cooldown tmp run function resource/overworld/obsidian/value/regen_value

scoreboard players set #obsidian_max_up_storage_effect tmp 0
function dimensions/nether/obsidian_storage/effective_milestone
execute if score #obsidian_storage_effective_milestone tmp matches 400.. unless score #obsidian_max_up_value_base tmp = #obsidian_max_up_value tmp run scoreboard players set #obsidian_max_up_storage_effect tmp 1

data modify storage data tmp.resource.obsidian.max_display set value []
execute unless score #obsidian_max_up_storage_effect tmp matches 1 run data modify storage data tmp.resource.obsidian.max_display set value [{ score: { name: "#obsidian", objective: "material" }, color:white }, { text: "§7/" }, { score: { name: "#obsidian_max_up_value", objective: "tmp" }, color:white }, { text: "§7개" }]
execute if score #obsidian_max_up_storage_effect tmp matches 1 run data modify storage data tmp.resource.obsidian.max_display set value [{ score: { name: "#obsidian", objective: "material" }, color:white }, { text: "§7/" }, { score: { name: "#obsidian_max_up_value_base", objective: "tmp" }, color:white }, { text: "§7개 §8→ §f" }, { score: { name: "#obsidian", objective: "material" }, color:white }, { text: "§7/" }, { score: { name: "#obsidian_max_up_value", objective: "tmp" }, color:white }, { text: "§7개 §8(흑요석 저장고 이정표 영향 적용)" }]

scoreboard players set #obsidian_nether_6_effective tmp 0
execute if score #nether_6 advancement matches 1 unless score #nether_advancement_reward_disabled var matches 1 run scoreboard players set #obsidian_nether_6_effective tmp 1
data modify storage data tmp.resource.obsidian.gain_display set value [{ text: "§f1개" }]
execute if score #obsidian_nether_6_effective tmp matches 1 run data modify storage data tmp.resource.obsidian.gain_display set value [{ text: "§71개 §8→ §f4개 §8(발전 과제 영향 적용)" }]
function dimensions/nether/workshop/effect/5_1/effective
execute if score #5_1_effective tmp matches 1 unless score #obsidian_nether_6_effective tmp matches 1 run data modify storage data tmp.resource.obsidian.gain_display set value [{ text: "§71개 §8→ §f20개 " }, { text: "§6🍀", hover_event: { action: "show_text", value: ["", { text: "§6🍀 " }, { text: "심계층 간섭", color:aqua, bold:true, shadow_color:-1426128896 }, { text: "§7 효과로 인해 흑요석 수급량이 20배 증가합니다." }] } }]
execute if score #5_1_effective tmp matches 1 if score #obsidian_nether_6_effective tmp matches 1 run data modify storage data tmp.resource.obsidian.gain_display set value [{ text: "§71개 §8→ §f80개 §8(발전 과제 영향 적용) " }, { text: "§6🍀", hover_event: { action: "show_text", value: ["", { text: "§6🍀 " }, { text: "심계층 간섭", color:aqua, bold:true, shadow_color:-1426128896 }, { text: "§7 효과로 인해 흑요석 수급량이 20배 증가합니다." }] } }]

scoreboard players set #ten tmp 10
scoreboard players set #twenty tmp 20
scoreboard players operation #obsidian_restore_second_x10 tmp = #obsidian_restore_cooldown tmp
scoreboard players operation #obsidian_restore_second_x10 tmp *= #ten tmp
scoreboard players operation #obsidian_restore_second_x10 tmp /= #twenty tmp
scoreboard players operation #obsidian_restore_second_int tmp = #obsidian_restore_second_x10 tmp
scoreboard players operation #obsidian_restore_second_int tmp /= #ten tmp
scoreboard players operation #obsidian_restore_second_decimal tmp = #obsidian_restore_second_x10 tmp
scoreboard players operation #obsidian_restore_second_decimal tmp %= #ten tmp

data modify storage data tmp.resource.obsidian.restore_display set value [{ score: { name: "#obsidian_restore_second_int", objective: "tmp" }, color:white }, { text: "§7." }, { score: { name: "#obsidian_restore_second_decimal", objective: "tmp" }, color:white }, { text: "§7초 §8(Y -56 이하부터 급격히 빨라짐)" }]
execute if score #5_1_effective tmp matches 1 run data modify storage data tmp.resource.obsidian.restore_display set value [{ score: { name: "#obsidian_restore_second_int", objective: "tmp" }, color:white }, { text: "§7." }, { score: { name: "#obsidian_restore_second_decimal", objective: "tmp" }, color:white }, { text: "§7초 " }, { text: "§6🍀", hover_event: { action: "show_text", value: ["", { text: "§6🍀 " }, { text: "심계층 간섭", color:aqua, bold:true, shadow_color:-1426128896 }, { text: "§7 효과로 인해 오버월드 Y 좌표가 -64로 고정됩니다." }] } }]
execute if score #trial_active trial matches 1 if score #trial_id trial matches 5 unless score #creation_available_obsidian_resourceion trial matches 1 run data modify storage data tmp.resource.obsidian.restore_display set value [{text:"[ 손실됨 ]",color:"dark_gray",shadow_color:-1428043265,bold:true,hover_event:{action:"show_text",value:{text:"그것은 손실되었습니다.",color:"dark_gray",shadow_color:-1428043265,bold:true}}}]

execute at @s run playsound ui.button.click weather @s ~ ~ ~ 1 2
function util/blank

tellraw @s ["", \
  { text: "  §5§l[ 흑요석 ]§r" },\
  { text: "\n" },\
  { text: "\n  §8•§7 흑요석 보유량: ", extra: [{ storage: "data", nbt: "tmp.resource.obsidian.max_display[]", interpret: true, separator: { text: "" } }] },\
  { text: "\n  §8•§7 채굴 획득량: ", extra: [{ storage: "data", nbt: "tmp.resource.obsidian.gain_display[]", interpret: true, separator: { text: "" } }] },\
  { text: "\n  §8•§7 재생산 대기: ", extra: [{ storage: "data", nbt: "tmp.resource.obsidian.restore_display[]", interpret: true, separator: { text: "" } }] },\
  { text: "\n  §8•§7 생성 조건: §fY -32 이하" },\
  { text: "\n" },\
]
