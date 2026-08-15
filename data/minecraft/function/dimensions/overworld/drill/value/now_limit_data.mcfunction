# 현재 한계 레벨의 데이터를 tmp.drill_limit_data.now에 저장

execute unless score #drill_limit_lvl upgrade = #drill_limit_lvl upgrade run scoreboard players set #drill_limit_lvl upgrade 0

execute store result storage data tmp.drill_limit_data.lvl int 1 run scoreboard players get #drill_limit_lvl upgrade
function dimensions/overworld/drill/value/limit_data_by_lvl with storage data tmp.drill_limit_data
data remove storage data tmp.drill_limit_data.now
data modify storage data tmp.drill_limit_data.now set from storage data tmp.drill_limit_data.tmp
data remove storage data tmp.drill_limit_data.lvl
data remove storage data tmp.drill_limit_data.tmp
