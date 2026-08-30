# 리액터
execute store result score #chaos_end_potion_count tmp run clear @s minecraft:potion[minecraft:custom_data~{chaos_end_potion:1b}] 0
execute if score #chaos_end_potion_count tmp matches 1.. run return run function mover/restricted/chaos_end_potion
execute if entity @s[nbt={Dimension:"minecraft:polarnight"}] run return run function mover/restricted/reactor
execute unless entity @s[nbt={Dimension:"minecraft:dawn"}] run return run function mover/restricted/common
execute if entity @s[nbt={Dimension:"minecraft:dawn"}] run scoreboard players set #GLOBAL user_disaster 1
execute if entity @s[nbt={Dimension:"minecraft:dawn"}] run function common/disaster/do
# 리액터 사용은 관측소의 수동 정지 상태를 다음 문명으로 계승하지 않는다.
# 멸망 연출 중에는 era_paused를 유지하고, finish에서 새 차원 진입 후 흐름을 재개한다.
execute if entity @s[nbt={Dimension:"minecraft:dawn"}] run scoreboard players set #GLOBAL era_observed 0
