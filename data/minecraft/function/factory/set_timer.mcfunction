# Macro arg: id
$execute if score #$(id) factory_level matches 0 run scoreboard players set #$(id) factory_timer 80
$execute if score #$(id) factory_level matches 1 run scoreboard players set #$(id) factory_timer 40
$execute if score #$(id) factory_level matches 2 run scoreboard players set #$(id) factory_timer 20
$execute if score #$(id) factory_level matches 3 run scoreboard players set #$(id) factory_timer 10
$execute if score #$(id) factory_level matches 4 run scoreboard players set #$(id) factory_timer 5
$execute if score #$(id) factory_level matches 5 run scoreboard players set #$(id) factory_timer 2
$execute if score #$(id) factory_level matches 6.. run scoreboard players set #$(id) factory_timer 1

# [뜨거워!] 공장을 켠 직후의 첫 블록 파괴 시도 주기도 10% 단축합니다.
execute if entity @a[tag=player,advancements={2_dried/03_hot=true}] run scoreboard players set #hot_factory_interval_multiplier tmp 9
execute if entity @a[tag=player,advancements={2_dried/03_hot=true}] run scoreboard players set #hot_factory_interval_divisor tmp 10
$execute if entity @a[tag=player,advancements={2_dried/03_hot=true}] run scoreboard players operation #$(id) factory_timer *= #hot_factory_interval_multiplier tmp
$execute if entity @a[tag=player,advancements={2_dried/03_hot=true}] run scoreboard players operation #$(id) factory_timer /= #hot_factory_interval_divisor tmp
$execute if entity @a[tag=player,advancements={2_dried/03_hot=true}] if score #$(id) factory_timer matches ..0 run scoreboard players set #$(id) factory_timer 1
$function dried/stronghold/apply_dried_factory {id:"$(id)"}
