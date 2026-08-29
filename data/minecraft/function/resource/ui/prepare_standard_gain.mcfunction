# 일반 자원의 "기초 생산량 → 실제 수급량 ★" UI를 준비합니다.
# Macro args: id, color, shop_color, advancement, advancement_multiplier, advancement_label

$execute store result score #gain_shop_multiplier tmp run function resource/shop/value {id:"$(id)"}
$scoreboard players operation #gain_base_bonus tmp = #$(id)_base_gain tmp
scoreboard players remove #gain_base_bonus tmp 1

# 실제 생산량 증가 효과가 하나라도 있는 경우에만 실제 수급량과 ★를 표시합니다.
scoreboard players set #gain_effect_active tmp 0
execute if score #gain_base_bonus tmp matches 1.. run scoreboard players set #gain_effect_active tmp 1
execute if score #gain_shop_multiplier tmp matches 2.. run scoreboard players set #gain_effect_active tmp 1
$execute if score #$(advancement)_advancement_reward var matches 1.. unless score #overworld_advancement_reward_disabled var matches 1 if score #gain_advancement_threshold tmp matches 2.. run scoreboard players set #gain_effect_active tmp 1
execute if score #dawn_amplifier_ui_active tmp matches 1 run scoreboard players set #gain_effect_active tmp 1

$data modify storage data tmp.resource_gain_hover.$(id) set value [{text:"현재 생산량 증가 효과\n",color:"$(color)"}]
$execute if score #gain_base_bonus tmp matches 1.. run data modify storage data tmp.resource_gain_hover.$(id) append value {text:"\n기초 자원 생산량: +",color:"gray"}
$execute if score #gain_base_bonus tmp matches 1.. run data modify storage data tmp.resource_gain_hover.$(id) append value {score:{name:"#gain_base_bonus",objective:"tmp"},color:"white"}
$execute if score #gain_shop_multiplier tmp matches 2.. run data modify storage data tmp.resource_gain_hover.$(id) append value {text:"\n자원 상점 수급량: ×",color:"gray"}
$execute if score #gain_shop_multiplier tmp matches 2.. run data modify storage data tmp.resource_gain_hover.$(id) append value {score:{name:"#gain_shop_multiplier",objective:"tmp"},color:"$(shop_color)"}
$execute if score #$(advancement)_advancement_reward var matches 1.. unless score #overworld_advancement_reward_disabled var matches 1 if score #gain_advancement_threshold tmp matches 2.. run data modify storage data tmp.resource_gain_hover.$(id) append value {text:"\n발전과제 수급량: ×",color:"gray"}
$execute if score #$(advancement)_advancement_reward var matches 1.. unless score #overworld_advancement_reward_disabled var matches 1 if score #gain_advancement_threshold tmp matches 2.. run data modify storage data tmp.resource_gain_hover.$(id) append value {text:"$(advancement_label)",color:"gold"}
$data modify storage data tmp.resource_gain_hover.$(id) append from storage data tmp.dawn_amplifier_ui

$data modify storage data tmp.advancement_reward_ui.$(id) set value {text:""}
$execute if score #gain_effect_active tmp matches 1 run data modify storage data tmp.advancement_reward_ui.$(id) set value [{text:" → "},{score:{name:"#$(id)_gain",objective:"tmp"},color:"$(color)"},{text:"§7개"},{text:" ★",color:"$(color)",hover_event:{action:"show_text",value:[]}}]
$execute if score #gain_effect_active tmp matches 1 run data modify storage data tmp.advancement_reward_ui.$(id)[3].hover_event.value set from storage data tmp.resource_gain_hover.$(id)
