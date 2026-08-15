execute store result score #iron_restore_cooldown tmp run function product/overworld/iron/value/regen_value
scoreboard players operation #iron_restore_base_cooldown tmp = #iron_restore_cooldown tmp
scoreboard players operation #cave_material_regen_value tmp = #iron_restore_cooldown tmp
function dimensions/overworld/shop/crystal_shop/apply/cave_material_regen_speed
scoreboard players operation #iron_restore_cooldown tmp = #cave_material_regen_value tmp

scoreboard players set #ten tmp 10
scoreboard players set #twenty tmp 20
scoreboard players operation #iron_restore_base_second_x10 tmp = #iron_restore_base_cooldown tmp
scoreboard players operation #iron_restore_base_second_x10 tmp *= #ten tmp
scoreboard players operation #iron_restore_base_second_x10 tmp /= #twenty tmp
scoreboard players operation #iron_restore_base_second_int tmp = #iron_restore_base_second_x10 tmp
scoreboard players operation #iron_restore_base_second_int tmp /= #ten tmp
scoreboard players operation #iron_restore_base_second_decimal tmp = #iron_restore_base_second_x10 tmp
scoreboard players operation #iron_restore_base_second_decimal tmp %= #ten tmp
scoreboard players operation #iron_restore_second_x10 tmp = #iron_restore_cooldown tmp
scoreboard players operation #iron_restore_second_x10 tmp *= #ten tmp
scoreboard players operation #iron_restore_second_x10 tmp /= #twenty tmp
scoreboard players operation #iron_restore_second_int tmp = #iron_restore_second_x10 tmp
scoreboard players operation #iron_restore_second_int tmp /= #ten tmp
scoreboard players operation #iron_restore_second_decimal tmp = #iron_restore_second_x10 tmp
scoreboard players operation #iron_restore_second_decimal tmp %= #ten tmp
data modify storage data tmp.iron_restore_component set value ["",{score:{name:"#iron_restore_second_int",objective:"tmp"},color:"white"},{text:"§7."},{score:{name:"#iron_restore_second_decimal",objective:"tmp"},color:"white"},{text:"§7초 §8(Y 좌표가 낮아질 수록 빨리 재생산됨)"}]
execute unless score #iron_restore_base_cooldown tmp = #iron_restore_cooldown tmp run data modify storage data tmp.iron_restore_component set value ["",{score:{name:"#iron_restore_base_second_int",objective:"tmp"},color:"white"},{text:"§7."},{score:{name:"#iron_restore_base_second_decimal",objective:"tmp"},color:"white"},{text:"§7초 §8→ "},{score:{name:"#iron_restore_second_int",objective:"tmp"},color:"aqua"},{text:"§7."},{score:{name:"#iron_restore_second_decimal",objective:"tmp"},color:"aqua"},{text:"§7초 §8(결정 상점 영향 적용, Y 좌표가 낮아질 수록 빨리 재생산됨)"}]
execute if score #trial_active trial matches 1 if score #trial_id trial matches 5 unless score #creation_available_iron_production trial matches 1 run data modify storage data tmp.iron_restore_component set value {text:"[ 손실됨 ]",color:"dark_gray",shadow_color:-1428043265,bold:true,hover_event:{action:"show_text",value:{text:"그것은 손실되었습니다.",color:"dark_gray",shadow_color:-1428043265,bold:true}}}

execute at @s run playsound ui.button.click weather @s ~ ~ ~ 1 2
function util/blank

tellraw @s ["", \
  { text: "  §f§l[ 철 ]§r" },\
  { text: "\n" },\
  { text: "\n  §8•§7 철 보유량: ", extra: [{ score: { name: "#iron", objective: "material" }, color:white }, { text: "§7개" } ] },\
  { text: "\n  §8•§7 재생산 대기: ", extra: [{ storage: "data", nbt: "tmp.iron_restore_component", interpret: true }] },\
  { text: "\n" },\
]
