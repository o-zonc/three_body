# 메마른 차원 이동기
execute if entity @s[nbt={Dimension:"three_body:polarnight"}] run title @s actionbar {"text":"이곳에서는 사용이 제한됩니다!","color":"white","bold":false,"italic":true}
execute if entity @s[nbt={Dimension:"three_body:dried"}] run title @s actionbar {"text":"이곳에서는 사용이 제한됩니다!","color":"white","bold":false,"italic":true}
execute unless entity @s[nbt={Dimension:"three_body:polarnight"}] unless entity @s[nbt={Dimension:"three_body:dried"}] run function three_body:dried/move
