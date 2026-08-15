# 우주 이동기
execute if entity @s[nbt={Dimension:"minecraft:cosmos"}] run return run function mover/restricted/cosmos
execute if entity @s[nbt={Dimension:"minecraft:polarnight"}] run return run function mover/restricted/polar
execute unless entity @s[nbt={Dimension:"minecraft:dawn"}] run return run function mover/restricted/common
function cosmos/move
