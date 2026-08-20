# Macro arg: id
$execute if score #$(id) factory_level matches 0 run scoreboard players set #$(id) factory_timer 80
$execute if score #$(id) factory_level matches 1 run scoreboard players set #$(id) factory_timer 40
$execute if score #$(id) factory_level matches 2 run scoreboard players set #$(id) factory_timer 20
$execute if score #$(id) factory_level matches 3 run scoreboard players set #$(id) factory_timer 10
$execute if score #$(id) factory_level matches 4 run scoreboard players set #$(id) factory_timer 5
$execute if score #$(id) factory_level matches 5 run scoreboard players set #$(id) factory_timer 2
$execute if score #$(id) factory_level matches 6.. run scoreboard players set #$(id) factory_timer 1
