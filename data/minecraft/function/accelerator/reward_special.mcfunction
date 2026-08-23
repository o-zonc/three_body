# 양자 충돌 실험
execute unless score #experiment_mode tmp matches 2.. if score #GLOBAL accelerator_level matches 1..2 run function quantum/give_special {amount:1}
execute unless score #experiment_mode tmp matches 2.. if score #GLOBAL accelerator_level matches 3 run function quantum/give_special {amount:2}
execute unless score #experiment_mode tmp matches 2.. if score #GLOBAL accelerator_level matches 4 run function quantum/give_special {amount:3}
execute unless score #experiment_mode tmp matches 2.. run title @s actionbar {text:"특별한 양자 얽힘 파편을 획득했습니다!",color:"#F971BE"}

# 중입자 충돌 실험: 0/1/2개 = 55%/30%/15%
execute if score #experiment_mode tmp matches 2 store result score #fragment_roll tmp run random value 0..99
execute if score #experiment_mode tmp matches 2 if score #fragment_roll tmp matches 55..84 run function quantum/give_special {amount:1}
execute if score #experiment_mode tmp matches 2 if score #fragment_roll tmp matches 85..99 run function quantum/give_special {amount:2}

# 시공간 붕괴 실험: 1/2/4개 = 40%/40%/20%
execute if score #experiment_mode tmp matches 3 store result score #fragment_roll tmp run random value 0..99
execute if score #experiment_mode tmp matches 3 if score #fragment_roll tmp matches 0..39 run function quantum/give_special {amount:1}
execute if score #experiment_mode tmp matches 3 if score #fragment_roll tmp matches 40..79 run function quantum/give_special {amount:2}
execute if score #experiment_mode tmp matches 3 if score #fragment_roll tmp matches 80..99 run function quantum/give_special {amount:4}
