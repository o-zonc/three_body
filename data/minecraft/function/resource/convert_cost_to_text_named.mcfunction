# tmp.cost를 tmp.cost_text.$(id).text에 비용 표기 형식으로 저장
# tmp.cost_original이 있으면 감소 전 비용과 감소 후 비용을 함께 표기

$execute unless data storage data tmp.cost run return run data modify storage data tmp.cost_text.$(id).text set value { text: "§c더 이상 업그레이드 불가" }

$data modify storage data tmp.cost_text.$(id).cost set value []

$scoreboard players set #cost_$(id)_wood cost 0
$scoreboard players set #cost_$(id)_stone cost 0
$scoreboard players set #cost_$(id)_exp_lvl cost 0
$scoreboard players set #cost_$(id)_coal cost 0
$scoreboard players set #cost_$(id)_iron cost 0
$scoreboard players set #cost_$(id)_obsidian cost 0
$scoreboard players set #cost_$(id)_owc cost 0
$scoreboard players set #cost_$(id)_nc cost 0
$scoreboard players set #cost_$(id)_quartz cost 0
$scoreboard players set #cost_$(id)_gold cost 0
$scoreboard players set #cost_$(id)_blaze_powder cost 0
$scoreboard players set #cost_$(id)_trial_crystal cost 0
$scoreboard players set #cost_$(id)_spirit cost 0
$scoreboard players set #cost_$(id)_stone_original cost 0
$scoreboard players set #cost_$(id)_coal_original cost 0
$scoreboard players set #cost_$(id)_trial_crystal_original cost 0
$scoreboard players set #cost_$(id)_spirit_original cost 0

$execute if data storage data tmp.cost[{type:"wood"}].amount store result score #cost_$(id)_wood cost run data get storage data tmp.cost[{type:"wood"}].amount
$execute if data storage data tmp.cost[{type:"stone"}].amount store result score #cost_$(id)_stone cost run data get storage data tmp.cost[{type:"stone"}].amount
$execute if data storage data tmp.cost[{type:"exp_lvl"}].amount store result score #cost_$(id)_exp_lvl cost run data get storage data tmp.cost[{type:"exp_lvl"}].amount
$execute if data storage data tmp.cost[{type:"coal"}].amount store result score #cost_$(id)_coal cost run data get storage data tmp.cost[{type:"coal"}].amount
$execute if data storage data tmp.cost[{type:"iron"}].amount store result score #cost_$(id)_iron cost run data get storage data tmp.cost[{type:"iron"}].amount
$execute if data storage data tmp.cost[{type:"obsidian"}].amount store result score #cost_$(id)_obsidian cost run data get storage data tmp.cost[{type:"obsidian"}].amount
$execute if data storage data tmp.cost[{type:"compressed_overworld_crystal"}].amount store result score #cost_$(id)_owc cost run data get storage data tmp.cost[{type:"compressed_overworld_crystal"}].amount
$execute if data storage data tmp.cost[{type:"compressed_nether_crystal"}].amount store result score #cost_$(id)_nc cost run data get storage data tmp.cost[{type:"compressed_nether_crystal"}].amount
$execute if data storage data tmp.cost[{type:"quartz"}].amount store result score #cost_$(id)_quartz cost run data get storage data tmp.cost[{type:"quartz"}].amount
$execute if data storage data tmp.cost[{type:"gold"}].amount store result score #cost_$(id)_gold cost run data get storage data tmp.cost[{type:"gold"}].amount
$execute if data storage data tmp.cost[{type:"blaze_powder"}].amount store result score #cost_$(id)_blaze_powder cost run data get storage data tmp.cost[{type:"blaze_powder"}].amount
$execute if data storage data tmp.cost[{type:"trial_crystal"}].amount store result score #cost_$(id)_trial_crystal cost run data get storage data tmp.cost[{type:"trial_crystal"}].amount
$execute if data storage data tmp.cost[{type:"spirit"}].amount store result score #cost_$(id)_spirit cost run data get storage data tmp.cost[{type:"spirit"}].amount

