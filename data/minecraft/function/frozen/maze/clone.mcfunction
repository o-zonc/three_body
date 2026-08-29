# clone 명령어는 북서쪽 꼭짓점을 기준으로 작동

# 위치 설명
# begin
# -106 51 -106  -34 51 -106  38 51 -106  
# -106 51  -34  -34 51  -34  38 51  -34
# -106 51   38  -34 51   38  38 51   38
# end
# -38 59 -38  34 59 -38  106 59 -38  
# -38 59  34  34 59  34  106 59  34
# -38 59 106  34 59 106  106 59 106

# 나무 1 나무기둥 나무 2
# 흑암   미로 공간 나무 3(오리지널)
# 나무 격자 돌 콘크리트

execute if score #maze_type var matches 0 run clone -106 51 -106 -38 59 -38 -34 51 -34
execute if score #maze_type var matches 1 run clone -34 51 -106 34 59 -38 -34 51 -34
execute if score #maze_type var matches 2 run clone 38 51 -106 106 59 -38 -34 51 -34
execute if score #maze_type var matches 3 run clone -106 51 -106 -38 59 -38 -34 51 -34
execute if score #maze_type var matches 4 run clone -106 51 -106 -38 59 -38 -34 51 -34
execute if score #maze_type var matches 5 run clone -106 51 -106 -38 59 -38 -34 51 -34
execute if score #maze_type var matches 6 run clone -106 51 -106 -38 59 -38 -34 51 -34
execute if score #maze_type var matches 7 run clone -106 51 -106 -38 59 -38 -34 51 -34
