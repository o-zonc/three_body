execute if score #trial_active trial matches 1 if score #trial_id trial matches 5 unless score #creation_restored trial matches 1 at @s run playsound block.note_block.bass weather @s ~ ~ ~ 0.8 0.5
execute if score #trial_active trial matches 1 if score #trial_id trial matches 5 unless score #creation_restored trial matches 1 run title @s actionbar "§8D의 시련에서는 공방 효과를 사용할 수 없습니다."
execute if score #trial_active trial matches 1 if score #trial_id trial matches 5 unless score #creation_restored trial matches 1 run return 0
function dimensions/nether/workshop/update_tier_flags

$execute if score #$(id) nether_workshop matches 1 at @s run playsound block.note_block.bass weather @s ~ ~ ~ 0.8 0.5
$execute if score #$(id) nether_workshop matches 1 run title @s actionbar "§c이미 구매한 공방 효과입니다."
$execute if score #$(id) nether_workshop matches 1 run return 0

$execute unless score #tier_$(previous_tier)_purchased nether_workshop matches 1 at @s run playsound block.note_block.bass weather @s ~ ~ ~ 0.8 0.5
$execute unless score #tier_$(previous_tier)_purchased nether_workshop matches 1 run title @s actionbar "§c이전 단계 효과 중 하나를 먼저 구매해야 합니다."
$execute unless score #tier_$(previous_tier)_purchased nether_workshop matches 1 run return 0

data remove storage data tmp.cost_original
$data modify storage data tmp.cost set value [{type:"compressed_nether_crystal",amount:$(cost)}]
execute store result score #nether_workshop_cost_check tmp run function product/check_cost

execute unless score #nether_workshop_cost_check tmp matches 1 at @s run playsound block.note_block.bass weather @s ~ ~ ~ 0.8 0.5
execute unless score #nether_workshop_cost_check tmp matches 1 run title @s actionbar "§c네더 결정이 부족합니다."
execute unless score #nether_workshop_cost_check tmp matches 1 run return 0

function product/take_cost
$scoreboard players set #$(id) nether_workshop 1
execute at @s run playsound block.beacon.power_select weather @s ~ ~ ~ 0.8 1.4
title @s actionbar "§a공방 효과를 구매했습니다."
function dimensions/nether/workshop/update_tier_flags
return 1
