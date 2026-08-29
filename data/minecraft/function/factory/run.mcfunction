# Macro args: id, dim, block, x, y, z
$execute unless score #$(id) factory_unlocked matches 1 run return 0
$execute unless score #$(id) factory_enabled matches 1 run return 0
$execute if score #$(id) factory_timer matches 1.. run scoreboard players remove #$(id) factory_timer 1
$execute if score #$(id) factory_timer matches 1.. run return 0
$execute store result storage data tmp.factory.tick.lvl int 1 run scoreboard players get #$(id) factory_level
$data modify storage data tmp.factory.tick.id set value "$(id)"
function factory/read with storage data tmp.factory.tick
$execute if score #$(id) factory_level matches 0 run data modify storage data tmp.factory.$(id).now.interval set value 80
$execute if score #$(id) factory_level matches 1 run data modify storage data tmp.factory.$(id).now.interval set value 40
$execute if score #$(id) factory_level matches 2 run data modify storage data tmp.factory.$(id).now.interval set value 20
$execute if score #$(id) factory_level matches 3 run data modify storage data tmp.factory.$(id).now.interval set value 10
$execute if score #$(id) factory_level matches 4 run data modify storage data tmp.factory.$(id).now.interval set value 5
$execute if score #$(id) factory_level matches 5 run data modify storage data tmp.factory.$(id).now.interval set value 2
$execute if score #$(id) factory_level matches 6.. run data modify storage data tmp.factory.$(id).now.interval set value 1
$function dried/advancement/hot_factory_efficiency with storage data tmp.factory.$(id).now
$function factory/energy/apply_fuel with storage data tmp.factory.$(id).now
$data modify storage data tmp.factory.$(id).now.dim set value "$(dim)"
$data modify storage data tmp.factory.$(id).now.block set value "$(block)"
$data modify storage data tmp.factory.$(id).now.x set value $(x)
$data modify storage data tmp.factory.$(id).now.y set value $(y)
$data modify storage data tmp.factory.$(id).now.z set value $(z)
$function factory/cycle with storage data tmp.factory.$(id).now
