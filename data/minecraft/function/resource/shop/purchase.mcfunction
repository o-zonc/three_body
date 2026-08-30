# Macro args: id, unlock, name, color, trigger, unit
$execute unless score #$(unlock) unlock matches 1 run title @s actionbar {text:"해금되지 않은 자원입니다.",color:"red",italic:true}
$execute unless score #$(unlock) unlock matches 1 at @s run playsound block.note_block.bass weather @s ~ ~ ~ 0.8 0.5
$execute unless score #$(unlock) unlock matches 1 run return 0
$execute unless score #$(id)_lvl material_shop = #$(id)_lvl material_shop run scoreboard players set #$(id)_lvl material_shop 0
$execute store result storage data tmp.resource_shop.purchase.lvl int 1 run scoreboard players get #$(id)_lvl material_shop
$data modify storage data tmp.resource_shop.purchase.id set value "$(id)"
function resource/shop/read with storage data tmp.resource_shop.purchase
data remove storage data tmp.cost
$data modify storage data tmp.cost set from storage data tmp.resource_shop.$(id).now.cost
function resource/cost/apply_shop_advancement_discount
execute unless data storage data tmp.cost run title @s actionbar {text:"더 이상 업그레이드할 수 없습니다.",color:"red",italic:true}
execute unless data storage data tmp.cost at @s run playsound block.note_block.bass weather @s ~ ~ ~ 0.8 0.5
execute unless data storage data tmp.cost run return 0
execute store result score #material_shop_cost_check tmp run function resource/check_cost
execute unless score #material_shop_cost_check tmp matches 1 run title @s actionbar {text:"재료가 부족합니다.",color:"red",italic:true}
execute unless score #material_shop_cost_check tmp matches 1 at @s run playsound block.note_block.bass weather @s ~ ~ ~ 0.8 0.5
execute unless score #material_shop_cost_check tmp matches 1 run return 0
function resource/take_upgrade_cost
$scoreboard players add #$(id)_lvl material_shop 1
function story/overworld/age/check_ancient_age
playsound entity.player.levelup weather @s ~ ~ ~ 0.8 1.2
$function resource/shop/ui {id:"$(id)",name:"$(name)",color:"$(color)",trigger:$(trigger),unit:"$(unit)"}
return 1
