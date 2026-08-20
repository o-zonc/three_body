# Macro args: id, fuel, interval, dim, block, x, y, z
$scoreboard players set #$(id) factory_timer $(interval)
$execute unless score #coal material matches $(fuel).. run scoreboard players set #$(id) factory_status 2
$execute unless score #coal material matches $(fuel).. run return 0
$scoreboard players remove #coal material $(fuel)
$scoreboard players set #$(id) factory_status 1
$execute in $(dim) unless block $(x) $(y) $(z) $(block) run return 0
$execute in $(dim) run setblock $(x) $(y) $(z) air destroy
return 1
