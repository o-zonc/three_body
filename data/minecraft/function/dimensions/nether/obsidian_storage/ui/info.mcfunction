execute unless score #obsidian_storage_amount var = #obsidian_storage_amount var run scoreboard players set #obsidian_storage_amount var 0
function dimensions/nether/obsidian_storage/effective_milestone
scoreboard players set #obsidian_storage_9_2_effective tmp 0
scoreboard players set #obsidian_storage_11_1_effective tmp 0
scoreboard players set #obsidian_storage_12_1_effective tmp 0


data modify storage data tmp.obsidian_storage.text.goal.1 set value "1개 → '석영' 해금"
data modify storage data tmp.obsidian_storage.text.goal.2 set value "10개 → 도구가 초기화되지 않음"
data modify storage data tmp.obsidian_storage.text.goal.3 set value "15개 → '에리어 존' 해금"
data modify storage data tmp.obsidian_storage.text.goal.4 set value "20개 → 압축 후 네더 포탈 '구역' 즉시 해금 (포탈 X)"
data modify storage data tmp.obsidian_storage.text.goal.5 set value "30개 → 압축 후 돌, 몹 즉시 해금"
data modify storage data tmp.obsidian_storage.text.goal.6 set value "40개 → 압축 후 동굴 즉시 해금"
data modify storage data tmp.obsidian_storage.text.goal.7 set value "50개 → 드릴 속도와 높이 제한이 초기화되지 않음"
data modify storage data tmp.obsidian_storage.text.goal.8 set value "75개 → 압축 후 Y -5에서 시작"
data modify storage data tmp.obsidian_storage.text.goal.9 set value "100개 → 자원 재생산 업그레이드가 초기화되지 않음"
data modify storage data tmp.obsidian_storage.text.goal.10 set value "150개 → 자원 상점이 초기화되지 않음"
data modify storage data tmp.obsidian_storage.text.goal.11 set value "200개 → 압축 후 Y -32에서 시작"
data modify storage data tmp.obsidian_storage.text.goal.12 set value "400개 → 흑요석의 보유 수 제한이 10000개로 상승됨"
data modify storage data tmp.obsidian_storage.text.goal.13 set value "2000개 → 3번째 에리어 해금"
data modify storage data tmp.obsidian_storage.text.goal.14 set value "10000개 → '시련' 해금"

data modify storage data tmp.obsidian_storage.text.reset_mark set value []
execute if score #obsidian_storage_11_1_effective tmp matches 1 run data modify storage data tmp.obsidian_storage.text.reset_mark append value { text: " §6🍀 ", hover_event: { action: "show_text", value: ["", { text: "§6🍀 " }, { text: "저장고 잔향", color:aqua, bold:true, shadow_color:-1426128896 }, { text: "§7 효과가 흑요석 저장고 저장량을 차원 압축으로부터 보호하고 있습니다." }] } }

data modify storage data tmp.obsidian_storage.text.capacity_mark set value []
execute if score #obsidian_storage_12_1_effective tmp matches 1 if score #obsidian_storage_capacity tmp > #obsidian_storage_capacity_base tmp run data modify storage data tmp.obsidian_storage.text.capacity_mark append value { text: " §6🍀", hover_event: { action: "show_text", value: ["", { text: "§6🍀 " }, { text: "초차원 정박", color:aqua, bold:true, shadow_color:-1426128896 }, { text: "§7 효과로 인해 흑요석 저장고 최대 저장량이 " }, { score: { name: "#obsidian_storage_capacity_base", objective: "tmp" }, color: "gray" }, { text: "§7 → " }, { score: { name: "#obsidian_storage_capacity", objective: "tmp" }, color: "gold" }, { text: "§7개로 증가했습니다." }] } }

