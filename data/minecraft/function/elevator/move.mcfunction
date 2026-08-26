# 상점 엘리베이터와 같은 층간 이동 연출을 공통으로 사용합니다.
particle end_rod ~ ~0.1 ~ 0.45 0.1 0.45 0.02 12 force
playsound block.note_block.pling player @s ~ ~ ~ 0.8 0.75
$tp @s $(x) $(y) $(z)
particle end_rod ~ ~0.1 ~ 0.45 0.1 0.45 0.02 12 force
playsound block.note_block.pling player @s ~ ~ ~ 0.8 1.0