$execute if data storage data tmp.cost_original[{type:"stone"}].amount store result score #cost_$(id)_stone_original cost run data get storage data tmp.cost_original[{type:"stone"}].amount
$execute if data storage data tmp.cost_original[{type:"coal"}].amount store result score #cost_$(id)_coal_original cost run data get storage data tmp.cost_original[{type:"coal"}].amount
$execute if data storage data tmp.cost_original[{type:"trial_crystal"}].amount store result score #cost_$(id)_trial_crystal_original cost run data get storage data tmp.cost_original[{type:"trial_crystal"}].amount
$execute if data storage data tmp.cost_original[{type:"spirit"}].amount store result score #cost_$(id)_spirit_original cost run data get storage data tmp.cost_original[{type:"spirit"}].amount

$scoreboard players set #cost_$(id)_2_1_effective tmp 0
$execute if score #2_1 nether_workshop matches 1 unless score #trial_active trial matches 1 run scoreboard players set #cost_$(id)_2_1_effective tmp 1
$execute if score #2_1 nether_workshop matches 1 if score #creation_restored trial matches 1 run scoreboard players set #cost_$(id)_2_1_effective tmp 1
$execute if score #2_1 nether_workshop matches 1 if score #trial_active trial matches 1 if score #trial_1 advancement matches 1 unless score #trial_advancement_reward_disabled var matches 1 run scoreboard players set #cost_$(id)_2_1_effective tmp 1
$scoreboard players set #cost_$(id)_overworld_13_effective tmp 0
$execute if score #overworld_13 advancement matches 1 unless score #overworld_advancement_reward_disabled var matches 1 run scoreboard players set #cost_$(id)_overworld_13_effective tmp 1
$scoreboard players set #cost_$(id)_4_2_effective tmp 0
$execute if score #4_2 nether_workshop matches 1 unless score #trial_active trial matches 1 run scoreboard players set #cost_$(id)_4_2_effective tmp 1
$execute if score #4_2 nether_workshop matches 1 if score #creation_restored trial matches 1 run scoreboard players set #cost_$(id)_4_2_effective tmp 1

$execute if score #cost_$(id)_wood cost matches 1.. unless score #cost_$(id)_overworld_13_effective tmp matches 1 run data modify storage data tmp.cost_text.$(id).cost append value { text: "나무 ", extra: [{score:{name:"#cost_$(id)_wood",objective:"cost"}}, "개"] }
$execute if score #cost_$(id)_wood cost matches 1.. if score #cost_$(id)_overworld_13_effective tmp matches 1 run data modify storage data tmp.cost_text.$(id).cost append value { text: "나무 ", extra: [{score:{name:"#cost_$(id)_wood",objective:"cost"}}, "개 §8(소모 없음)"] }

$execute if score #cost_$(id)_stone cost matches 1.. unless score #cost_$(id)_stone_original cost matches 1.. unless score #cost_$(id)_overworld_13_effective tmp matches 1 run data modify storage data tmp.cost_text.$(id).cost append value { text: "돌 ", extra: [{score:{name:"#cost_$(id)_stone",objective:"cost"}}, "개"] }
$execute if score #cost_$(id)_stone cost matches 1.. unless score #cost_$(id)_stone_original cost matches 1.. if score #cost_$(id)_overworld_13_effective tmp matches 1 run data modify storage data tmp.cost_text.$(id).cost append value { text: "돌 ", extra: [{score:{name:"#cost_$(id)_stone",objective:"cost"}}, "개 §8(소모 없음)"] }
$execute if score #cost_$(id)_stone cost matches 1.. if score #cost_$(id)_stone_original cost = #cost_$(id)_stone cost unless score #cost_$(id)_overworld_13_effective tmp matches 1 run data modify storage data tmp.cost_text.$(id).cost append value { text: "돌 ", extra: [{score:{name:"#cost_$(id)_stone",objective:"cost"}}, "개"] }
$execute if score #cost_$(id)_stone cost matches 1.. if score #cost_$(id)_stone_original cost = #cost_$(id)_stone cost if score #cost_$(id)_overworld_13_effective tmp matches 1 run data modify storage data tmp.cost_text.$(id).cost append value { text: "돌 ", extra: [{score:{name:"#cost_$(id)_stone",objective:"cost"}}, "개 §8(소모 없음)"] }
$execute if score #cost_$(id)_stone cost matches 1.. if score #cost_$(id)_stone_original cost matches 1.. unless score #cost_$(id)_stone_original cost = #cost_$(id)_stone cost unless score #cost_$(id)_overworld_13_effective tmp matches 1 run data modify storage data tmp.cost_text.$(id).cost append value { text: "돌 ", extra: [{score:{name:"#cost_$(id)_stone_original",objective:"cost"}}, "개 §8→ §f", {score:{name:"#cost_$(id)_stone",objective:"cost"}}, "개 §8(결정 상점 영향 적용)"] }
$execute if score #cost_$(id)_stone cost matches 1.. if score #cost_$(id)_stone_original cost matches 1.. unless score #cost_$(id)_stone_original cost = #cost_$(id)_stone cost if score #cost_$(id)_overworld_13_effective tmp matches 1 run data modify storage data tmp.cost_text.$(id).cost append value { text: "돌 ", extra: [{score:{name:"#cost_$(id)_stone_original",objective:"cost"}}, "개 §8→ §f", {score:{name:"#cost_$(id)_stone",objective:"cost"}}, "개 §8(결정 상점 영향 적용, 소모 없음)"] }

