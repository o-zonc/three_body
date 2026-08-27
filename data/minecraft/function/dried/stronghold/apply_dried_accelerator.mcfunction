execute unless score #stronghold_dried upgrade matches 1.. run return 0
scoreboard players set #stronghold_multiplier tmp 80
scoreboard players operation #GLOBAL experiment_cooldown *= #stronghold_multiplier tmp
scoreboard players set #stronghold_divisor tmp 100
scoreboard players operation #GLOBAL experiment_cooldown /= #stronghold_divisor tmp
execute if score #GLOBAL experiment_cooldown matches ..0 run scoreboard players set #GLOBAL experiment_cooldown 1
