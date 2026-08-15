# Apply crystal shop drill speed multiplier to #drill_effective_speed tmp.

function dimensions/overworld/shop/crystal_shop/value/now_drill_speed_up_data
execute store result score #drill_speed_up_multiplier tmp run data get storage data tmp.crystal_shop.drill_speed_up.now.value 100
scoreboard players operation #drill_effective_speed tmp *= #drill_speed_up_multiplier tmp
scoreboard players set #drill_speed_up_divisor tmp 100
scoreboard players operation #drill_effective_speed tmp /= #drill_speed_up_divisor tmp