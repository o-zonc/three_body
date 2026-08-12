# 문명 초월
execute if entity @s[nbt={Dimension:"three_body:dawn"}] run return run title @a actionbar {"text":"더 이상 초월할 수 없습니다!","color":"#9DFDFD","bold":false,"italic":true}
execute unless entity @s[nbt={Dimension:"three_body:polarnight"}] run title @a actionbar {"text":"이곳에서는 사용이 제한됩니다!","color":"white","bold":false,"italic":true}
execute if entity @s[nbt={Dimension:"three_body:polarnight"}] run function three_body:common/disaster/do
