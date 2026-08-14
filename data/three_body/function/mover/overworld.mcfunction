# 오버월드 이동기
execute if entity @s[nbt={Dimension:"three_body:polarnight"}] run function three_body:mover/restricted/common
execute if entity @s[nbt={Dimension:"minecraft:overworld"}] run function three_body:mover/restricted/common
execute if entity @s[nbt={Dimension:"three_body:dawn"}] run return run function three_body:mover/restricted/dawn
execute unless entity @s[nbt={Dimension:"three_body:polarnight"}] unless entity @s[nbt={Dimension:"minecraft:overworld"}] run function three_body:common/move
