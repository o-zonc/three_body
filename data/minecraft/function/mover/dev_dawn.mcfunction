# 개발 환경 전용 여명 이동기
execute unless entity @s[tag=dev] run return 0
execute store result score #chaos_end_potion_count tmp run clear @s minecraft:potion[minecraft:custom_data~{chaos_end_potion:1b}] 0
execute if score #chaos_end_potion_count tmp matches 1.. run return run function mover/restricted/chaos_end_potion

execute unless entity @a[tag=accelerator_experiment_running] if entity @s[nbt={Dimension:"minecraft:dawn"}] run title @s actionbar {"text":"이미 여명 차원에 있습니다.","color":"gold",italic:true}
execute if entity @s[nbt={Dimension:"minecraft:dawn"}] run return 0

function dawn/move
