# data 저장소의 tmp.regen_data.now 경로에 const.resource.wood.regen[{lvl:(현재 레벨)}] 값을 삽입

execute unless score #wood_regen_lvl upgrade = #wood_regen_lvl upgrade run scoreboard players set #wood_regen_lvl upgrade 0

execute store result storage data tmp.regen_data.lvl int 1 run scoreboard players get #wood_regen_lvl upgrade
function resource/material/wood/value/regen_data_by_lvl with storage data tmp.regen_data
data remove storage data tmp.regen_data.now
data modify storage data tmp.regen_data.now set from storage data tmp.regen_data.tmp
data remove storage data tmp.regen_data.lvl
data remove storage data tmp.regen_data.tmp
