# 오버월드 이동기
execute if entity @s[nbt={Dimension:"minecraft:polarnight"}] run function mover/restricted/common
execute if entity @s[nbt={Dimension:"minecraft:overworld"}] run function mover/restricted/common
execute if entity @s[nbt={Dimension:"minecraft:dawn"}] run return run function mover/restricted/dawn
execute unless entity @s[nbt={Dimension:"minecraft:polarnight"}] unless entity @s[nbt={Dimension:"minecraft:overworld"}] run function common/move