data modify storage data tmp.obsidian_storage.text.goals set value []
execute if score #obsidian_storage_effective_milestone tmp matches 1.. run data modify storage data tmp.obsidian_storage.text.goals append value { storage: "data", nbt: "tmp.obsidian_storage.text.goal.1", interpret: true, color: yellow }
execute unless score #obsidian_storage_effective_milestone tmp matches 1.. run data modify storage data tmp.obsidian_storage.text.goals append value { storage: "data", nbt: "tmp.obsidian_storage.text.goal.1", interpret: true, color: dark_gray }
execute if score #obsidian_storage_effective_milestone tmp matches 10.. run data modify storage data tmp.obsidian_storage.text.goals append value { storage: "data", nbt: "tmp.obsidian_storage.text.goal.2", interpret: true, color: yellow }
execute unless score #obsidian_storage_effective_milestone tmp matches 10.. run data modify storage data tmp.obsidian_storage.text.goals append value { storage: "data", nbt: "tmp.obsidian_storage.text.goal.2", interpret: true, color: dark_gray }
execute if score #obsidian_storage_9_2_effective tmp matches 1 run data modify storage data tmp.obsidian_storage.text.goals append value { text: "15개 → '에리어 존' 해금", color: yellow, extra: [{ text: " §6🍀", hover_event: { action: "show_text", value: ["", { text: "§6🍀 " }, { text: "초열의 선회", color:aqua, bold:true, shadow_color:-1426128896 }, { text: "§7 효과로 인해 흑요석 저장고 수와 무관하게 에리어 존이 차원 압축 후 즉시 해금됩니다." }] } }] }
execute unless score #obsidian_storage_9_2_effective tmp matches 1 if score #obsidian_storage_effective_milestone tmp matches 15.. run data modify storage data tmp.obsidian_storage.text.goals append value { storage: "data", nbt: "tmp.obsidian_storage.text.goal.3", interpret: true, color: yellow }
execute unless score #obsidian_storage_9_2_effective tmp matches 1 unless score #obsidian_storage_effective_milestone tmp matches 15.. run data modify storage data tmp.obsidian_storage.text.goals append value { storage: "data", nbt: "tmp.obsidian_storage.text.goal.3", interpret: true, color: dark_gray }
execute if score #obsidian_storage_effective_milestone tmp matches 20.. run data modify storage data tmp.obsidian_storage.text.goals append value { storage: "data", nbt: "tmp.obsidian_storage.text.goal.4", interpret: true, color: yellow }
execute unless score #obsidian_storage_effective_milestone tmp matches 20.. run data modify storage data tmp.obsidian_storage.text.goals append value { storage: "data", nbt: "tmp.obsidian_storage.text.goal.4", interpret: true, color: dark_gray }
execute if score #obsidian_storage_effective_milestone tmp matches 30.. run data modify storage data tmp.obsidian_storage.text.goals append value { storage: "data", nbt: "tmp.obsidian_storage.text.goal.5", interpret: true, color: yellow }
execute unless score #obsidian_storage_effective_milestone tmp matches 30.. run data modify storage data tmp.obsidian_storage.text.goals append value { storage: "data", nbt: "tmp.obsidian_storage.text.goal.5", interpret: true, color: dark_gray }
execute if score #obsidian_storage_effective_milestone tmp matches 40.. run data modify storage data tmp.obsidian_storage.text.goals append value { storage: "data", nbt: "tmp.obsidian_storage.text.goal.6", interpret: true, color: yellow }
execute unless score #obsidian_storage_effective_milestone tmp matches 40.. run data modify storage data tmp.obsidian_storage.text.goals append value { storage: "data", nbt: "tmp.obsidian_storage.text.goal.6", interpret: true, color: dark_gray }
execute if score #obsidian_storage_effective_milestone tmp matches 50.. run data modify storage data tmp.obsidian_storage.text.goals append value { storage: "data", nbt: "tmp.obsidian_storage.text.goal.7", interpret: true, color: yellow }
execute unless score #obsidian_storage_effective_milestone tmp matches 50.. run data modify storage data tmp.obsidian_storage.text.goals append value { storage: "data", nbt: "tmp.obsidian_storage.text.goal.7", interpret: true, color: dark_gray }
execute if score #obsidian_storage_effective_milestone tmp matches 75.. run data modify storage data tmp.obsidian_storage.text.goals append value { storage: "data", nbt: "tmp.obsidian_storage.text.goal.8", interpret: true, color: yellow }
execute unless score #obsidian_storage_effective_milestone tmp matches 75.. run data modify storage data tmp.obsidian_storage.text.goals append value { storage: "data", nbt: "tmp.obsidian_storage.text.goal.8", interpret: true, color: dark_gray }
execute if score #obsidian_storage_effective_milestone tmp matches 100.. run data modify storage data tmp.obsidian_storage.text.goals append value { storage: "data", nbt: "tmp.obsidian_storage.text.goal.9", interpret: true, color: yellow }
execute unless score #obsidian_storage_effective_milestone tmp matches 100.. run data modify storage data tmp.obsidian_storage.text.goals append value { storage: "data", nbt: "tmp.obsidian_storage.text.goal.9", interpret: true, color: dark_gray }
execute if score #obsidian_storage_effective_milestone tmp matches 150.. run data modify storage data tmp.obsidian_storage.text.goals append value { storage: "data", nbt: "tmp.obsidian_storage.text.goal.10", interpret: true, color: yellow }
execute unless score #obsidian_storage_effective_milestone tmp matches 150.. run data modify storage data tmp.obsidian_storage.text.goals append value { storage: "data", nbt: "tmp.obsidian_storage.text.goal.10", interpret: true, color: dark_gray }
execute if score #obsidian_storage_effective_milestone tmp matches 200.. run data modify storage data tmp.obsidian_storage.text.goals append value { storage: "data", nbt: "tmp.obsidian_storage.text.goal.11", interpret: true, color: yellow }
execute unless score #obsidian_storage_effective_milestone tmp matches 200.. run data modify storage data tmp.obsidian_storage.text.goals append value { storage: "data", nbt: "tmp.obsidian_storage.text.goal.11", interpret: true, color: dark_gray }
execute if score #obsidian_storage_effective_milestone tmp matches 400.. run data modify storage data tmp.obsidian_storage.text.goals append value { storage: "data", nbt: "tmp.obsidian_storage.text.goal.12", interpret: true, color: yellow }
execute unless score #obsidian_storage_effective_milestone tmp matches 400.. run data modify storage data tmp.obsidian_storage.text.goals append value { storage: "data", nbt: "tmp.obsidian_storage.text.goal.12", interpret: true, color: dark_gray }
execute if score #obsidian_storage_effective_milestone tmp matches 2000.. run data modify storage data tmp.obsidian_storage.text.goals append value { storage: "data", nbt: "tmp.obsidian_storage.text.goal.13", interpret: true, color: yellow }
execute unless score #obsidian_storage_effective_milestone tmp matches 2000.. run data modify storage data tmp.obsidian_storage.text.goals append value { storage: "data", nbt: "tmp.obsidian_storage.text.goal.13", interpret: true, color: dark_gray }
execute if score #obsidian_storage_effective_milestone tmp matches 10000.. run data modify storage data tmp.obsidian_storage.text.goals append value { storage: "data", nbt: "tmp.obsidian_storage.text.goal.14", interpret: true, color: yellow }
execute unless score #obsidian_storage_effective_milestone tmp matches 10000.. run data modify storage data tmp.obsidian_storage.text.goals append value { storage: "data", nbt: "tmp.obsidian_storage.text.goal.14", interpret: true, color: dark_gray }
data modify storage data tmp.obsidian_storage.button.store_one set value { text: "§5§l[ 흑요석 1개 저장 ]", shadow_color: -721419265, hover_event: { action: "show_text", value: ["", { text: "흑요석 1개 저장하기" }] }, click_event: { action: "run_command", command: "/trigger obsidian_storage_trigger set 1" } }
data modify storage data tmp.obsidian_storage.button.store_all set value { text: "§5§l[ 보유 흑요석 전부 저장 ]", shadow_color: -721419265, hover_event: { action: "show_text", value: ["", { text: "보유 중인 흑요석을 가능한 만큼 저장하기\n최대 저장량: " }, { score: { name: "#obsidian_storage_capacity", objective: "tmp" } }, { text: "개" }] }, click_event: { action: "run_command", command: "/trigger obsidian_storage_trigger set 2" } }
execute at @s run playsound block.shroomlight.place weather @s ~ ~ ~ 1 0.5
execute at @s run playsound block.sculk.place weather @s ~ ~ ~ 1 0.5
function util/blank

