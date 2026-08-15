# 얼어붙은 차원 이동기
execute if entity @s[nbt={Dimension:"minecraft:polarnight"}] run function minecraft:mover/restricted/common
execute if entity @s[nbt={Dimension:"minecraft:frozen"}] run function minecraft:mover/restricted/common
execute if entity @s[nbt={Dimension:"minecraft:dawn"}] run return run function minecraft:mover/restricted/dawn
execute unless entity @s[nbt={Dimension:"minecraft:polarnight"}] unless entity @s[nbt={Dimension:"minecraft:frozen"}] run function minecraft:frozen/move
