execute store result score #quartz_restore_base_cooldown tmp run function resource/nether/quartz/value/regen_base_value
execute store result score #quartz_restore_cooldown tmp run function resource/nether/quartz/value/regen_value
scoreboard players set #nether_workshop_effects_disabled tmp 0
execute if score #trial_active trial matches 1 if score #trial_id trial matches 5 unless score #creation_restored trial matches 1 run scoreboard players set #nether_workshop_effects_disabled tmp 1
scoreboard players set #quartz_workshop_effects_enabled tmp 1
execute if score #trial_active trial matches 1 run scoreboard players set #quartz_workshop_effects_enabled tmp 0
execute if score #creation_restored trial matches 1 run scoreboard players set #quartz_workshop_effects_enabled tmp 1

scoreboard players set #quartz_regen_trial_3_effect tmp 0
execute if score #trial_3 advancement matches 1 unless score #trial_advancement_reward_disabled var matches 1 run scoreboard players set #quartz_regen_trial_3_effect tmp 1

data modify storage data tmp.resource.quartz.operation_display set value [{ text: "§a작동 중" }]

data modify storage data tmp.resource.quartz.regen_display set value [{ score: { name: "#quartz_restore_cooldown", objective: "tmp" }, color:white }, { text: "§7틱" }]
scoreboard players set #quartz_regen_workshop_effect tmp 0
data modify storage data tmp.resource.quartz.regen_effects set value []
execute if score #2_2_quartz_overdrive_remain var matches 1.. run scoreboard players set #quartz_regen_workshop_effect tmp 1
execute if score #2_2_quartz_overdrive_remain var matches 1.. run data modify storage data tmp.resource.quartz.regen_effects append value { text: "", extra: [{ text: "§6🍀 " }, { text: "균열 재점화", color:aqua, bold:true, shadow_color:-1426128896 }, { text: "§7: §e90%§7 감소 §8(남은 수급 " }, { score: { name: "#2_2_quartz_overdrive_remain", objective: "var" }, color:yellow }, { text: "§8회)" }] }
execute if score #6_1 nether_workshop matches 1 if score #quartz_workshop_effects_enabled tmp matches 1 run scoreboard players set #quartz_regen_workshop_effect tmp 1
execute if score #6_1 nether_workshop matches 1 if score #quartz_workshop_effects_enabled tmp matches 1 run data modify storage data tmp.resource.quartz.regen_effects append value { text: "", extra: [{ text: "§6🍀 " }, { text: "다차원 현상", color:aqua, bold:true, shadow_color:-1426128896 }, { text: "§7: §e25%§7 감소" }] }
execute if score #10_1 nether_workshop matches 1 if score #quartz_workshop_effects_enabled tmp matches 1 run scoreboard players set #quartz_regen_workshop_effect tmp 1
execute if score #10_1 nether_workshop matches 1 if score #quartz_workshop_effects_enabled tmp matches 1 run data modify storage data tmp.resource.quartz.regen_effects append value { text: "", extra: [{ text: "§6🍀 " }, { text: "고대의 회귀", color:aqua, bold:true, shadow_color:-1426128896 }, { text: "§7: §e30%§7 감소" }] }
scoreboard players set #11_1_quartz_regen_reduce_percent tmp 0
scoreboard players set #hundred_million tmp 100000000
scoreboard players set #nine tmp 9
execute if score #11_1 nether_workshop matches 1 unless score #nether_workshop_effects_disabled tmp matches 1 run scoreboard players operation #11_1_quartz_regen_reduce_percent tmp = #compressed_overworld_crystal material
execute if score #11_1 nether_workshop matches 1 unless score #nether_workshop_effects_disabled tmp matches 1 run scoreboard players operation #11_1_quartz_regen_reduce_percent tmp /= #hundred_million tmp
execute if score #11_1 nether_workshop matches 1 unless score #nether_workshop_effects_disabled tmp matches 1 run scoreboard players operation #11_1_quartz_regen_reduce_percent tmp *= #nine tmp
execute if score #11_1 nether_workshop matches 1 unless score #nether_workshop_effects_disabled tmp matches 1 run scoreboard players set #quartz_regen_workshop_effect tmp 1
execute if score #11_1 nether_workshop matches 1 unless score #nether_workshop_effects_disabled tmp matches 1 run data modify storage data tmp.resource.quartz.regen_effects append value { text: "", extra: [{ text: "§6🍀 " }, { text: "저장고 잔향", color:aqua, bold:true, shadow_color:-1426128896 }, { text: "§7: §e" }, { score: { name: "#11_1_quartz_regen_reduce_percent", objective: "tmp" }, color:yellow }, { text: "%§7 감소 §8(오버월드 결정 100,000,000개마다 9%)" }] }
execute if score #quartz_regen_workshop_effect tmp matches 1 unless score #quartz_regen_trial_3_effect tmp matches 1 run data modify storage data tmp.resource.quartz.regen_display set value [{ score: { name: "#quartz_restore_base_cooldown", objective: "tmp" }, color:gray }, { text: "§7틱 §8→ " }, { score: { name: "#quartz_restore_cooldown", objective: "tmp" }, color:white }, { text: "§7틱 " }, { text: "§6🍀 ", hover_event: { action: "show_text", value: { storage: "data", nbt: "tmp.resource.quartz.regen_effects[]", interpret: true, separator: "\n" } } }]
execute if score #quartz_regen_trial_3_effect tmp matches 1 run data modify storage data tmp.resource.quartz.regen_display set value [{ score: { name: "#quartz_restore_base_cooldown", objective: "tmp" }, color:gray }, { text: "§7틱 §8→ " }, { score: { name: "#quartz_restore_cooldown", objective: "tmp" }, color:white }, { text: "§7틱 "}, {"text":"⚡","color":"dark_purple","shadow_color":-1428043265,"bold":true,hover_event:{action:"show_text",value:{text:"§d§l§o이제... 조금 더 가치 있어졌어."}}}, { text: " §8(발전 과제 영향 적용)" }]

