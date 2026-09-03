# 오버월드 이동기
execute store result score #chaos_end_potion_count tmp run clear @s minecraft:potion[minecraft:custom_data~{chaos_end_potion:1b}] 0
execute if score #chaos_end_potion_count tmp matches 1.. run return run function mover/restricted/chaos_end_potion
# dev는 현재 오버월드에 있는 경우만 막고, 그 외 차원 제한은 모두 우회한다.
execute if entity @s[tag=dev,nbt={Dimension:"minecraft:overworld"}] run return run function mover/restricted/common
execute if entity @s[tag=dev] run return run function common/move

# 일반 플레이어 이동 제한
execute if entity @s[nbt={Dimension:"minecraft:polarnight"}] run function mover/restricted/common
execute if entity @s[nbt={Dimension:"minecraft:overworld"}] run function mover/restricted/common
execute if entity @s[nbt={Dimension:"minecraft:dawn"}] run return run function mover/restricted/dawn

# 이동 가능한 경우에만 일회용 이동기를 1개 소모한다.
# dev 태그 플레이어는 위에서 먼저 이동하므로 소모되지 않는다.
execute unless entity @s[tag=dev] unless entity @s[nbt={Dimension:"minecraft:polarnight"}] unless entity @s[nbt={Dimension:"minecraft:overworld"}] run clear @s minecraft:green_dye[minecraft:custom_data~{overworld_move:1b}] 1
execute unless entity @s[nbt={Dimension:"minecraft:polarnight"}] unless entity @s[nbt={Dimension:"minecraft:overworld"}] run function common/move
