# data 저장소의 tmp.drop_data.now 경로에 const.product.blaze.drop[{lvl:(현재 레벨)}] 값을 삽입

execute unless score #blaze_drop_lvl upgrade = #blaze_drop_lvl upgrade run scoreboard players set #blaze_drop_lvl upgrade 0

execute store result storage data tmp.drop_data.lvl int 1 run scoreboard players get #blaze_drop_lvl upgrade
function product/nether/blaze/value/drop_data_by_lvl with storage data tmp.drop_data
data remove storage data tmp.drop_data.now
data modify storage data tmp.drop_data.now set from storage data tmp.drop_data.tmp
data remove storage data tmp.drop_data.lvl
data remove storage data tmp.drop_data.tmp
