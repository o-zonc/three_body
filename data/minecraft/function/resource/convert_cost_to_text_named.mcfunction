# tmp.cost를 tmp.cost_text.$(id).text에 비용 표기 형식으로 저장
# tmp.cost_original이 있으면 감소 전 비용과 감소 후 비용을 함께 표기

$execute unless data storage data tmp.cost run return run data modify storage data tmp.cost_text.$(id).text set value { text: "§c더 이상 업그레이드 불가" }

$data modify storage data tmp.cost_text.$(id).cost set value []

$scoreboard players set #cost_$(id)_wood cost 0
$scoreboard players set #cost_$(id)_stone cost 0
$scoreboard players set #cost_$(id)_exp_lvl cost 0
$scoreboard players set #cost_$(id)_coal cost 0
$scoreboard players set #cost_$(id)_copper cost 0
$scoreboard players set #cost_$(id)_iron cost 0
$scoreboard players set #cost_$(id)_diamond cost 0
$scoreboard players set #cost_$(id)_emerald cost 0
$scoreboard players set #cost_$(id)_lapis cost 0
$scoreboard players set #cost_$(id)_heat cost 0
$scoreboard players set #cost_$(id)_cold cost 0
$scoreboard players set #cost_$(id)_information cost 0
$scoreboard players set #cost_$(id)_time cost 0
$scoreboard players set #cost_$(id)_world_eye cost 0
$scoreboard players set #cost_$(id)_obsidian cost 0
$scoreboard players set #cost_$(id)_owc cost 0
$scoreboard players set #cost_$(id)_nc cost 0
$scoreboard players set #cost_$(id)_quartz cost 0
$scoreboard players set #cost_$(id)_gold cost 0
$scoreboard players set #cost_$(id)_blaze_powder cost 0
$scoreboard players set #cost_$(id)_spirit cost 0
$scoreboard players set #cost_$(id)_stone_original cost 0
$scoreboard players set #cost_$(id)_coal_original cost 0
$scoreboard players set #cost_$(id)_spirit_original cost 0

$execute if data storage data tmp.cost[{type:"wood"}].amount store result score #cost_$(id)_wood cost run data get storage data tmp.cost[{type:"wood"}].amount
$execute if data storage data tmp.cost[{type:"stone"}].amount store result score #cost_$(id)_stone cost run data get storage data tmp.cost[{type:"stone"}].amount
$execute if data storage data tmp.cost[{type:"exp_lvl"}].amount store result score #cost_$(id)_exp_lvl cost run data get storage data tmp.cost[{type:"exp_lvl"}].amount
$execute if data storage data tmp.cost[{type:"coal"}].amount store result score #cost_$(id)_coal cost run data get storage data tmp.cost[{type:"coal"}].amount
$execute if data storage data tmp.cost[{type:"copper"}].amount store result score #cost_$(id)_copper cost run data get storage data tmp.cost[{type:"copper"}].amount
$execute if data storage data tmp.cost[{type:"iron"}].amount store result score #cost_$(id)_iron cost run data get storage data tmp.cost[{type:"iron"}].amount
$execute if data storage data tmp.cost[{type:"diamond"}].amount store result score #cost_$(id)_diamond cost run data get storage data tmp.cost[{type:"diamond"}].amount
$execute if data storage data tmp.cost[{type:"emerald"}].amount store result score #cost_$(id)_emerald cost run data get storage data tmp.cost[{type:"emerald"}].amount
$execute if data storage data tmp.cost[{type:"lapis"}].amount store result score #cost_$(id)_lapis cost run data get storage data tmp.cost[{type:"lapis"}].amount
$execute if data storage data tmp.cost[{type:"heat"}].amount store result score #cost_$(id)_heat cost run data get storage data tmp.cost[{type:"heat"}].amount
$execute if data storage data tmp.cost[{type:"cold"}].amount store result score #cost_$(id)_cold cost run data get storage data tmp.cost[{type:"cold"}].amount
$execute if data storage data tmp.cost[{type:"information"}].amount store result score #cost_$(id)_information cost run data get storage data tmp.cost[{type:"information"}].amount
$execute if data storage data tmp.cost[{type:"time"}].amount store result score #cost_$(id)_time cost run data get storage data tmp.cost[{type:"time"}].amount
$execute if data storage data tmp.cost[{type:"world_eye"}].amount store result score #cost_$(id)_world_eye cost run data get storage data tmp.cost[{type:"world_eye"}].amount
$execute if data storage data tmp.cost[{type:"obsidian"}].amount store result score #cost_$(id)_obsidian cost run data get storage data tmp.cost[{type:"obsidian"}].amount
$execute if data storage data tmp.cost[{type:"compressed_overworld_crystal"}].amount store result score #cost_$(id)_owc cost run data get storage data tmp.cost[{type:"compressed_overworld_crystal"}].amount
$execute if data storage data tmp.cost[{type:"compressed_nether_crystal"}].amount store result score #cost_$(id)_nc cost run data get storage data tmp.cost[{type:"compressed_nether_crystal"}].amount
$execute if data storage data tmp.cost[{type:"quartz"}].amount store result score #cost_$(id)_quartz cost run data get storage data tmp.cost[{type:"quartz"}].amount
$execute if data storage data tmp.cost[{type:"gold"}].amount store result score #cost_$(id)_gold cost run data get storage data tmp.cost[{type:"gold"}].amount
$execute if data storage data tmp.cost[{type:"blaze_powder"}].amount store result score #cost_$(id)_blaze_powder cost run data get storage data tmp.cost[{type:"blaze_powder"}].amount
$execute if data storage data tmp.cost[{type:"spirit"}].amount store result score #cost_$(id)_spirit cost run data get storage data tmp.cost[{type:"spirit"}].amount

