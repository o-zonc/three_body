# factory_build_stage가 없던 기존 세이브만 발전과제 기록을 건설 단계로 이관한다.
scoreboard players set #GLOBAL factory_build_stage 0
execute if entity @a[advancements={0_overworld/23_factory=true}] run scoreboard players set #GLOBAL factory_build_stage 1
execute if entity @a[advancements={0_overworld/22_particle_accelerator=true}] run scoreboard players set #GLOBAL factory_build_stage 2
execute if entity @a[advancements={0_overworld/24_time_machine=true}] run scoreboard players set #GLOBAL factory_build_stage 3