data modify storage data tmp.resource.quartz.drop_display set value [{ text: "§f3∼6개" }]

scoreboard players set #quartz_stability_8_1_active tmp 0
execute if score #8_1 nether_workshop matches 1 if score #quartz_workshop_effects_enabled tmp matches 1 run scoreboard players set #quartz_stability_8_1_active tmp 1
scoreboard players set #quartz_stability_11_2_active tmp 0
execute if score #11_2 nether_workshop matches 1 unless score #nether_workshop_effects_disabled tmp matches 1 run scoreboard players set #quartz_stability_11_2_active tmp 1

data modify storage data tmp.resource.quartz.stability_formula set value []
data modify storage data tmp.resource.quartz.stability_formula append value { text: "§c§l석영 불안정화§r" }
data modify storage data tmp.resource.quartz.stability_formula append value { text: "§7석영은 보유량이 많을수록 불안정해져 재생산 대기 시간이 늘어납니다." }
execute unless score #quartz_stability_11_2_active tmp matches 1 unless score #quartz_stability_8_1_active tmp matches 1 run data modify storage data tmp.resource.quartz.stability_formula append value { text: "§8- §f0∼49개: §e60틱" }
execute unless score #quartz_stability_11_2_active tmp matches 1 unless score #quartz_stability_8_1_active tmp matches 1 run data modify storage data tmp.resource.quartz.stability_formula append value { text: "§8- §f50∼149개: §e90틱" }
execute unless score #quartz_stability_11_2_active tmp matches 1 unless score #quartz_stability_8_1_active tmp matches 1 run data modify storage data tmp.resource.quartz.stability_formula append value { text: "§8- §f150∼399개: §e150틱" }
execute unless score #quartz_stability_11_2_active tmp matches 1 unless score #quartz_stability_8_1_active tmp matches 1 run data modify storage data tmp.resource.quartz.stability_formula append value { text: "§8- §f400∼999개: §e250틱" }
execute unless score #quartz_stability_11_2_active tmp matches 1 unless score #quartz_stability_8_1_active tmp matches 1 run data modify storage data tmp.resource.quartz.stability_formula append value { text: "§8- §f1000∼2499개: §e450틱" }
execute unless score #quartz_stability_11_2_active tmp matches 1 if score #quartz_stability_8_1_active tmp matches 1 run data modify storage data tmp.resource.quartz.stability_formula append value { text: "§8§m- 0∼49개: 60틱§r" }
execute unless score #quartz_stability_11_2_active tmp matches 1 if score #quartz_stability_8_1_active tmp matches 1 run data modify storage data tmp.resource.quartz.stability_formula append value { text: "§8§m- 50∼149개: 90틱§r" }
execute unless score #quartz_stability_11_2_active tmp matches 1 if score #quartz_stability_8_1_active tmp matches 1 run data modify storage data tmp.resource.quartz.stability_formula append value { text: "§8§m- 150∼399개: 150틱§r" }
execute unless score #quartz_stability_11_2_active tmp matches 1 if score #quartz_stability_8_1_active tmp matches 1 run data modify storage data tmp.resource.quartz.stability_formula append value { text: "§8§m- 400∼999개: 250틱§r" }
execute unless score #quartz_stability_11_2_active tmp matches 1 if score #quartz_stability_8_1_active tmp matches 1 run data modify storage data tmp.resource.quartz.stability_formula append value { text: "§8§m- 1000∼2499개: 450틱§r" }
execute unless score #quartz_stability_11_2_active tmp matches 1 run data modify storage data tmp.resource.quartz.stability_formula append value { text: "§8- §f2500∼4999개: §e800틱" }
execute unless score #quartz_stability_11_2_active tmp matches 1 run data modify storage data tmp.resource.quartz.stability_formula append value { text: "§8- §f5000개 이상: §e1200틱" }
execute if score #quartz_stability_11_2_active tmp matches 1 unless score #quartz_stability_8_1_active tmp matches 1 run data modify storage data tmp.resource.quartz.stability_formula append value { text: "§8- §f0∼5049개: §e60틱" }
execute if score #quartz_stability_11_2_active tmp matches 1 unless score #quartz_stability_8_1_active tmp matches 1 run data modify storage data tmp.resource.quartz.stability_formula append value { text: "§8- §f5050∼5149개: §e90틱" }
execute if score #quartz_stability_11_2_active tmp matches 1 unless score #quartz_stability_8_1_active tmp matches 1 run data modify storage data tmp.resource.quartz.stability_formula append value { text: "§8- §f5150∼5399개: §e150틱" }
execute if score #quartz_stability_11_2_active tmp matches 1 unless score #quartz_stability_8_1_active tmp matches 1 run data modify storage data tmp.resource.quartz.stability_formula append value { text: "§8- §f5400∼5999개: §e250틱" }
execute if score #quartz_stability_11_2_active tmp matches 1 unless score #quartz_stability_8_1_active tmp matches 1 run data modify storage data tmp.resource.quartz.stability_formula append value { text: "§8- §f6000∼7499개: §e450틱" }
execute if score #quartz_stability_11_2_active tmp matches 1 if score #quartz_stability_8_1_active tmp matches 1 run data modify storage data tmp.resource.quartz.stability_formula append value { text: "§8§m- 0∼5049개: 60틱§r" }
execute if score #quartz_stability_11_2_active tmp matches 1 if score #quartz_stability_8_1_active tmp matches 1 run data modify storage data tmp.resource.quartz.stability_formula append value { text: "§8§m- 5050∼5149개: 90틱§r" }
execute if score #quartz_stability_11_2_active tmp matches 1 if score #quartz_stability_8_1_active tmp matches 1 run data modify storage data tmp.resource.quartz.stability_formula append value { text: "§8§m- 5150∼5399개: 150틱§r" }
execute if score #quartz_stability_11_2_active tmp matches 1 if score #quartz_stability_8_1_active tmp matches 1 run data modify storage data tmp.resource.quartz.stability_formula append value { text: "§8§m- 5400∼5999개: 250틱§r" }
execute if score #quartz_stability_11_2_active tmp matches 1 if score #quartz_stability_8_1_active tmp matches 1 run data modify storage data tmp.resource.quartz.stability_formula append value { text: "§8§m- 6000∼7499개: 450틱§r" }
execute if score #quartz_stability_11_2_active tmp matches 1 run data modify storage data tmp.resource.quartz.stability_formula append value { text: "§8- §f7500∼9999개: §e800틱" }
execute if score #quartz_stability_11_2_active tmp matches 1 run data modify storage data tmp.resource.quartz.stability_formula append value { text: "§8- §f10000개 이상: §e1200틱" }
data modify storage data tmp.resource.quartz.stability_mark set value []
data modify storage data tmp.resource.quartz.stability_effects set value []
execute if score #quartz_stability_8_1_active tmp matches 1 unless score #quartz_stability_11_2_active tmp matches 1 run data modify storage data tmp.resource.quartz.stability_effects append value { text: "", extra: [{ text: "§6🍀 " }, { text: "적성 동기화", color: aqua, bold: true, shadow_color: -1426128896 }, { text: "§7: 석영 2,500개 미만의 불안정화가 사라져 재생산 대기 시간이 §e60틱§7으로 고정됩니다." }] }
execute if score #quartz_stability_8_1_active tmp matches 1 if score #quartz_stability_11_2_active tmp matches 1 run data modify storage data tmp.resource.quartz.stability_effects append value { text: "", extra: [{ text: "§6🍀 " }, { text: "적성 동기화", color: aqua, bold: true, shadow_color: -1426128896 }, { text: "§7: 태고의 부름으로 밀린 기준을 포함해 석영 7,500개 미만의 불안정화가 사라져 재생산 대기 시간이 §e60틱§7으로 고정됩니다." }] }
execute if score #quartz_stability_11_2_active tmp matches 1 run data modify storage data tmp.resource.quartz.stability_effects append value { text: "", extra: [{ text: "§6🍀 " }, { text: "태고의 부름", color: aqua, bold: true, shadow_color: -1426128896 }, { text: "§7: 석영 불안정화 조건이 되는 보유량 기준이 §e5,000개§7 뒤로 밀립니다." }] }
execute if score #quartz_stability_8_1_active tmp matches 1 run data modify storage data tmp.resource.quartz.stability_mark set value [{ text: " §6🍀", hover_event: { action: "show_text", value: { storage: "data", nbt: "tmp.resource.quartz.stability_effects[]", interpret: true, separator: "\n" } } }]
execute if score #quartz_stability_11_2_active tmp matches 1 run data modify storage data tmp.resource.quartz.stability_mark set value [{ text: " §6🍀", hover_event: { action: "show_text", value: { storage: "data", nbt: "tmp.resource.quartz.stability_effects[]", interpret: true, separator: "\n" } } }]


