# Macro args: id
$execute unless score #$(id)_lvl material_shop = #$(id)_lvl material_shop run scoreboard players set #$(id)_lvl material_shop 0
$execute store result storage data tmp.material_shop.$(id).lvl int 1 run scoreboard players get #$(id)_lvl material_shop
$data modify storage data tmp.material_shop.$(id).id set value "$(id)"
$function resource/shop/read_data with storage data tmp.material_shop.$(id)
data remove storage data tmp.cost
$data modify storage data tmp.cost set from storage data tmp.material_shop.$(id).now.cost
execute unless data storage data tmp.cost run title @s actionbar "§c더 이상 업그레이드 할 수 없습니다."
execute unless data storage data tmp.cost run return 0
execute store result score #material_shop_cost_check tmp run function resource/check_cost
execute unless score #material_shop_cost_check tmp matches 1 run title @s actionbar "§c재료가 부족합니다."
execute unless score #material_shop_cost_check tmp matches 1 run return 0
function resource/cost/take
$scoreboard players add #$(id)_lvl material_shop 1
playsound entity.player.levelup weather @s ~ ~ ~ 0.8 1.2
return 1
