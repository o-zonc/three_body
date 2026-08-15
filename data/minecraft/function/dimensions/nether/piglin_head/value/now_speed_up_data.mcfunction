execute unless score #speed_up_lvl piglin_head = #speed_up_lvl piglin_head run scoreboard players set #speed_up_lvl piglin_head 0

execute store result storage data tmp.piglin_head.speed_up.lvl int 1 run scoreboard players get #speed_up_lvl piglin_head
function dimensions/nether/piglin_head/value/speed_up_data_by_lvl with storage data tmp.piglin_head.speed_up
data remove storage data tmp.piglin_head.speed_up.now
data modify storage data tmp.piglin_head.speed_up.now set from storage data tmp.piglin_head.speed_up.tmp
data remove storage data tmp.piglin_head.speed_up.lvl
data remove storage data tmp.piglin_head.speed_up.tmp
