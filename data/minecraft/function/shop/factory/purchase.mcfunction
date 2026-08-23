function shop/factory/prepare
execute unless data storage data tmp.factory_shop run title @s actionbar "§c모든 시설이 이미 건설되었습니다."
execute unless data storage data tmp.factory_shop run return 0

execute store result score #factory_required_age tmp run data get storage data tmp.factory_shop.required_age
execute unless score #overworld civilization_age >= #factory_required_age tmp run title @s actionbar "§c아직 건설할 수 없는 시설입니다."
execute unless score #overworld civilization_age >= #factory_required_age tmp run return 0

data modify storage data tmp.cost set from storage data tmp.factory_shop.cost
execute store result score #factory_cost_check tmp run function resource/check_cost
execute unless score #factory_cost_check tmp matches 1 run title @s actionbar "§c재료가 부족합니다."
execute unless score #factory_cost_check tmp matches 1 at @s run playsound block.note_block.bass weather @s ~ ~ ~ 0.8 0.5
execute unless score #factory_cost_check tmp matches 1 run return 0
function resource/take_cost

execute if score #factory_shop_stage tmp matches 0 run scoreboard players set #GLOBAL factory_build_stage 1
execute if score #factory_shop_stage tmp matches 0 run function common/structure/factory/on
execute if score #factory_shop_stage tmp matches 0 unless entity @s[advancements={0_overworld/23_factory=true}] run advancement grant @s only 0_overworld/23_factory
execute if score #factory_shop_stage tmp matches 1 unless entity @s[advancements={0_overworld/22_particle_accelerator=true}] run advancement grant @s only 0_overworld/22_particle_accelerator
execute if score #factory_shop_stage tmp matches 1 run scoreboard players set #GLOBAL factory_build_stage 2
execute if score #factory_shop_stage tmp matches 1 run scoreboard players set #GLOBAL factory_elevator_unlocked 1
execute if score #factory_shop_stage tmp matches 2 unless entity @s[advancements={0_overworld/24_time_machine=true}] run advancement grant @s only 0_overworld/24_time_machine
execute if score #factory_shop_stage tmp matches 2 run scoreboard players set #GLOBAL factory_build_stage 3
execute if score #factory_shop_stage tmp matches 2 run scoreboard players set #GLOBAL factory_elevator_unlocked 2
execute if score #factory_shop_stage tmp matches 2 unless score #GLOBAL time_machine_level matches 1.. run scoreboard players set #GLOBAL time_machine_level 1
execute if score #factory_shop_stage tmp matches 2 run scoreboard players set #time_machine_yellow upgrade 0
execute if score #factory_shop_stage tmp matches 2 run scoreboard players set #time_machine_blue upgrade 0
execute if score #factory_shop_stage tmp matches 2 run scoreboard players set #time_machine_timer generate 1200

playsound entity.player.levelup weather @s ~ ~ ~ 0.8 1.2
function shop/factory/interact
return 1
