# 오버월드 전용 이동기는 다른 차원으로 반출할 수 없다.
# 기존에 구매해 보유하던 이동기는 회수 전에 구매 기록으로 이관한다.
execute store result score #shop_mover_found tmp run clear @a minecraft:emerald[minecraft:custom_data~{shop_move:1b}] 0
execute if score #shop_mover_found tmp matches 1.. run scoreboard players set #shop_mover unlock 1
execute store result score #alchemy_mover_found tmp run clear @a minecraft:purple_dye[minecraft:custom_data~{alchemy_move:1b}] 0
execute if score #alchemy_mover_found tmp matches 1.. run scoreboard players set #alchemy_mover unlock 1
clear @a minecraft:cyan_dye[minecraft:custom_data~{altar_move:1b}]
clear @a minecraft:emerald[minecraft:custom_data~{shop_move:1b}]
clear @a minecraft:purple_dye[minecraft:custom_data~{alchemy_move:1b}]
