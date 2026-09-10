# civilization_age에서 누락된 시대 발전과제로만 단방향 동기화한다.
execute if score #overworld civilization_age matches 1.. run advancement grant @a[advancements={0_overworld/10_wood_age=false}] only 0_overworld/10_wood_age
execute if score #overworld civilization_age matches 2.. run advancement grant @a[advancements={0_overworld/11_stone_age=false}] only 0_overworld/11_stone_age
execute if score #overworld civilization_age matches 3.. run advancement grant @a[advancements={0_overworld/12_bronze_age=false}] only 0_overworld/12_bronze_age
execute if score #overworld civilization_age matches 4.. run advancement grant @a[advancements={0_overworld/13_iron_age=false}] only 0_overworld/13_iron_age
execute if score #overworld civilization_age matches 5.. run advancement grant @a[advancements={0_overworld/14_ancient_age=false}] only 0_overworld/14_ancient_age
execute if score #overworld civilization_age matches 6.. run advancement grant @a[advancements={0_overworld/15_medieval_age=false}] only 0_overworld/15_medieval_age
execute if score #overworld civilization_age matches 7.. run advancement grant @a[advancements={0_overworld/16_modern_age=false}] only 0_overworld/16_modern_age
execute if score #overworld civilization_age matches 8.. run advancement grant @a[advancements={0_overworld/17_contemporary_age=false}] only 0_overworld/17_contemporary_age
execute if score #overworld civilization_age matches 9.. run advancement grant @a[advancements={0_overworld/18_future_age=false}] only 0_overworld/18_future_age
