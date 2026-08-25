# Macro args are the same as factory/ui.
$execute unless score #$(unlock) unlock matches 1 run title @s actionbar {text:"$(name) 자원을 먼저 해금해야 합니다.",color:"red"}
$execute unless score #$(unlock) unlock matches 1 run return 0
$execute if score #$(id) factory_unlocked matches 1 if score #$(id) factory_level matches 6.. run title @s actionbar {text:"이미 최대 레벨입니다.",color:"red"}
$execute if score #$(id) factory_unlocked matches 1 if score #$(id) factory_level matches 6.. run return 0
$execute store result storage data tmp.factory.purchase.lvl int 1 run scoreboard players get #$(id) factory_level
$data modify storage data tmp.factory.purchase.id set value "$(id)"
function factory/read with storage data tmp.factory.purchase
data remove storage data tmp.cost
data remove storage data tmp.cost_original
$data modify storage data tmp.cost set from storage data tmp.factory.$(id).now.cost
execute if data storage data tmp.cost run function resource/cost/apply_shop_advancement_discount
execute store result score #factory_cost_check tmp run function resource/check_cost
execute unless score #factory_cost_check tmp matches 1 run title @s actionbar {text:"공장 건설·업그레이드 재료가 부족합니다.",color:"red"}
execute unless score #factory_cost_check tmp matches 1 at @s run playsound block.note_block.bass weather @s ~ ~ ~ 0.8 0.5
execute unless score #factory_cost_check tmp matches 1 run return 0
function resource/cost/take
scoreboard players set #factory_was_unlocked tmp 0
$execute if score #$(id) factory_unlocked matches 1 run scoreboard players set #factory_was_unlocked tmp 1
$execute if score #factory_was_unlocked tmp matches 1 run scoreboard players add #$(id) factory_level 1
$execute unless score #factory_was_unlocked tmp matches 1 run scoreboard players set #$(id) factory_unlocked 1
$scoreboard players set #$(id) factory_enabled 1
$scoreboard players set #$(id) factory_status 1
$function factory/set_timer {id:"$(id)"}
function factory/campfires
playsound entity.player.levelup weather @s ~ ~ ~ 0.8 1.2
$function factory/ui {id:"$(id)",unlock:"$(unlock)",name:"$(name)",color:"$(color)",purchase:$(purchase),toggle:$(toggle)}
return 1
