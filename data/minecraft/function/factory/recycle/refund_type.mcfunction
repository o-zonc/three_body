# Macro args: type, cost. 현재 재처리 단계 ×10%를 해당 비용에 환급한다.
$scoreboard players operation #factory_refund_amount tmp = $(cost) cost
scoreboard players operation #factory_refund_amount tmp *= #factory_recycle_level upgrade
scoreboard players set #factory_refund_divisor tmp 10
scoreboard players operation #factory_refund_amount tmp /= #factory_refund_divisor tmp
$scoreboard players operation #$(type) material += #factory_refund_amount tmp
