# 리액터
execute if entity @s[nbt={Dimension:"three_body:polarnight"}] run return run function three_body:mover/restricted/reactor
execute unless entity @s[nbt={Dimension:"three_body:dawn"}] run return run function three_body:mover/restricted/common
execute if entity @s[nbt={Dimension:"three_body:dawn"}] run function three_body:common/disaster/do