scoreboard players set #quartz_drop_min tmp 3
scoreboard players set #quartz_drop_max tmp 6
execute if score #4_2 nether_workshop matches 1 if score #quartz_workshop_effects_enabled tmp matches 1 run scoreboard players set #quartz_drop_min tmp 6
execute if score #4_2 nether_workshop matches 1 if score #quartz_workshop_effects_enabled tmp matches 1 run scoreboard players set #quartz_drop_max tmp 9
scoreboard players set #7_1_quartz_storage_bonus tmp 0
execute if score #7_1 nether_workshop matches 1 if score #quartz_workshop_effects_enabled tmp matches 1 run scoreboard players operation #7_1_quartz_storage_bonus tmp = #obsidian_storage_amount var
scoreboard players set #thousand tmp 1000
execute if score #7_1 nether_workshop matches 1 if score #quartz_workshop_effects_enabled tmp matches 1 run scoreboard players operation #7_1_quartz_storage_bonus tmp /= #thousand tmp
execute if score #7_1_quartz_storage_bonus tmp matches 11.. run scoreboard players set #7_1_quartz_storage_bonus tmp 10
execute unless score #tool upgrade = #tool upgrade run scoreboard players set #tool upgrade 0
scoreboard players set #quartz_tool_bonus tmp 0
execute if score #8_1 nether_workshop matches 1 if score #quartz_workshop_effects_enabled tmp matches 1 run scoreboard players operation #quartz_tool_bonus tmp = #tool upgrade
scoreboard players operation #quartz_drop_min_with_bonus tmp = #quartz_drop_min tmp
scoreboard players operation #quartz_drop_max_with_bonus tmp = #quartz_drop_max tmp
scoreboard players operation #quartz_drop_min_with_bonus tmp += #7_1_quartz_storage_bonus tmp
scoreboard players operation #quartz_drop_max_with_bonus tmp += #7_1_quartz_storage_bonus tmp
scoreboard players operation #quartz_drop_min_with_bonus tmp += #quartz_tool_bonus tmp
scoreboard players operation #quartz_drop_max_with_bonus tmp += #quartz_tool_bonus tmp
scoreboard players set #quartz_wood_bonus tmp 0
execute if score #9_1 nether_workshop matches 1 if score #quartz_workshop_effects_enabled tmp matches 1 run scoreboard players operation #quartz_wood_bonus tmp = #wood material
scoreboard players set #hundred_thousand tmp 100000
execute if score #9_1 nether_workshop matches 1 if score #quartz_workshop_effects_enabled tmp matches 1 run scoreboard players operation #quartz_wood_bonus tmp /= #hundred_thousand tmp
execute if score #quartz_wood_bonus tmp matches 11.. run scoreboard players set #quartz_wood_bonus tmp 10
scoreboard players operation #quartz_drop_min_with_bonus tmp += #quartz_wood_bonus tmp
scoreboard players operation #quartz_drop_max_with_bonus tmp += #quartz_wood_bonus tmp
scoreboard players set #quartz_blaze_powder_bonus tmp 0
execute if score #9_2 nether_workshop matches 1 if score #quartz_workshop_effects_enabled tmp matches 1 run scoreboard players operation #quartz_blaze_powder_bonus tmp = #blaze_powder material
scoreboard players set #hundred tmp 100
execute if score #9_2 nether_workshop matches 1 if score #quartz_workshop_effects_enabled tmp matches 1 run scoreboard players operation #quartz_blaze_powder_bonus tmp /= #hundred tmp
execute if score #quartz_blaze_powder_bonus tmp matches 6.. run scoreboard players set #quartz_blaze_powder_bonus tmp 5
scoreboard players operation #quartz_drop_min_with_bonus tmp += #quartz_blaze_powder_bonus tmp
scoreboard players operation #quartz_drop_max_with_bonus tmp += #quartz_blaze_powder_bonus tmp