$execute if data storage data tmp.cost_original[{type:"stone"}].amount store result score #cost_$(id)_stone_original cost run data get storage data tmp.cost_original[{type:"stone"}].amount
$execute if data storage data tmp.cost_original[{type:"coal"}].amount store result score #cost_$(id)_coal_original cost run data get storage data tmp.cost_original[{type:"coal"}].amount
$execute if data storage data tmp.cost_original[{type:"spirit"}].amount store result score #cost_$(id)_spirit_original cost run data get storage data tmp.cost_original[{type:"spirit"}].amount

$scoreboard players set #cost_$(id)_2_1_effective tmp 0
$scoreboard players set #cost_$(id)_overworld_13_effective tmp 0
$execute if score #overworld_13 advancement matches 1 unless score #overworld_advancement_reward_disabled var matches 1 run scoreboard players set #cost_$(id)_overworld_13_effective tmp 1
$scoreboard players set #cost_$(id)_4_2_effective tmp 0

$execute if score #cost_$(id)_wood cost matches 1.. unless score #cost_$(id)_overworld_13_effective tmp matches 1 run data modify storage data tmp.cost_text.$(id).cost append value { text: "나무 ", color:yellow, shadow_color:-16777216, extra: [{score:{name:"#cost_$(id)_wood",objective:"cost"}}, "개"] }
$execute if score #cost_$(id)_wood cost matches 1.. if score #cost_$(id)_overworld_13_effective tmp matches 1 run data modify storage data tmp.cost_text.$(id).cost append value { text: "나무 ", color:yellow, shadow_color:-16777216, extra: [{score:{name:"#cost_$(id)_wood",objective:"cost"}}, "개 §8(소모 없음)"] }

$execute if score #cost_$(id)_stone cost matches 1.. unless score #cost_$(id)_stone_original cost matches 1.. unless score #cost_$(id)_overworld_13_effective tmp matches 1 run data modify storage data tmp.cost_text.$(id).cost append value { text: "돌 ", color:gray, shadow_color:-16777216, extra: [{score:{name:"#cost_$(id)_stone",objective:"cost"}}, "개"] }
$execute if score #cost_$(id)_stone cost matches 1.. unless score #cost_$(id)_stone_original cost matches 1.. if score #cost_$(id)_overworld_13_effective tmp matches 1 run data modify storage data tmp.cost_text.$(id).cost append value { text: "돌 ", color:gray, shadow_color:-16777216, extra: [{score:{name:"#cost_$(id)_stone",objective:"cost"}}, "개 §8(소모 없음)"] }
$execute if score #cost_$(id)_stone cost matches 1.. if score #cost_$(id)_stone_original cost = #cost_$(id)_stone cost unless score #cost_$(id)_overworld_13_effective tmp matches 1 run data modify storage data tmp.cost_text.$(id).cost append value { text: "돌 ", color:gray, shadow_color:-16777216, extra: [{score:{name:"#cost_$(id)_stone",objective:"cost"}}, "개"] }
$execute if score #cost_$(id)_stone cost matches 1.. if score #cost_$(id)_stone_original cost = #cost_$(id)_stone cost if score #cost_$(id)_overworld_13_effective tmp matches 1 run data modify storage data tmp.cost_text.$(id).cost append value { text: "돌 ", color:gray, shadow_color:-16777216, extra: [{score:{name:"#cost_$(id)_stone",objective:"cost"}}, "개 §8(소모 없음)"] }
$execute if score #cost_$(id)_stone cost matches 1.. if score #cost_$(id)_stone_original cost matches 1.. unless score #cost_$(id)_stone_original cost = #cost_$(id)_stone cost unless score #cost_$(id)_overworld_13_effective tmp matches 1 run data modify storage data tmp.cost_text.$(id).cost append value { text: "돌 ", color:gray, shadow_color:-16777216, extra: [{score:{name:"#cost_$(id)_stone_original",objective:"cost"}}, "개 §8→ §f", {score:{name:"#cost_$(id)_stone",objective:"cost"}}, "개 §8(결정 상점 영향 적용)"] }
$execute if score #cost_$(id)_stone cost matches 1.. if score #cost_$(id)_stone_original cost matches 1.. unless score #cost_$(id)_stone_original cost = #cost_$(id)_stone cost if score #cost_$(id)_overworld_13_effective tmp matches 1 run data modify storage data tmp.cost_text.$(id).cost append value { text: "돌 ", color:gray, shadow_color:-16777216, extra: [{score:{name:"#cost_$(id)_stone_original",objective:"cost"}}, "개 §8→ §f", {score:{name:"#cost_$(id)_stone",objective:"cost"}}, "개 §8(결정 상점 영향 적용, 소모 없음)"] }

