# DEV 전용 극야 이동기
execute unless entity @s[tag=dev] run return 0

execute if entity @s[nbt={Dimension:"minecraft:polarnight"}] run title @s actionbar {"text":"이미 극야 차원에 있습니다.","color":"dark_purple","italic":true}
execute if entity @s[nbt={Dimension:"minecraft:polarnight"}] run return 0

function polarnight/move
