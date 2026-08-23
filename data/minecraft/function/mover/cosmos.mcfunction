# 우주 이동기
# dev는 현재 우주 차원에 있는 경우만 막고, 그 외 차원 제한은 모두 우회합니다.
execute if entity @s[tag=dev,nbt={Dimension:"minecraft:cosmos"}] run return run function mover/restricted/cosmos
execute if entity @s[tag=dev] run return run function cosmos/move

# 일반 플레이어 이동 제한
execute if entity @s[nbt={Dimension:"minecraft:cosmos"}] run return run function mover/restricted/cosmos
execute if entity @s[nbt={Dimension:"minecraft:polarnight"}] run return run function mover/restricted/polar
execute unless entity @s[nbt={Dimension:"minecraft:dawn"}] run return run function mover/restricted/common
function cosmos/move
