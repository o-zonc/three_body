# 자동 세공 1회
# 매크로 인수: id, reward
# Lv.1 중급형은 돌 8 + 구리 6, Lv.2 완성형은 구리 8 + 철 4를 소비한다.
scoreboard players set #jewel_auto_success tmp 0
scoreboard players set #jewel_auto_stone_cost tmp 8
scoreboard players set #jewel_auto_copper_cost tmp 6
scoreboard players set #jewel_auto_iron_cost tmp 0
execute if score #level alchemy_workshop matches 2.. run scoreboard players set #jewel_auto_stone_cost tmp 0
execute if score #level alchemy_workshop matches 2.. run scoreboard players set #jewel_auto_copper_cost tmp 8
execute if score #level alchemy_workshop matches 2.. run scoreboard players set #jewel_auto_iron_cost tmp 4

$execute unless score #$(id) unlock matches 1 run return 0
$execute unless score #$(id) material matches 1.. run return 0
execute unless score #stone material >= #jewel_auto_stone_cost tmp run return 0
execute unless score #copper material >= #jewel_auto_copper_cost tmp run return 0
execute unless score #iron material >= #jewel_auto_iron_cost tmp run return 0

$scoreboard players remove #$(id) material 1
scoreboard players operation #stone material -= #jewel_auto_stone_cost tmp
scoreboard players operation #copper material -= #jewel_auto_copper_cost tmp
scoreboard players operation #iron material -= #jewel_auto_iron_cost tmp

$scoreboard players set #material_add_value tmp $(reward)
$function resource/add {id:"$(id)"}
scoreboard players set #jewel_auto_success tmp 1
return 1
