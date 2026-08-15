execute store result score #coal_restore_cooldown tmp run function resource/overworld/coal/value/regen_value
scoreboard players operation #coal_restore_base_cooldown tmp = #coal_restore_cooldown tmp
scoreboard players operation #cave_material_regen_value tmp = #coal_restore_cooldown tmp
function dimensions/overworld/shop/crystal_shop/apply/cave_material_regen_speed
scoreboard players operation #coal_restore_cooldown tmp = #cave_material_regen_value tmp

scoreboard players set #ten tmp 10
scoreboard players set #twenty tmp 20
scoreboard players operation #coal_restore_base_second_x10 tmp = #coal_restore_base_cooldown tmp
scoreboard players operation #coal_restore_base_second_x10 tmp *= #ten tmp
scoreboard players operation #coal_restore_base_second_x10 tmp /= #twenty tmp
scoreboard players operation #coal_restore_base_second_int tmp = #coal_restore_base_second_x10 tmp
scoreboard players operation #coal_restore_base_second_int tmp /= #ten tmp
scoreboard players operation #coal_restore_base_second_decimal tmp = #coal_restore_base_second_x10 tmp
scoreboard players operation #coal_restore_base_second_decimal tmp %= #ten tmp
scoreboard players operation #coal_restore_second_x10 tmp = #coal_restore_cooldown tmp
scoreboard players operation #coal_restore_second_x10 tmp *= #ten tmp
scoreboard players operation #coal_restore_second_x10 tmp /= #twenty tmp
scoreboard players operation #coal_restore_second_int tmp = #coal_restore_second_x10 tmp
scoreboard players operation #coal_restore_second_int tmp /= #ten tmp
scoreboard players operation #coal_restore_second_decimal tmp = #coal_restore_second_x10 tmp
scoreboard players operation #coal_restore_second_decimal tmp %= #ten tmp
data modify storage data tmp.coal_restore_component set value ["",{score:{name:"#coal_restore_second_int",objective:"tmp"},color:"white"},{text:"§7."},{score:{name:"#coal_restore_second_decimal",objective:"tmp"},color:"white"},{text:"§7초 §8(Y 좌표가 낮아질 수록 빨리 재생산됨)"}]
execute unless score #coal_restore_base_cooldown tmp = #coal_restore_cooldown tmp run data modify storage data tmp.coal_restore_component set value ["",{score:{name:"#coal_restore_base_second_int",objective:"tmp"},color:"white"},{text:"§7."},{score:{name:"#coal_restore_base_second_decimal",objective:"tmp"},color:"white"},{text:"§7초 §8→ "},{score:{name:"#coal_restore_second_int",objective:"tmp"},color:"aqua"},{text:"§7."},{score:{name:"#coal_restore_second_decimal",objective:"tmp"},color:"aqua"},{text:"§7초 §8(결정 상점 영향 적용, Y 좌표가 낮아질 수록 빨리 재생산됨)"}]

execute at @s run playsound ui.button.click weather @s ~ ~ ~ 1 2
function util/blank

tellraw @s ["", \
  { text: "  §8§l[ 석탄 ]§r" },\
  { text: "\n" },\
  { text: "\n  §8•§7 석탄 보유량: ", extra: [{ score: { name: "#coal", objective: "material" }, color:white }, { text: "§7개" } ] },\
  { text: "\n  §8•§7 재생산 대기: ", extra: [{ storage: "data", nbt: "tmp.coal_restore_component", interpret: true }] },\
  { text: "\n" },\
]
