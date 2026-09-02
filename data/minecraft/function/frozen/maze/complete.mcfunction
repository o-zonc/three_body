# #frozen_maze_cleared의 0 -> 1 전환에서만 호출됩니다.
scoreboard players set #frozen_maze_cleared var 1
scoreboard players add #frozen_maze_visit_clears var 1

# 보상 한도와 무관하게 실제 참가자 모두에게 현재 형태의 클리어 criterion을 지급합니다.
execute if score #maze_type var matches 0 run advancement grant @a[tag=maze] only 1_frozen/04_maze_master maze_0
execute if score #maze_type var matches 1 run advancement grant @a[tag=maze] only 1_frozen/04_maze_master maze_1
execute if score #maze_type var matches 2 run advancement grant @a[tag=maze] only 1_frozen/04_maze_master maze_2
execute if score #maze_type var matches 3 run advancement grant @a[tag=maze] only 1_frozen/04_maze_master maze_3
execute if score #maze_type var matches 4 run advancement grant @a[tag=maze] only 1_frozen/04_maze_master maze_4
execute if score #maze_type var matches 5 run advancement grant @a[tag=maze] only 1_frozen/04_maze_master maze_5
execute if score #maze_type var matches 6 run advancement grant @a[tag=maze] only 1_frozen/04_maze_master maze_6
execute if score #maze_type var matches 7 run advancement grant @a[tag=maze] only 1_frozen/04_maze_master maze_7
