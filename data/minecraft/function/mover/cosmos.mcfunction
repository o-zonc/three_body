# 우주 이동기
execute store result score #chaos_end_potion_count tmp run clear @s minecraft:potion[minecraft:custom_data~{chaos_end_potion:1b}] 0
execute if score #chaos_end_potion_count tmp matches 1.. run return run function mover/restricted/chaos_end_potion
# dev는 현재 우주 차원에 있는 경우만 막고, 그 외 차원 제한은 모두 우회한다.
execute if entity @s[tag=dev,nbt={Dimension:"minecraft:cosmos"}] run return run function mover/restricted/cosmos
execute if entity @s[tag=dev] run return run function cosmos/move

# 일반 플레이어 이동 제한
execute if entity @s[nbt={Dimension:"minecraft:cosmos"}] run return run function mover/restricted/cosmos
execute if entity @s[nbt={Dimension:"minecraft:polarnight"}] run return run function mover/restricted/polar
# 오버월드에서는 천공의 제단 위에서만 우주 이동기를 사용할 수 있다.
execute if entity @s[nbt={Dimension:"minecraft:overworld"}] positioned 0 -59 0 unless entity @s[distance=..1.5] run return run function mover/restricted/cosmos_altar
execute if entity @s[nbt={Dimension:"minecraft:overworld"}] run return run function cosmos/move
execute unless entity @s[nbt={Dimension:"minecraft:dawn"}] run return run function mover/restricted/common
function cosmos/move
