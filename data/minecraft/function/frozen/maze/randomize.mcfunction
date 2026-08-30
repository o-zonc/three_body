# 직전 종류에서 1..7만큼 이동해, 매번 반드시 다른 미로를 선택합니다.
execute store result score #maze_roll tmp run random value 1..7
scoreboard players operation #maze_type var += #maze_roll tmp
execute if score #maze_type var matches 8.. run scoreboard players remove #maze_type var 8

scoreboard players set #frozen_maze_announced var 0

function frozen/maze/sfx/start
function frozen/maze/sfx/master
