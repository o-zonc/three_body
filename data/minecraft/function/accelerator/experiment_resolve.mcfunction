# 실험 지연이 끝난 뒤 성공/실패를 판정한다.
execute if score @s experiment_type matches 10 store result score #experiment_failure_chance tmp run data get storage data const.accelerator.experiment.quantum.failure_chance
execute if score @s experiment_type matches 11 store result score #experiment_failure_chance tmp run data get storage data const.accelerator.experiment.heavy.failure_chance
execute if score @s experiment_type matches 12 store result score #experiment_failure_chance tmp run data get storage data const.accelerator.experiment.spacetime.failure_chance
execute store result score #experiment_roll tmp run random value 0..99
execute if score #experiment_roll tmp < #experiment_failure_chance tmp run function accelerator/experiment_failure
execute unless score #experiment_roll tmp < #experiment_failure_chance tmp run function accelerator/experiment_success
