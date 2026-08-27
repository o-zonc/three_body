# Macro arg: id
execute unless score #stronghold_dried upgrade matches 1.. run return 0
scoreboard players set #stronghold_multiplier tmp 80
$scoreboard players operation #$(id) factory_timer *= #stronghold_multiplier tmp
scoreboard players set #stronghold_divisor tmp 100
$scoreboard players operation #$(id) factory_timer /= #stronghold_divisor tmp
$execute if score #$(id) factory_timer matches ..0 run scoreboard players set #$(id) factory_timer 1
