# Macro args: id, dim, block, x, y, z
$scoreboard players operation #$(id) factory_timer = #$(id)_factory_interval tmp
$execute unless score #coal material >= #$(id)_factory_fuel tmp run scoreboard players set #$(id) factory_status 2
$execute unless score #coal material >= #$(id)_factory_fuel tmp run return 0
$scoreboard players operation #coal material -= #$(id)_factory_fuel tmp
$scoreboard players set #$(id) factory_status 1
$scoreboard players set #$(id)_automated_harvest var 1
$execute in $(dim) run setblock $(x) $(y) $(z) air destroy
return 1
