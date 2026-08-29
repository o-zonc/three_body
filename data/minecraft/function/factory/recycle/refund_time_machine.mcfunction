# Macro arg: type. Lv.4의 40% 환급.
scoreboard players operation #factory_refund_amount tmp = #time_machine_color_cost tmp
scoreboard players set #factory_refund_multiplier tmp 4
scoreboard players operation #factory_refund_amount tmp *= #factory_refund_multiplier tmp
scoreboard players set #factory_refund_divisor tmp 10
scoreboard players operation #factory_refund_amount tmp /= #factory_refund_divisor tmp
$scoreboard players operation #$(type) material += #factory_refund_amount tmp
