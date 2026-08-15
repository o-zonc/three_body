# 리액터
execute if entity @s[nbt={Dimension:"minecraft:polarnight"}] run return run function mover/restricted/reactor
execute unless entity @s[nbt={Dimension:"minecraft:dawn"}] run return run function mover/restricted/common
execute if entity @s[nbt={Dimension:"minecraft:dawn"}] run function common/disaster/do