$execute if score #cost_$(id)_exp_lvl cost matches 1.. run data modify storage data tmp.cost_text.$(id).cost append value { text: "경험치 ", extra: [{score:{name:"#cost_$(id)_exp_lvl",objective:"cost"}}, "레벨"] }

$execute if score #cost_$(id)_coal cost matches 1.. unless score #cost_$(id)_coal_original cost matches 1.. unless score #cost_$(id)_2_1_effective tmp matches 1 run data modify storage data tmp.cost_text.$(id).cost append value { text: "석탄 ", color:dark_gray, shadow_color:-16777216, extra: [{score:{name:"#cost_$(id)_coal",objective:"cost"}}, "개"] }
$execute if score #cost_$(id)_coal cost matches 1.. unless score #cost_$(id)_coal_original cost matches 1.. if score #cost_$(id)_2_1_effective tmp matches 1 run data modify storage data tmp.cost_text.$(id).cost append value { text: "석탄 ", color:dark_gray, shadow_color:-16777216, extra: [{score:{name:"#cost_$(id)_coal",objective:"cost"}}, "개 ", { text: "§6🍀", hover_event: { action: "show_text", value: ["", { text: "§6🍀 " }, { text: "발전성 중화", color:aqua, bold:true, shadow_color:-1426128896 }, { text: "§7 효과로 인해 구매 시 석탄을 소모하지 않습니다.\n§8(요구량은 소지해야 함)" }] } }] }
$execute if score #cost_$(id)_coal cost matches 1.. if score #cost_$(id)_coal_original cost = #cost_$(id)_coal cost unless score #cost_$(id)_2_1_effective tmp matches 1 run data modify storage data tmp.cost_text.$(id).cost append value { text: "석탄 ", color:dark_gray, shadow_color:-16777216, extra: [{score:{name:"#cost_$(id)_coal",objective:"cost"}}, "개"] }
$execute if score #cost_$(id)_coal cost matches 1.. if score #cost_$(id)_coal_original cost = #cost_$(id)_coal cost if score #cost_$(id)_2_1_effective tmp matches 1 run data modify storage data tmp.cost_text.$(id).cost append value { text: "석탄 ", color:dark_gray, shadow_color:-16777216, extra: [{score:{name:"#cost_$(id)_coal",objective:"cost"}}, "개 ", { text: "§6🍀", hover_event: { action: "show_text", value: ["", { text: "§6🍀 " }, { text: "발전성 중화", color:aqua, bold:true, shadow_color:-1426128896 }, { text: "§7 효과로 인해 구매 시 석탄을 소모하지 않습니다.\n§8(요구량은 소지해야 함)" }] } }] }
$execute if score #cost_$(id)_coal cost matches 1.. if score #cost_$(id)_coal_original cost matches 1.. unless score #cost_$(id)_coal_original cost = #cost_$(id)_coal cost unless score #cost_$(id)_2_1_effective tmp matches 1 run data modify storage data tmp.cost_text.$(id).cost append value { text: "석탄 ", color:dark_gray, shadow_color:-16777216, extra: [{score:{name:"#cost_$(id)_coal_original",objective:"cost"}}, "개 §8→ §f", {score:{name:"#cost_$(id)_coal",objective:"cost"}}, "개 §8(결정 상점 영향 적용)"] }
$execute if score #cost_$(id)_coal cost matches 1.. if score #cost_$(id)_coal_original cost matches 1.. unless score #cost_$(id)_coal_original cost = #cost_$(id)_coal cost if score #cost_$(id)_2_1_effective tmp matches 1 run data modify storage data tmp.cost_text.$(id).cost append value { text: "석탄 ", color:dark_gray, shadow_color:-16777216, extra: [{score:{name:"#cost_$(id)_coal_original",objective:"cost"}}, "개 §8→ §f", {score:{name:"#cost_$(id)_coal",objective:"cost"}}, "개 §8(결정 상점 영향 적용) ", { text: "§6🍀", hover_event: { action: "show_text", value: ["", { text: "§6🍀 " }, { text: "발전성 중화", color:aqua, bold:true, shadow_color:-1426128896 }, { text: "§7 효과로 인해 구매 시 석탄을 소모하지 않습니다.\n§8(요구량은 소지해야 함)" }] } }] }

