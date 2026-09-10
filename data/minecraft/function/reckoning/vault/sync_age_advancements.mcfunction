# 시간 보관소 복원 시대에 맞춰 누락된 시대 발전과제만 동기화한다.
execute if score #overworld civilization_age matches 5.. run advancement grant @a[advancements={0_overworld/14_ancient_age=false}] only 0_overworld/14_ancient_age
execute if score #overworld civilization_age matches 6.. run advancement grant @a[advancements={0_overworld/15_medieval_age=false}] only 0_overworld/15_medieval_age
execute if score #overworld civilization_age matches 7.. run advancement grant @a[advancements={0_overworld/16_modern_age=false}] only 0_overworld/16_modern_age
execute if score #overworld civilization_age matches 8.. run advancement grant @a[advancements={0_overworld/17_contemporary_age=false}] only 0_overworld/17_contemporary_age
