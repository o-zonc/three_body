# 오버월드 이동기
execute if entity @s[nbt={Dimension:"minecraft:polarnight"}] run function mover/restricted/common
execute if entity @s[nbt={Dimension:"minecraft:overworld"}] run function mover/restricted/common
execute if entity @s[nbt={Dimension:"minecraft:dawn"}] run return run function mover/restricted/dawn

# 이동 가능한 경우에만 일회용 이동기를 1개 소모합니다.
# dev 태그 플레이어는 테스트를 위해 이동기를 회수하지 않습니다.
execute unless entity @s[tag=dev] unless entity @s[nbt={Dimension:"minecraft:polarnight"}] unless entity @s[nbt={Dimension:"minecraft:overworld"}] run clear @s minecraft:green_dye[minecraft:custom_data~{overworld_move:1b}] 1
execute unless entity @s[nbt={Dimension:"minecraft:polarnight"}] unless entity @s[nbt={Dimension:"minecraft:overworld"}] run function common/move
