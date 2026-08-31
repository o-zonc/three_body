# Macro args: id. Store the final production settings; refresh only when a related state changes.
$execute store result storage data tmp.factory.cache.lvl int 1 run scoreboard players get #$(id) factory_level
$data modify storage data tmp.factory.cache.id set value "$(id)"
function factory/read with storage data tmp.factory.cache

$execute if score #$(id) factory_level matches 0 run data modify storage data tmp.factory.$(id).now.interval set value 80
$execute if score #$(id) factory_level matches 1 run data modify storage data tmp.factory.$(id).now.interval set value 40
$execute if score #$(id) factory_level matches 2 run data modify storage data tmp.factory.$(id).now.interval set value 20
$execute if score #$(id) factory_level matches 3 run data modify storage data tmp.factory.$(id).now.interval set value 10
$execute if score #$(id) factory_level matches 4 run data modify storage data tmp.factory.$(id).now.interval set value 5
$execute if score #$(id) factory_level matches 5 run data modify storage data tmp.factory.$(id).now.interval set value 2
$execute if score #$(id) factory_level matches 6.. run data modify storage data tmp.factory.$(id).now.interval set value 1
$function dried/advancement/hot_factory_efficiency with storage data tmp.factory.$(id).now
$execute store result score #$(id)_factory_interval tmp run data get storage data tmp.factory.$(id).now.interval

# 메마른 성채 보정은 기존처럼 [뜨거워!] 보정 뒤에 정수 나눗셈으로 적용한다.
execute if score #stronghold_dried upgrade matches 1.. run scoreboard players set #stronghold_multiplier tmp 80
$execute if score #stronghold_dried upgrade matches 1.. run scoreboard players operation #$(id)_factory_interval tmp *= #stronghold_multiplier tmp
execute if score #stronghold_dried upgrade matches 1.. run scoreboard players set #stronghold_divisor tmp 100
$execute if score #stronghold_dried upgrade matches 1.. run scoreboard players operation #$(id)_factory_interval tmp /= #stronghold_divisor tmp
$execute if score #$(id)_factory_interval tmp matches ..0 run scoreboard players set #$(id)_factory_interval tmp 1

$function factory/energy/apply_fuel with storage data tmp.factory.$(id).now
$execute store result score #$(id)_factory_fuel tmp run data get storage data tmp.factory.$(id).now.fuel