scoreboard players operation #quartz_drop_min_before_advancement tmp = #quartz_drop_min_with_bonus tmp
scoreboard players operation #quartz_drop_max_before_advancement tmp = #quartz_drop_max_with_bonus tmp
execute if score #nether_11_quartz_multiplier advancement matches 1.. run scoreboard players operation #quartz_drop_min_with_bonus tmp *= #nether_11_quartz_multiplier advancement
execute if score #nether_11_quartz_multiplier advancement matches 1.. run scoreboard players operation #quartz_drop_max_with_bonus tmp *= #nether_11_quartz_multiplier advancement

scoreboard players set #quartz_drop_workshop_effect tmp 0
data modify storage data tmp.resource.quartz.drop_effects set value []
execute if score #4_2 nether_workshop matches 1 if score #quartz_workshop_effects_enabled tmp matches 1 run scoreboard players set #quartz_drop_workshop_effect tmp 1
execute if score #4_2 nether_workshop matches 1 if score #quartz_workshop_effects_enabled tmp matches 1 run data modify storage data tmp.resource.quartz.drop_effects append value { text: "", extra: [{ text: "§6🍀 " }, { text: "숙련된 발굴", color:aqua, bold:true, shadow_color:-1426128896 }, { text: "§7: §e+3§7개" }] }
execute if score #7_1 nether_workshop matches 1 if score #quartz_workshop_effects_enabled tmp matches 1 run scoreboard players set #quartz_drop_workshop_effect tmp 1
execute if score #7_1 nether_workshop matches 1 if score #quartz_workshop_effects_enabled tmp matches 1 run data modify storage data tmp.resource.quartz.drop_effects append value { text: "", extra: [{ text: "§6🍀 " }, { text: "저장고 공명", color:aqua, bold:true, shadow_color:-1426128896 }, { text: "§7: §e+" }, { score: { name: "#7_1_quartz_storage_bonus", objective: "tmp" }, color:yellow }, { text: "§7개" }] }
execute if score #8_1 nether_workshop matches 1 if score #quartz_workshop_effects_enabled tmp matches 1 run scoreboard players set #quartz_drop_workshop_effect tmp 1
execute if score #8_1 nether_workshop matches 1 if score #quartz_workshop_effects_enabled tmp matches 1 run data modify storage data tmp.resource.quartz.drop_effects append value { text: "", extra: [{ text: "§6🍀 " }, { text: "적성 동기화", color:aqua, bold:true, shadow_color:-1426128896 }, { text: "§7: §e+" }, { score: { name: "#quartz_tool_bonus", objective: "tmp" }, color:yellow }, { text: "§7개 §8(도구 업그레이드 수준)" }] }
execute if score #9_1 nether_workshop matches 1 if score #quartz_workshop_effects_enabled tmp matches 1 run scoreboard players set #quartz_drop_workshop_effect tmp 1
execute if score #9_1 nether_workshop matches 1 if score #quartz_workshop_effects_enabled tmp matches 1 run data modify storage data tmp.resource.quartz.drop_effects append value { text: "", extra: [{ text: "§6🍀 " }, { text: "자연의 선회", color:aqua, bold:true, shadow_color:-1426128896 }, { text: "§7: §e+" }, { score: { name: "#quartz_wood_bonus", objective: "tmp" }, color:yellow }, { text: "§7개 §8(나무 100,000개마다 +1, 최대 +10)" }] }
execute if score #9_2 nether_workshop matches 1 if score #quartz_workshop_effects_enabled tmp matches 1 run scoreboard players set #quartz_drop_workshop_effect tmp 1
execute if score #9_2 nether_workshop matches 1 if score #quartz_workshop_effects_enabled tmp matches 1 run data modify storage data tmp.resource.quartz.drop_effects append value { text: "", extra: [{ text: "§6🍀 " }, { text: "초열의 선회", color:aqua, bold:true, shadow_color:-1426128896 }, { text: "§7: §e+" }, { score: { name: "#quartz_blaze_powder_bonus", objective: "tmp" }, color:yellow }, { text: "§7개 §8(블레이즈 가루 100개마다 +1, 최대 +5)" }] }

