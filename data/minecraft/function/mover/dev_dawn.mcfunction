# DEV 전용 여명 이동기
execute unless entity @s[tag=dev] run return 0

execute if entity @s[nbt={Dimension:"minecraft:dawn"}] run title @s actionbar {"text":"이미 여명 차원에 있습니다.","color":"gold","italic":true}
execute if entity @s[nbt={Dimension:"minecraft:dawn"}] run return 0

function dawn/move
