# Macro args: type, numerator, denominator
# tmp.cost 안의 지정 자원 비용에 비율을 적용한다. 결과는 올림 처리하여 최소 1개를 유지한다.
$execute unless data storage data tmp.cost[{type:"$(type)"}].amount run return 0

$execute store result score #shop_discount_amount tmp run data get storage data tmp.cost[{type:"$(type)"}].amount
execute if score #shop_discount_amount tmp matches ..0 run return 0

$scoreboard players set #shop_discount_numerator tmp $(numerator)
$scoreboard players set #shop_discount_denominator tmp $(denominator)
scoreboard players operation #shop_discount_amount tmp *= #shop_discount_numerator tmp
scoreboard players operation #shop_discount_rounding tmp = #shop_discount_denominator tmp
scoreboard players remove #shop_discount_rounding tmp 1
scoreboard players operation #shop_discount_amount tmp += #shop_discount_rounding tmp
scoreboard players operation #shop_discount_amount tmp /= #shop_discount_denominator tmp

$execute store result storage data tmp.cost[{type:"$(type)"}].amount int 1 run scoreboard players get #shop_discount_amount tmp
return 1
