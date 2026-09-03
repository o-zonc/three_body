# 매크로 인수: type
# #shop_cost_discount_percent의 현재 할인율을 tmp.cost의 지정 자원 비용에 적용한다.
# 결과는 올림 처리하며, 양수 비용은 최소 1개를 유지한다.
$execute unless data storage data tmp.cost[{type:"$(type)"}].amount run return 0

$execute store result score #shop_discount_amount tmp run data get storage data tmp.cost[{type:"$(type)"}].amount
execute if score #shop_discount_amount tmp matches ..0 run return 0

scoreboard players set #shop_discount_multiplier tmp 100
scoreboard players operation #shop_discount_multiplier tmp -= #shop_cost_discount_percent var
execute if score #shop_discount_multiplier tmp matches ..0 run scoreboard players set #shop_discount_multiplier tmp 1
execute if score #shop_discount_multiplier tmp matches 101.. run scoreboard players set #shop_discount_multiplier tmp 100

scoreboard players operation #shop_discount_amount tmp *= #shop_discount_multiplier tmp
scoreboard players add #shop_discount_amount tmp 99
scoreboard players set #shop_discount_denominator tmp 100
scoreboard players operation #shop_discount_amount tmp /= #shop_discount_denominator tmp

$execute store result storage data tmp.cost[{type:"$(type)"}].amount int 1 run scoreboard players get #shop_discount_amount tmp
return 1
