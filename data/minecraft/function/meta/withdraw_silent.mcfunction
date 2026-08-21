# Macro args: id. 자동 인출은 보관소에서 소지 한도까지만 채웁니다.
$scoreboard players operation #withdraw_space tmp = #$(id)_capacity meta
$scoreboard players operation #withdraw_space tmp -= #$(id)_wallet tmp
execute unless score #withdraw_space tmp matches 1.. run return 0
$execute unless score #$(id)_bank meta matches 1.. run return 0
$scoreboard players operation #withdraw_amount tmp = #$(id)_bank meta
execute if score #withdraw_amount tmp > #withdraw_space tmp run scoreboard players operation #withdraw_amount tmp = #withdraw_space tmp
$scoreboard players operation #$(id)_bank meta -= #withdraw_amount tmp
execute store result storage data tmp.meta.amount int 1 run scoreboard players get #withdraw_amount tmp
$function meta/$(id)/give_item with storage data tmp.meta
function meta/sync