$execute if score #cost_$(id)_exp_lvl cost matches 1.. run data modify storage data tmp.cost_text.$(id).cost append value { text: "경험치 ", extra: [{score:{name:"#cost_$(id)_exp_lvl",objective:"cost"}}, "레벨"] }

$execute if score #cost_$(id)_coal cost matches 1.. unless score #cost_$(id)_coal_original cost matches 1.. unless score #cost_$(id)_2_1_effective tmp matches 1 run data modify storage data tmp.cost_text.$(id).cost append value { text: "석탄 ", extra: [{score:{name:"#cost_$(id)_coal",objective:"cost"}}, "개"] }
$execute if score #cost_$(id)_coal cost matches 1.. unless score #cost_$(id)_coal_original cost matches 1.. if score #cost_$(id)_2_1_effective tmp matches 1 run data modify storage data tmp.cost_text.$(id).cost append value { text: "석탄 ", extra: [{score:{name:"#cost_$(id)_coal",objective:"cost"}}, "개 ", { text: "§6🍀", hover_event: { action: "show_text", value: ["", { text: "§6🍀 " }, { text: "발전성 중화", color:aqua, bold:true, shadow_color:-1426128896 }, { text: "§7 효과로 인해 구매 시 석탄을 소모하지 않습니다.\n§8(요구량은 소지해야 함)" }] } }] }
$execute if score #cost_$(id)_coal cost matches 1.. if score #cost_$(id)_coal_original cost = #cost_$(id)_coal cost unless score #cost_$(id)_2_1_effective tmp matches 1 run data modify storage data tmp.cost_text.$(id).cost append value { text: "석탄 ", extra: [{score:{name:"#cost_$(id)_coal",objective:"cost"}}, "개"] }
$execute if score #cost_$(id)_coal cost matches 1.. if score #cost_$(id)_coal_original cost = #cost_$(id)_coal cost if score #cost_$(id)_2_1_effective tmp matches 1 run data modify storage data tmp.cost_text.$(id).cost append value { text: "석탄 ", extra: [{score:{name:"#cost_$(id)_coal",objective:"cost"}}, "개 ", { text: "§6🍀", hover_event: { action: "show_text", value: ["", { text: "§6🍀 " }, { text: "발전성 중화", color:aqua, bold:true, shadow_color:-1426128896 }, { text: "§7 효과로 인해 구매 시 석탄을 소모하지 않습니다.\n§8(요구량은 소지해야 함)" }] } }] }
$execute if score #cost_$(id)_coal cost matches 1.. if score #cost_$(id)_coal_original cost matches 1.. unless score #cost_$(id)_coal_original cost = #cost_$(id)_coal cost unless score #cost_$(id)_2_1_effective tmp matches 1 run data modify storage data tmp.cost_text.$(id).cost append value { text: "석탄 ", extra: [{score:{name:"#cost_$(id)_coal_original",objective:"cost"}}, "개 §8→ §f", {score:{name:"#cost_$(id)_coal",objective:"cost"}}, "개 §8(결정 상점 영향 적용)"] }
$execute if score #cost_$(id)_coal cost matches 1.. if score #cost_$(id)_coal_original cost matches 1.. unless score #cost_$(id)_coal_original cost = #cost_$(id)_coal cost if score #cost_$(id)_2_1_effective tmp matches 1 run data modify storage data tmp.cost_text.$(id).cost append value { text: "석탄 ", extra: [{score:{name:"#cost_$(id)_coal_original",objective:"cost"}}, "개 §8→ §f", {score:{name:"#cost_$(id)_coal",objective:"cost"}}, "개 §8(결정 상점 영향 적용) ", { text: "§6🍀", hover_event: { action: "show_text", value: ["", { text: "§6🍀 " }, { text: "발전성 중화", color:aqua, bold:true, shadow_color:-1426128896 }, { text: "§7 효과로 인해 구매 시 석탄을 소모하지 않습니다.\n§8(요구량은 소지해야 함)" }] } }] }