execute unless score #nether_11_quartz_multiplier advancement matches 1.. run data modify storage data tmp.resource.quartz.drop_display set value [{ score: { name: "#quartz_drop_min_with_bonus", objective: "tmp" }, color:white }, { text: "§f∼" }, { score: { name: "#quartz_drop_max_with_bonus", objective: "tmp" }, color:white }, { text: "§f개 " }]
execute if score #nether_11_quartz_multiplier advancement matches 1.. run data modify storage data tmp.resource.quartz.drop_display set value [{ score: { name: "#quartz_drop_min_before_advancement", objective: "tmp" }, color:gray }, { text: "§7∼" }, { score: { name: "#quartz_drop_max_before_advancement", objective: "tmp" }, color:gray }, { text: "§7개 §8→ " }, { score: { name: "#quartz_drop_min_with_bonus", objective: "tmp" }, color:white }, { text: "§f∼" }, { score: { name: "#quartz_drop_max_with_bonus", objective: "tmp" }, color:white }, { text: "§f개 §8(발전 과제 영향 적용) " }]
execute if score #quartz_drop_workshop_effect tmp matches 1 run data modify storage data tmp.resource.quartz.drop_display append value { text: "§6🍀 ", hover_event: { action: "show_text", value: { storage: "data", nbt: "tmp.resource.quartz.drop_effects[]", interpret: true, separator: "\n" } } }

