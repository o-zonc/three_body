# 매크로 인수: name
# 오버월드 난세기 채굴 실패 판정
# 공장 건설 전: 8% / 공장 건설 후: 1%
execute unless score #GLOBAL state_overworld matches 1 run return 0
execute store result score #chaos_mining_roll tmp run random value 1..100

# 공장 건설 후: 1%
$execute unless entity @a[tag=accelerator_experiment_running] if score #GLOBAL factory_build_stage matches 1.. if score #chaos_mining_roll tmp matches 1 run title @a[nbt={Dimension:"minecraft:overworld"}] actionbar {"text":"난세기로 인해 $(name) 채굴에 실패했습니다.","color":"red",italic:true}
execute if score #GLOBAL factory_build_stage matches 1.. if score #chaos_mining_roll tmp matches 1 run return 1

# 공장 건설 전: 8%
$execute unless entity @a[tag=accelerator_experiment_running] unless score #GLOBAL factory_build_stage matches 1.. if score #chaos_mining_roll tmp matches 1..8 run title @a[nbt={Dimension:"minecraft:overworld"}] actionbar {"text":"난세기로 인해 $(name) 채굴에 실패했습니다.","color":"red",italic:true}
execute unless score #GLOBAL factory_build_stage matches 1.. if score #chaos_mining_roll tmp matches 1..8 run return 1

return 0
