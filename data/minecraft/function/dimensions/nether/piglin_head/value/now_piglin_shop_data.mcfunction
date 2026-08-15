execute unless score #piglin_shop_lvl piglin_head = #piglin_shop_lvl piglin_head run scoreboard players set #piglin_shop_lvl piglin_head 0

execute store result storage data tmp.piglin_head.piglin_shop.lvl int 1 run scoreboard players get #piglin_shop_lvl piglin_head
function dimensions/nether/piglin_head/value/piglin_shop_data_by_lvl with storage data tmp.piglin_head.piglin_shop
data remove storage data tmp.piglin_head.piglin_shop.now
data modify storage data tmp.piglin_head.piglin_shop.now set from storage data tmp.piglin_head.piglin_shop.tmp
data remove storage data tmp.piglin_head.piglin_shop.lvl
data remove storage data tmp.piglin_head.piglin_shop.tmp
