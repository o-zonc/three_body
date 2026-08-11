# Material API - initialization
#
# Create each material score only when it does not already exist.

execute unless score #wood material matches * run scoreboard players set #wood material 0
execute unless score #stone material matches * run scoreboard players set #stone material 0
execute unless score #coal material matches * run scoreboard players set #coal material 0
execute unless score #copper material matches * run scoreboard players set #copper material 0
execute unless score #iron material matches * run scoreboard players set #iron material 0
execute unless score #gold material matches * run scoreboard players set #gold material 0
execute unless score #diamond material matches * run scoreboard players set #diamond material 0
execute unless score #emerald material matches * run scoreboard players set #emerald material 0
execute unless score #lapis material matches * run scoreboard players set #lapis material 0
execute unless score #heat material matches * run scoreboard players set #heat material 0
execute unless score #cold material matches * run scoreboard players set #cold material 0
execute unless score #information material matches * run scoreboard players set #information material 0
execute unless score #time material matches * run scoreboard players set #time material 0
execute unless score #world_eye material matches * run scoreboard players set #world_eye material 0
