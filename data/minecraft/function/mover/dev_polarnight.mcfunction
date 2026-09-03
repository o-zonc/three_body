# 개발 환경 전용 극야 이동기
execute unless entity @s[tag=dev] run return 0
execute store result score #chaos_end_potion_count tmp run clear @s minecraft:potion[minecraft:custom_data~{chaos_end_potion:1b}] 0
execute if score #chaos_end_potion_count tmp matches 1.. run return run function mover/restricted/chaos_end_potion

execute unless entity @a[tag=accelerator_experiment_running] if entity @s[nbt={Dimension:"minecraft:polarnight"}] run title @s actionbar {"text":"이미 극야 차원에 있습니다.","color":"dark_purple",italic:true}
execute if entity @s[nbt={Dimension:"minecraft:polarnight"}] run return 0

function polarnight/move
