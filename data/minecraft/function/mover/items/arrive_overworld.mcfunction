# 오버월드 이동기는 오버월드 도착 시 한 개만 다시 지급한다.
clear @a minecraft:green_dye[minecraft:custom_data~{overworld_move:1b}]
execute as @a[tag=player,gamemode=adventure] run function item/give/overworld_mover
