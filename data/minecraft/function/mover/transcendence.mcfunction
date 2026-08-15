# 문명 초월
execute if entity @s[nbt={Dimension:"minecraft:dawn"}] run return run function minecraft:mover/restricted/transcendence
execute unless entity @s[nbt={Dimension:"minecraft:polarnight"}] run function minecraft:mover/restricted/common
execute if entity @s[nbt={Dimension:"minecraft:polarnight"}] run function minecraft:common/disaster/do
