# frozen+ender 인터랙션: 미로 이벤트마다 한 번만 흑요석 2개를 지급합니다.
execute unless score #frozen_maze_active var matches 1 run title @s actionbar {text:"미로 이벤트가 진행 중이 아닙니다.",color:"red"}
execute unless score #frozen_maze_active var matches 1 run return 0
execute unless score #frozen_maze_cleared var matches 1 run title @s actionbar {text:"미로의 중심에 먼저 도달해야 합니다.",color:"red"}
execute unless score #frozen_maze_cleared var matches 1 run return 0
execute if score #frozen_maze_claimed var matches 1 run title @s actionbar {text:"이번 미로 탐험에서 이미 흑요석을 획득했습니다. 웅크리기로 1층으로 돌아갑니다.",color:"gray"}
execute if score #frozen_maze_claimed var matches 1 run return 0

function meta/obsidian/give_item {amount:2}
function meta/sync
scoreboard players set #frozen_maze_claimed var 1
execute unless entity @s[advancements={1_frozen/02_underground_secret=true}] run advancement grant @s only 1_frozen/02_underground_secret
playsound entity.player.levelup master @s ~ ~ ~ 1 0.8
title @s actionbar [{text:"흑요석 +2",color:"dark_purple",bold:true}]
return 1
