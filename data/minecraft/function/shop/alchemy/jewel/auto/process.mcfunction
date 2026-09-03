# 자동 세공 1회
# 매크로 인수: id, reward
# Lv.1 초기형은 철 2 + 구리 2, Lv.2 완성형은 철 1 + 구리 1을 소비한다.
scoreboard players set #jewel_auto_success tmp 0
scoreboard players set #jewel_auto_iron_cost tmp 2
scoreboard players set #jewel_auto_copper_cost tmp 2
execute if score #level alchemy_workshop matches 2.. run scoreboard players set #jewel_auto_iron_cost tmp 1
execute if score #level alchemy_workshop matches 2.. run scoreboard players set #jewel_auto_copper_cost tmp 1

$execute unless score #$(id) unlock matches 1 run return 0
$execute unless score #$(id) material matches 1.. run return 0
execute unless score #iron material >= #jewel_auto_iron_cost tmp run return 0
execute unless score #copper material >= #jewel_auto_copper_cost tmp run return 0

$scoreboard players remove #$(id) material 1
scoreboard players operation #iron material -= #jewel_auto_iron_cost tmp
scoreboard players operation #copper material -= #jewel_auto_copper_cost tmp

$scoreboard players set #material_add_value tmp $(reward)
$function resource/add {id:"$(id)"}
scoreboard players set #jewel_auto_success tmp 1
return 1
