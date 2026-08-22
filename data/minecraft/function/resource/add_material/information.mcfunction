# 직접 호출 API: /function minecraft:resource/add_material/information {amount:<지급량>}
$scoreboard players set #material_add_value tmp $(amount)
function meta/information/give
