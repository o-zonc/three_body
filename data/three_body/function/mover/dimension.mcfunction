# 기본 차원 이동기
execute if entity @s[nbt={Dimension:"three_body:polarnight"}] run function three_body:mover/restricted/common
execute if entity @s[nbt={Dimension:"three_body:dawn"}] run function three_body:mover/restricted/common
execute unless entity @s[nbt={Dimension:"three_body:polarnight"}] unless entity @s[nbt={Dimension:"three_body:dawn"}] run function three_body:common/disaster/do