$execute if score #cost_$(id)_spirit cost matches 1.. unless score #cost_$(id)_spirit_original cost matches 1.. run data modify storage data tmp.cost_text.$(id).cost append value { text: "영감 ", color:blue, shadow_color:-16777216, extra: [{score:{name:"#cost_$(id)_spirit",objective:"cost"}}, "개"] }
$execute if score #cost_$(id)_spirit cost matches 1.. if score #cost_$(id)_spirit_original cost = #cost_$(id)_spirit cost run data modify storage data tmp.cost_text.$(id).cost append value { text: "영감 ", color:blue, shadow_color:-16777216, extra: [{score:{name:"#cost_$(id)_spirit",objective:"cost"}}, "개"] }
$execute if score #cost_$(id)_spirit cost matches 1.. if score #cost_$(id)_spirit_original cost matches 1.. unless score #cost_$(id)_spirit_original cost = #cost_$(id)_spirit cost run data modify storage data tmp.cost_text.$(id).cost append value { text: "영감 ", color:blue, shadow_color:-16777216, extra: [{score:{name:"#cost_$(id)_spirit_original",objective:"cost"}}, "개 §8→ §f", {score:{name:"#cost_$(id)_spirit",objective:"cost"}}, "개 §8(결정 상점 영향 적용)"] }
$execute if score #cost_$(id)_iron cost matches 1.. run data modify storage data tmp.cost_text.$(id).cost append value { text: "철 ", color:white, shadow_color:-16777216, extra: [{score:{name:"#cost_$(id)_iron",objective:"cost"}}, "개"] }
$execute if score #cost_$(id)_copper cost matches 1.. run data modify storage data tmp.cost_text.$(id).cost append value { text: "구리 ", color:gold, shadow_color:-16777216, extra: [{score:{name:"#cost_$(id)_copper",objective:"cost"}}, "개"] }
$execute if score #cost_$(id)_diamond cost matches 1.. run data modify storage data tmp.cost_text.$(id).cost append value { text: "다이아몬드 ", color:aqua, shadow_color:-16741750, extra: [{score:{name:"#cost_$(id)_diamond",objective:"cost"}}, "개"] }
$execute if score #cost_$(id)_emerald cost matches 1.. run data modify storage data tmp.cost_text.$(id).cost append value { text: "에메랄드 ", color:green, bold:false, shadow_color:-16777216, extra: [{score:{name:"#cost_$(id)_emerald",objective:"cost"}}, "개"] }
$execute if score #cost_$(id)_lapis cost matches 1.. run data modify storage data tmp.cost_text.$(id).cost append value { text: "청금석 ", color:blue, shadow_color:-16777216, extra: [{score:{name:"#cost_$(id)_lapis",objective:"cost"}}, "개"] }
$execute if score #cost_$(id)_heat cost matches 1.. run data modify storage data tmp.cost_text.$(id).cost append value { text: "열기 ", color:red, shadow_color:-16777216, extra: [{score:{name:"#cost_$(id)_heat",objective:"cost"}}, "개"] }
$execute if score #cost_$(id)_cold cost matches 1.. run data modify storage data tmp.cost_text.$(id).cost append value { text: "냉기 ", color:aqua, shadow_color:-16777216, extra: [{score:{name:"#cost_$(id)_cold",objective:"cost"}}, "개"] }
$execute if score #cost_$(id)_information cost matches 1.. run data modify storage data tmp.cost_text.$(id).cost append value { text: "정보 ", color:light_purple, shadow_color:-16777216, extra: [{score:{name:"#cost_$(id)_information",objective:"cost"}}, "조각"] }
$execute if score #cost_$(id)_time cost matches 1.. run data modify storage data tmp.cost_text.$(id).cost append value { text: "시간 ", color:dark_aqua, shadow_color:-16777216, extra: [{score:{name:"#cost_$(id)_time",objective:"cost"}}, "조각"] }
$execute if score #cost_$(id)_world_eye cost matches 1.. run data modify storage data tmp.cost_text.$(id).cost append value { text: "세계의 눈 ", color:dark_green, shadow_color:-16777216, extra: [{score:{name:"#cost_$(id)_world_eye",objective:"cost"}}, "개"] }
$execute if score #cost_$(id)_obsidian cost matches 1.. run data modify storage data tmp.cost_text.$(id).cost append value { text: "흑요석 ", color:dark_purple, shadow_color:-16777216, extra: [{score:{name:"#cost_$(id)_obsidian",objective:"cost"}}, "개"] }
$execute if score #cost_$(id)_owc cost matches 1.. run data modify storage data tmp.cost_text.$(id).cost append value { text: "압축된 오버월드 결정 ", color:aqua, shadow_color:-16777216, extra: [{score:{name:"#cost_$(id)_owc",objective:"cost"}}, "개"] }
$execute if score #cost_$(id)_nc cost matches 1.. run data modify storage data tmp.cost_text.$(id).cost append value { text: "압축된 네더 결정 ", color:red, shadow_color:-16777216, extra: [{score:{name:"#cost_$(id)_nc",objective:"cost"}}, "개"] }
$execute if score #cost_$(id)_quartz cost matches 1.. unless data storage data tmp.cost_text_context.upgrade run data modify storage data tmp.cost_text.$(id).cost append value { text: "석영 ", color:white, shadow_color:-16777216, extra: [{score:{name:"#cost_$(id)_quartz",objective:"cost"}}, "개"] }
$execute if score #cost_$(id)_quartz cost matches 1.. if data storage data tmp.cost_text_context.upgrade unless score #cost_$(id)_4_2_effective tmp matches 1 run data modify storage data tmp.cost_text.$(id).cost append value { text: "석영 ", color:white, shadow_color:-16777216, extra: [{score:{name:"#cost_$(id)_quartz",objective:"cost"}}, "개"] }
$execute if score #cost_$(id)_quartz cost matches 1.. if data storage data tmp.cost_text_context.upgrade if score #cost_$(id)_4_2_effective tmp matches 1 run data modify storage data tmp.cost_text.$(id).cost append value { text: "석영 ", color:white, shadow_color:-16777216, extra: [{score:{name:"#cost_$(id)_quartz",objective:"cost"}}, "개 ", { text: "§6🍀", hover_event: { action: "show_text", value: ["", { text: "§6🍀 " }, { text: "숙련된 발굴", color:aqua, bold:true, shadow_color:-1426128896 }, { text: "§7 효과로 인해 석영이 필요한 업그레이드 구매 시 석영을 소모하지 않습니다.\n§8(요구량은 소지해야 함)" }] } }] }
$execute if score #cost_$(id)_gold cost matches 1.. unless score #cost_$(id)_2_1_effective tmp matches 1 run data modify storage data tmp.cost_text.$(id).cost append value { text: "금 ", color:gold, bold:false, extra: [{score:{name:"#cost_$(id)_gold",objective:"cost"}}, "개"], shadow_color:-7710208 }
$execute if score #cost_$(id)_gold cost matches 1.. if score #cost_$(id)_2_1_effective tmp matches 1 run data modify storage data tmp.cost_text.$(id).cost append value { text: "금 ", color:gold, bold:false, extra: [{score:{name:"#cost_$(id)_gold",objective:"cost"}}, "개 ", { text: "§6🍀", hover_event: { action: "show_text", value: ["", { text: "§6🍀 " }, { text: "발전성 중화", color:aqua, bold:true, shadow_color:-1426128896 }, { text: "§7 효과로 인해 구매 시 금을 소모하지 않습니다.\n§8(요구량은 소지해야 함)" }] } }], shadow_color:-7710208 }
$execute if score #cost_$(id)_blaze_powder cost matches 1.. run data modify storage data tmp.cost_text.$(id).cost append value { text: "블레이즈 가루 ", color:red, shadow_color:-16777216, extra: [{score:{name:"#cost_$(id)_blaze_powder",objective:"cost"}}, "개"] }

$data modify storage data tmp.cost_text.$(id).text set value { storage: "data", nbt: "tmp.cost_text.$(id).cost[]", interpret:true, insertion:"$(insertion)" }
data remove storage data tmp.cost_original
