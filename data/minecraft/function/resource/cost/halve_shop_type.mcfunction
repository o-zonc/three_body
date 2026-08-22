# Macro args: type
# tmp.cost 안의 지정 자원 비용을 절반으로 줄인다. 홀수 비용은 올림 처리하여 최소 1개를 유지한다.
$execute unless data storage data tmp.cost[{type:"$(type)"}].amount run return 0

$execute store result score #shop_discount_amount tmp run data get storage data tmp.cost[{type:"$(type)"}].amount
execute if score #shop_discount_amount tmp matches ..0 run return 0

# ceil(amount / 2) = (amount + 1) / 2
scoreboard players add #shop_discount_amount tmp 1
scoreboard players set #shop_discount_divisor tmp 2
scoreboard players operation #shop_discount_amount tmp /= #shop_discount_divisor tmp

$execute store result storage data tmp.cost[{type:"$(type)"}].amount int 1 run scoreboard players get #shop_discount_amount tmp
return 1