execute at @s run playsound ui.button.click weather @s ~ ~ ~ 1 2
function util/blank

tellraw @s ["", \
  { text: "  §f§l[ 석영 ]§r", shadow_color: -1426128896 },\
  { text: "\n" },\
  { text: "\n  §8•§7 석영 보유량: ", extra: [{ score: { name: "#quartz", objective: "material" }, color:white }, { text: "§7개" }] },\
  { text: "\n  §8•§7 작동 상태: ", extra: [{ storage: "data", nbt: "tmp.resource.quartz.operation_display[]", interpret: true, separator: { text: "" } }] },\
  { text: "\n  §8•§7 재생산 대기: ", extra: [{ storage: "data", nbt: "tmp.resource.quartz.regen_display[]", interpret: true, separator: { text: "" } }] },\
  { text: "\n  §8•§7 채굴 획득량: ", extra: [{ storage: "data", nbt: "tmp.resource.quartz.drop_display[]", interpret: true, separator: { text: "" } }] },\
  { text: "\n  §8• ", extra: [{ text: "§c§l[ 석영 불안정화 ]", hover_event: { action: "show_text", value: { storage: "data", nbt: "tmp.resource.quartz.stability_formula[]", interpret: true, separator: "\n" } } }, { storage: "data", nbt: "tmp.resource.quartz.stability_mark[]", interpret: true, separator: { text: "" } }] },\
  { text: "\n" },\
]
