# 왼손에 든 긴급탈출장치를 소비하고 얼어붙은 세계의 시작점으로 탈출한다.
item replace entity @s weapon.offhand with air
scoreboard players set #frozen_maze_active var 0
scoreboard players set #frozen_maze_cleared var 0
scoreboard players set #frozen_maze_started var 0
scoreboard players set #frozen_maze_announced var 0
bossbar set bossbar_frozen_maze visible false
function frozen/structure/maze/open
execute in minecraft:frozen run tp @s 0 67 0
execute as @a at @s run playsound minecraft:item.goat_horn.sound.1 master @s ~ ~ ~ 0.8 2
execute unless entity @a[tag=accelerator_experiment_running] run title @s actionbar {text:"긴급탈출장치를 사용했습니다.",color:"aqua",italic:false}
tellraw @s ["§7이것도 못 깨다니 간고등어시군요!"]

function ui/sidebar/refresh
scoreboard objectives setdisplay sidebar material_display

tag @a remove maze
