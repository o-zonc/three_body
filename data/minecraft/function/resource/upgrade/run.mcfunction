# Macro args: id, lvl
data remove storage data tmp.cost
$data modify storage data tmp.cost set from storage data const.resource.$(id).regen[{lvl:$(lvl)}].cost
execute if data storage data tmp.cost run function resource/cost/apply_shop_advancement_discount
execute unless data storage data tmp.cost at @s run playsound block.note_block.bass weather @s ~ ~ ~ 0.8 0.5
execute unless data storage data tmp.cost run title @s actionbar "§c더 이상 업그레이드 할 수 없습니다."
execute unless data storage data tmp.cost run return 0
$execute store result score #$(id)_regen_upgrade_cost_check tmp run function resource/check_cost
$execute unless score #$(id)_regen_upgrade_cost_check tmp matches 1 at @s run playsound block.note_block.bass weather @s ~ ~ ~ 0.8 0.5
$execute unless score #$(id)_regen_upgrade_cost_check tmp matches 1 run title @s actionbar "§c재료가 부족합니다."
$execute unless score #$(id)_regen_upgrade_cost_check tmp matches 1 run return 0
function resource/cost/take
$scoreboard players add #$(id)_regen_lvl upgrade 1
$execute in overworld run playsound entity.ender_eye.death weather @a[tag=player] $(x) $(y) $(z) 1 0.8
$execute in overworld run playsound block.respawn_anchor.charge weather @a[tag=player] $(x) $(y) $(z) 1 2
$execute in overworld run particle end_rod $(x) $(y) $(z) 0.3 0.3 0.3 0.4 30 force @a[tag=player]
$function resource/material/$(id)/ui/info
return 1
