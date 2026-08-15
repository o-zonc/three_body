function dimensions/overworld/drill/value/y_text

execute store result score #drill_speed_value tmp run function dimensions/overworld/drill/value/speed_value
execute store result score #drill_effective_speed tmp run function dimensions/overworld/drill/value/effective_speed
function dimensions/overworld/shop/crystal_shop/apply/drill_speed
execute store result score #drill_limit_value tmp run function dimensions/overworld/drill/value/limit_value

# 현재 높이 표시 컴포넌트
# limit 도달 시 좌표를 빨간 굵은 글씨와 경고 hover로 표시
data modify storage data tmp.y_text_component set value {storage:"data",nbt:"tmp.y_text",interpret:true,color:"white"}
execute if score #y var = #drill_limit_value tmp run data modify storage data tmp.y_text_component set value {text:"",extra:[{storage:"data",nbt:"tmp.y_text",interpret:true,color:red,bold:true}],hover_event:{action:"show_text",value:{text:"§c§l드릴의 힘이 약해 더 이상 내려갈 수 없습니다.\n§e§l드릴의 높이 제한을 업그레이드해야 합니다."}}}
execute if score #y var matches -64000 run data modify storage data tmp.y_text_component set value {text:"",extra:[{storage:"data",nbt:"tmp.y_text",interpret:true,color:aqua,bold:true}],hover_event:{action:"show_text",value:{text:"최하층에 도달했습니다."}}}

# 깊이, 시련, 결정 상점에 따른 최종 속력 표시 컴포넌트
data modify storage data tmp.drill_speed_component set value ["",{score:{name:"#drill_effective_speed",objective:"tmp"},color:"white"},"  §8(드릴이 정상 속도로 작동 중)"]
execute unless score #drill_depth_speed tmp = #drill_speed_value tmp run data modify storage data tmp.drill_speed_component set value ["",{score:{name:"#drill_speed_value",objective:"tmp"},color:"white"},{text:" §8→ "},{score:{name:"#drill_depth_speed",objective:"tmp"},color:"red"},{text:" §8(깊이에 의해 감속됨)"}]



# y 보정
scoreboard players set #y_cor tmp 1000

scoreboard players operation #drill_limit_lvl_int tmp = #drill_limit_value tmp
scoreboard players operation #drill_limit_lvl_int tmp /= #y_cor tmp



function dimensions/overworld/drill/value/speed_upgrade_cost
function resource/convert_upgrade_cost_to_text_named {id:"drill_speed",insertion:", "}

function dimensions/overworld/drill/value/limit_upgrade_cost
function resource/convert_upgrade_cost_to_text_named {id:"drill_limit",insertion:", "}

execute at @s run playsound ui.button.click weather @s ~ ~ ~ 1 2
function util/blank

data modify storage data tmp.creation_ui.drill_speed set value {text:"§b§l[ 속도 업그레이드 ]",hover_event:{action:"show_text",value:["",{text:"§6[§7 필요한 재료 §6]\n"},{storage:"data",nbt:"tmp.cost_text.drill_speed.text",interpret:true}]},click_event:{action:"run_command",command:"/trigger upgrade_trigger set 1104"}}
data modify storage data tmp.creation_ui.drill_limit set value {text:"§b§l[ 높이 제한 업그레이드 ]",hover_event:{action:"show_text",value:["",{text:"§6[§7 필요한 재료 §6]\n"},{storage:"data",nbt:"tmp.cost_text.drill_limit.text",interpret:true}]},click_event:{action:"run_command",command:"/trigger upgrade_trigger set 1105"}}
tellraw @s ["", \
  { text: "  §e§l{ 드릴 }§r" },\
  { text: "\n" },\
  { text: "\n  §8•§7 현재 높이: Y ", extra: [{ storage: "data", nbt: "tmp.y_text_component", interpret: true }] },\
  { text: "\n  §8•§7 속도: ", extra: [{ storage: "data", nbt: "tmp.drill_speed_component", interpret: true }] },\
  { text: "\n  §8•§7 높이 제한: Y ", extra: [{ score: { name: "#drill_limit_lvl_int", objective: "tmp" }, color: "white" }] },\
  { text: "\n" },\
  { text: "\n  ", extra: ["", {storage:"data",nbt:"tmp.creation_ui.drill_speed",interpret:true}] },\
  { text: "\n  ", extra: ["", {storage:"data",nbt:"tmp.creation_ui.drill_limit",interpret:true}] },\
  { text: "\n" },\
]
