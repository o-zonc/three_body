scoreboard players set #trial unlock 1

title @a[tag=player] times 5 100 40
title @a[tag=player] title {"text":"시련 해금","color":"#6A00FF","shadow_color":-1542849145,"bold":true}
title @a[tag=player] subtitle "이끼 지대에 드디어 길이 나타났습니다."

execute as @a[tag=player] at @s run playsound block.trial_spawner.ominous_activate weather @s ~ ~ ~ 1 1

# function trial/structure/save_all
function trial/structure/load_default