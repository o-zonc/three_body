# 매크로 인수: id, floor. 자동 인출은 영구 해금 임계치를 남긴 채 소지 한도까지만 채운다.
$scoreboard players operation #withdraw_space tmp = #$(id)_capacity meta
$scoreboard players operation #withdraw_space tmp -= #$(id)_wallet tmp
execute unless score #withdraw_space tmp matches 1.. run return 0

# 자동 인출로 사용할 수 있는 양은 보관량에서 보호 하한선을 뺀 초과분뿐이다.
$scoreboard players operation #withdraw_available tmp = #$(id)_bank meta
$scoreboard players remove #withdraw_available tmp $(floor)
execute unless score #withdraw_available tmp matches 1.. run return 0

scoreboard players operation #withdraw_amount tmp = #withdraw_available tmp
execute if score #withdraw_amount tmp > #withdraw_space tmp run scoreboard players operation #withdraw_amount tmp = #withdraw_space tmp
$scoreboard players operation #$(id)_bank meta -= #withdraw_amount tmp
execute store result storage data tmp.meta.amount int 1 run scoreboard players get #withdraw_amount tmp
$function meta/$(id)/give_item with storage data tmp.meta
function meta/sync
