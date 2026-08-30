# Generic time-based block resource state machine.
# Macro args: id, x, y, z
$execute if score #disable_$(id)_production var matches 1 run return 0
$execute unless block $(x) $(y) $(z) air run return run scoreboard players reset #$(id)_remain generate
$execute if block $(x) $(y) $(z) air unless score #$(id)_remain generate = #$(id)_remain generate run scoreboard players set #catalyst_active_harvest var 0
$execute if block $(x) $(y) $(z) air unless score #$(id)_remain generate = #$(id)_remain generate unless score #$(id)_automated_harvest var matches 1 run scoreboard players set #catalyst_active_harvest var 1
$execute if block $(x) $(y) $(z) air unless score #$(id)_remain generate = #$(id)_remain generate run function resource/material/$(id)/harvest
$execute if block $(x) $(y) $(z) air run scoreboard players set #catalyst_active_harvest var 0
$execute if block $(x) $(y) $(z) air run scoreboard players set #$(id)_automated_harvest var 0
$execute if block $(x) $(y) $(z) air if score #$(id)_remain generate matches ..0 run function resource/material/$(id)/place
$execute if block $(x) $(y) $(z) air if score #$(id)_remain generate matches 1.. run return run scoreboard players remove #$(id)_remain generate 1