tellraw @s ["", \
  { text: "  §6§l{ 흑요석 저장고 }§r" },\
  { text: "\n" },\
  { text: "\n  §8•§7 현재 저장된 흑요석: ", extra: [{ score: { name: "#obsidian_storage_amount", objective: "var" }, color: gold, bold: true }, "§7/", { score: { name: "#obsidian_storage_capacity", objective: "tmp" }, color: gold, bold: true }, "§7개", { storage: "data", nbt: "tmp.obsidian_storage.text.capacity_mark[]", interpret: true, separator: { text: "" } }] },\
  { text: "\n" },\
  { text: "\n  ", extra: ["", { text: "§b§l( 저장고 이정표 )", hover_event: { action: "show_text", value: ["", { text: "§7저장된 흑요석의 수가 일정치에 도달하면\n아래의 보상이 적용됩니다.§r\n\n§8※ 아래에 적힌 '압축'은 오버월드 압축을 의미함.§r\n\n" }, { storage: "data", nbt: "tmp.obsidian_storage.text.goals[]", interpret: true, separator: "\n" }] } }, { storage: "data", nbt: "tmp.obsidian_storage.text.reset_mark[]", interpret: true, separator: { text: "" } }] },\
  { text: "\n  ", extra: ["", { storage: "data", nbt: "tmp.obsidian_storage.button.store_one", interpret: true }] },\
  { text: "\n  ", extra: ["", { storage: "data", nbt: "tmp.obsidian_storage.button.store_all", interpret: true }] },\
  { text: "\n" },\
]
