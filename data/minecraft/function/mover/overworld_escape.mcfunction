# 오버월드 탈출기는 메마른/얼어붙은 세계에서만 사용할 수 있습니다.
execute store result score #chaos_end_potion_count tmp run clear @s minecraft:potion[minecraft:custom_data~{chaos_end_potion:1b}] 0
execute if score #chaos_end_potion_count tmp matches 1.. run return run function mover/restricted/chaos_end_potion
execute unless entity @s[nbt={Dimension:"minecraft:dried"}] unless entity @s[nbt={Dimension:"minecraft:frozen"}] run return run function mover/restricted/common

clear @s minecraft:green_dye[minecraft:custom_data~{overworld_escape:1b}] 1
function common/move
