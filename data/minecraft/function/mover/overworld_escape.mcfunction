# 오버월드 탈출기는 메마른/얼어붙은 세계에서만 사용할 수 있습니다.
execute unless entity @s[nbt={Dimension:"minecraft:dried"}] unless entity @s[nbt={Dimension:"minecraft:frozen"}] run return run function mover/restricted/common

clear @s minecraft:green_dye[minecraft:custom_data~{overworld_escape:1b}] 1
function common/move
