# 메마른 차원 이동기
execute if entity @s[nbt={Dimension:"minecraft:polarnight"}] run function mover/restricted/common
execute if entity @s[nbt={Dimension:"minecraft:dried"}] run function mover/restricted/common
execute if entity @s[nbt={Dimension:"minecraft:dawn"}] run return run function mover/restricted/dawn

# 이동 가능한 경우에만 일회용 이동기를 1개 소모합니다.
execute unless entity @s[nbt={Dimension:"minecraft:polarnight"}] unless entity @s[nbt={Dimension:"minecraft:dried"}] run clear @s minecraft:orange_dye[minecraft:custom_data~{dried_move:1b}] 1
execute unless entity @s[nbt={Dimension:"minecraft:polarnight"}] unless entity @s[nbt={Dimension:"minecraft:dried"}] run function dried/move
