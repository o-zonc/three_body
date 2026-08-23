# data 저장소의 tmp.regen_data.now 경로에 const.resource.gold.regen[{lvl:(현재 레벨)}] 값을 삽입

execute unless score #gold_regen_lvl upgrade = #gold_regen_lvl upgrade run scoreboard players set #gold_regen_lvl upgrade 0

execute store result storage data tmp.regen_data.lvl int 1 run scoreboard players get #gold_regen_lvl upgrade
function resource/material/gold/value/regen_data_by_lvl with storage data tmp.regen_data
data remove storage data tmp.regen_data.now
data modify storage data tmp.regen_data.now set from storage data tmp.regen_data.tmp
data remove storage data tmp.regen_data.lvl
data remove storage data tmp.regen_data.tmp
