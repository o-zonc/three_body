# frozen+ender 인터랙션: 현재 미로에서는 한 번만, 얼어붙은 차원 방문당 최대 두 번 보상합니다.
execute unless score #frozen_maze_active var matches 1 run title @s actionbar {text:"미로 이벤트가 진행 중이 아닙니다.",color:"red",italic:false}
execute unless score #frozen_maze_active var matches 1 run return 0
execute unless score #frozen_maze_cleared var matches 1 run title @s actionbar {text:"미로의 중심에 먼저 도달해야 합니다.",color:"red",italic:true}
execute unless score #frozen_maze_cleared var matches 1 run return 0
execute unless entity @s[advancements={1_frozen/02_underground_secret=true}] run advancement grant @s only 1_frozen/02_underground_secret

# 세 번째 이후 클리어는 정상 완료로 기록하되 현재 미로의 보상도 소진 처리합니다.
execute if score #frozen_maze_visit_clears var matches 3.. run scoreboard players set #frozen_maze_claimed var 1
execute if score #frozen_maze_visit_clears var matches 3.. run title @s actionbar {text:"흑요석을 너무 많이 획득하셨습니다! 다음에 또 오세요.",color:"gray",italic:true}
execute if score #frozen_maze_visit_clears var matches 3.. run return 1

execute if score #frozen_maze_claimed var matches 1 run title @s actionbar {text:"이번 미로 탐험에서 이미 흑요석을 획득했습니다. 웅크리기로 1층으로 돌아갑니다.",color:"gray",italic:true}
execute if score #frozen_maze_claimed var matches 1 run return 0

scoreboard players set #frozen_maze_claimed var 1
execute if score #frozen_maze_visit_clears var matches 1 run function meta/obsidian/give_item {amount:2}
execute if score #frozen_maze_visit_clears var matches 2 run function meta/obsidian/give_item {amount:1}
function meta/sync
playsound entity.player.levelup master @s ~ ~ ~ 1 0.8
execute if score #frozen_maze_visit_clears var matches 1 run title @s actionbar [{text:"",italic:false},{text:"흑요석 +2",color:"dark_purple",bold:true}]
execute if score #frozen_maze_visit_clears var matches 2 run title @s actionbar [{text:"",italic:false},{text:"흑요석 +1",color:"dark_purple",bold:true}]
return 1
