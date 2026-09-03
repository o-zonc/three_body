# 스크롤 엔딩 완료 후 한 번만 석영 블록을 설치하고 신성 도구를 갱신한다.
execute if score #world_star_state var matches 1.. run return 0
execute in minecraft:overworld run setblock 35 -59 0 minecraft:quartz_block replace
scoreboard players set #world_star_state var 1
scoreboard players reset @a world_star_node_mined
execute as @a[tag=player] at @s if score #tool upgrade matches 16 run function tool/refresh_one
