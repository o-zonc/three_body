execute unless score #stronghold_frozen upgrade matches 1.. run return 0
scoreboard players set #stronghold_multiplier tmp 80
scoreboard players operation #jewel_cooldown var *= #stronghold_multiplier tmp
scoreboard players set #stronghold_divisor tmp 100
scoreboard players operation #jewel_cooldown var /= #stronghold_divisor tmp
execute if score #jewel_cooldown var matches ..0 run scoreboard players set #jewel_cooldown var 1
