# 양자 충돌 실험은 기존 단일 보상 방식입니다.
execute unless score #experiment_mode tmp matches 2.. if score #GLOBAL accelerator_level matches 1 run function quantum/give_common {amount:1}
execute unless score #experiment_mode tmp matches 2.. if score #GLOBAL accelerator_level matches 2 run function quantum/give_common {amount:2}
execute unless score #experiment_mode tmp matches 2.. if score #GLOBAL accelerator_level matches 3 run function quantum/give_common {amount:3}
execute unless score #experiment_mode tmp matches 2.. if score #GLOBAL accelerator_level matches 4 run function quantum/give_common {amount:4}
execute unless score #experiment_mode tmp matches 2.. run title @s actionbar {text:"일반 양자 얽힘 파편을 획득했습니다.",color:"aqua"}

# 중입자 충돌 실험: 0/2/4/6개 = 5%/20%/50%/25%
execute if score #experiment_mode tmp matches 2 store result score #fragment_roll tmp run random value 0..99
execute if score #experiment_mode tmp matches 2 if score #fragment_roll tmp matches 5..24 run function quantum/give_common {amount:2}
execute if score #experiment_mode tmp matches 2 if score #fragment_roll tmp matches 25..74 run function quantum/give_common {amount:4}
execute if score #experiment_mode tmp matches 2 if score #fragment_roll tmp matches 75..99 run function quantum/give_common {amount:6}

# 시공간 붕괴 실험: 4/6/8/12개 = 10%/30%/40%/20%
execute if score #experiment_mode tmp matches 3 store result score #fragment_roll tmp run random value 0..99
execute if score #experiment_mode tmp matches 3 if score #fragment_roll tmp matches 0..9 run function quantum/give_common {amount:4}
execute if score #experiment_mode tmp matches 3 if score #fragment_roll tmp matches 10..39 run function quantum/give_common {amount:6}
execute if score #experiment_mode tmp matches 3 if score #fragment_roll tmp matches 40..79 run function quantum/give_common {amount:8}
execute if score #experiment_mode tmp matches 3 if score #fragment_roll tmp matches 80..99 run function quantum/give_common {amount:12}
