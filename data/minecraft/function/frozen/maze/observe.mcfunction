# 실제 미로 참가자에게 현재 형태의 관측 criterion을 지급한다.
execute if score #maze_type var matches 0 unless entity @s[advancements={1_frozen/03_maze_observer={maze_0=true}}] run advancement grant @s only 1_frozen/03_maze_observer maze_0
execute if score #maze_type var matches 1 unless entity @s[advancements={1_frozen/03_maze_observer={maze_1=true}}] run advancement grant @s only 1_frozen/03_maze_observer maze_1
execute if score #maze_type var matches 2 unless entity @s[advancements={1_frozen/03_maze_observer={maze_2=true}}] run advancement grant @s only 1_frozen/03_maze_observer maze_2
execute if score #maze_type var matches 3 unless entity @s[advancements={1_frozen/03_maze_observer={maze_3=true}}] run advancement grant @s only 1_frozen/03_maze_observer maze_3
execute if score #maze_type var matches 4 unless entity @s[advancements={1_frozen/03_maze_observer={maze_4=true}}] run advancement grant @s only 1_frozen/03_maze_observer maze_4
execute if score #maze_type var matches 5 unless entity @s[advancements={1_frozen/03_maze_observer={maze_5=true}}] run advancement grant @s only 1_frozen/03_maze_observer maze_5
execute if score #maze_type var matches 6 unless entity @s[advancements={1_frozen/03_maze_observer={maze_6=true}}] run advancement grant @s only 1_frozen/03_maze_observer maze_6
execute if score #maze_type var matches 7 unless entity @s[advancements={1_frozen/03_maze_observer={maze_7=true}}] run advancement grant @s only 1_frozen/03_maze_observer maze_7