$execute if score #cost_$(id)_trial_crystal cost matches 1.. unless score #cost_$(id)_trial_crystal_original cost matches 1.. run data modify storage data tmp.cost_text.$(id).cost append value { text: "§d§l시련의 수정§r ", extra: [{score:{name:"#cost_$(id)_trial_crystal",objective:"cost"}}, "개"], shadow_color: -1428043265 }
$execute if score #cost_$(id)_spirit cost matches 1.. unless score #cost_$(id)_spirit_original cost matches 1.. run data modify storage data tmp.cost_text.$(id).cost append value { text: "§9§l영감§r ", extra: [{score:{name:"#cost_$(id)_spirit",objective:"cost"}}, "개"], shadow_color: -1428043265 }
$execute if score #cost_$(id)_trial_crystal cost matches 1.. if score #cost_$(id)_trial_crystal_original cost = #cost_$(id)_trial_crystal cost run data modify storage data tmp.cost_text.$(id).cost append value { text: "§d§l시련의 수정§r ", extra: [{score:{name:"#cost_$(id)_trial_crystal",objective:"cost"}}, "개"], shadow_color: -1428043265 }
$execute if score #cost_$(id)_spirit cost matches 1.. if score #cost_$(id)_spirit_original cost = #cost_$(id)_spirit cost run data modify storage data tmp.cost_text.$(id).cost append value { text: "§9§l영감§r ", extra: [{score:{name:"#cost_$(id)_spirit",objective:"cost"}}, "개"], shadow_color: -1428043265 }
$execute if score #cost_$(id)_trial_crystal cost matches 1.. if score #cost_$(id)_trial_crystal_original cost matches 1.. unless score #cost_$(id)_trial_crystal_original cost = #cost_$(id)_trial_crystal cost run data modify storage data tmp.cost_text.$(id).cost append value { text: "§d§l시련의 수정§r ", extra: [{score:{name:"#cost_$(id)_trial_crystal_original",objective:"cost"}}, "개 §8→ §f", {score:{name:"#cost_$(id)_trial_crystal",objective:"cost"}}, "개 §8(결정 상점 영향 적용)"], shadow_color: -1428043265 }
$execute if score #cost_$(id)_spirit cost matches 1.. if score #cost_$(id)_spirit_original cost matches 1.. unless score #cost_$(id)_spirit_original cost = #cost_$(id)_spirit cost run data modify storage data tmp.cost_text.$(id).cost append value { text: "§9§l영감§r ", extra: [{score:{name:"#cost_$(id)_spirit_original",objective:"cost"}}, "개 §8→ §f", {score:{name:"#cost_$(id)_spirit",objective:"cost"}}, "개 §8(결정 상점 영향 적용)"], shadow_color: -1428043265 }
$execute if score #cost_$(id)_iron cost matches 1.. run data modify storage data tmp.cost_text.$(id).cost append value { text: "철 ", extra: [{score:{name:"#cost_$(id)_iron",objective:"cost"}}, "개"] }
$execute if score #cost_$(id)_obsidian cost matches 1.. run data modify storage data tmp.cost_text.$(id).cost append value { text: "흑요석 ", extra: [{score:{name:"#cost_$(id)_obsidian",objective:"cost"}}, "개"] }
$execute if score #cost_$(id)_owc cost matches 1.. run data modify storage data tmp.cost_text.$(id).cost append value { text: "§b§l압축된 오버월드 결정§r ", extra: [{score:{name:"#cost_$(id)_owc",objective:"cost"}}, "개"], shadow_color: -1429069738 }
$execute if score #cost_$(id)_nc cost matches 1.. run data modify storage data tmp.cost_text.$(id).cost append value { text: "§c§l압축된 네더 결정§r ", extra: [{score:{name:"#cost_$(id)_nc",objective:"cost"}}, "개"], shadow_color: -1426128896 }
$execute if score #cost_$(id)_quartz cost matches 1.. unless data storage data tmp.cost_text_context.upgrade run data modify storage data tmp.cost_text.$(id).cost append value { text: "§f§l석영§r ", extra: [{score:{name:"#cost_$(id)_quartz",objective:"cost"}}, "개"], shadow_color: -1426128896 }
$execute if score #cost_$(id)_quartz cost matches 1.. if data storage data tmp.cost_text_context.upgrade unless score #cost_$(id)_4_2_effective tmp matches 1 run data modify storage data tmp.cost_text.$(id).cost append value { text: "§f§l석영§r ", extra: [{score:{name:"#cost_$(id)_quartz",objective:"cost"}}, "개"], shadow_color: -1426128896 }
$execute if score #cost_$(id)_quartz cost matches 1.. if data storage data tmp.cost_text_context.upgrade if score #cost_$(id)_4_2_effective tmp matches 1 run data modify storage data tmp.cost_text.$(id).cost append value { text: "§f§l석영§r ", extra: [{score:{name:"#cost_$(id)_quartz",objective:"cost"}}, "개 ", { text: "§6🍀", hover_event: { action: "show_text", value: ["", { text: "§6🍀 " }, { text: "숙련된 발굴", color:aqua, bold:true, shadow_color:-1426128896 }, { text: "§7 효과로 인해 석영이 필요한 업그레이드 구매 시 석영을 소모하지 않습니다.\n§8(요구량은 소지해야 함)" }] } }], shadow_color: -1426128896 }
$execute if score #cost_$(id)_gold cost matches 1.. unless score #cost_$(id)_2_1_effective tmp matches 1 run data modify storage data tmp.cost_text.$(id).cost append value { text: "§6§l금§r ", extra: [{score:{name:"#cost_$(id)_gold",objective:"cost"}}, "개"], shadow_color: -1426128896 }
$execute if score #cost_$(id)_gold cost matches 1.. if score #cost_$(id)_2_1_effective tmp matches 1 run data modify storage data tmp.cost_text.$(id).cost append value { text: "§6§l금§r ", extra: [{score:{name:"#cost_$(id)_gold",objective:"cost"}}, "개 ", { text: "§6🍀", hover_event: { action: "show_text", value: ["", { text: "§6🍀 " }, { text: "발전성 중화", color:aqua, bold:true, shadow_color:-1426128896 }, { text: "§7 효과로 인해 구매 시 금을 소모하지 않습니다.\n§8(요구량은 소지해야 함)" }] } }], shadow_color: -1426128896 }
$execute if score #cost_$(id)_blaze_powder cost matches 1.. run data modify storage data tmp.cost_text.$(id).cost append value { text: "§c§l블레이즈 가루§r ", extra: [{score:{name:"#cost_$(id)_blaze_powder",objective:"cost"}}, "개"], shadow_color: -1426128896 }

$data modify storage data tmp.cost_text.$(id).text set value { storage: "data", nbt: "tmp.cost_text.$(id).cost[]", interpret:true, insertion:"$(insertion)" }
data remove storage data tmp.cost_original
