# 현재 속도 레벨의 데이터를 tmp.drill_speed_data.now에 저장

execute unless score #drill_speed_lvl upgrade = #drill_speed_lvl upgrade run scoreboard players set #drill_speed_lvl upgrade 0

execute store result storage data tmp.drill_speed_data.lvl int 1 run scoreboard players get #drill_speed_lvl upgrade
function dimensions/overworld/drill/value/speed_data_by_lvl with storage data tmp.drill_speed_data
data remove storage data tmp.drill_speed_data.now
data modify storage data tmp.drill_speed_data.now set from storage data tmp.drill_speed_data.tmp
data remove storage data tmp.drill_speed_data.lvl
data remove storage data tmp.drill_speed_data.tmp
