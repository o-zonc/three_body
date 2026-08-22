# 자동 세공 1회
# Macro args: id, reward
# Lv.2 세공 비용(대상 1 + 철 1)에 자동화 연료 구리 1을 추가로 소비합니다.
scoreboard players set #jewel_auto_success tmp 0

$execute unless score #$(id) material matches 1.. run return 0
execute unless score #iron material matches 1.. run return 0
execute unless score #copper material matches 1.. run return 0

$scoreboard players remove #$(id) material 1
scoreboard players remove #iron material 1
scoreboard players remove #copper material 1

$scoreboard players set #material_add_value tmp $(reward)
$function resource/add {id:"$(id)"}
scoreboard players set #jewel_auto_success tmp 1
return 1
