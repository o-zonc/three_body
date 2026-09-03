# 매크로 인수: id, name, color, trigger, effect, block, x, z
$execute if score #stronghold_$(id) upgrade matches 1.. run return 0
execute if score @s shop_trigger matches 2011 run scoreboard players set #stronghold_cost_mode tmp 1
execute if score @s shop_trigger matches 2012 run scoreboard players set #stronghold_cost_mode tmp 2
execute if score @s shop_trigger matches 2013 run scoreboard players set #stronghold_cost_mode tmp 3
$function dried/stronghold/cost {id:"$(id)"}
execute store result score #stronghold_cost_ok tmp run function resource/check_cost
execute unless entity @a[tag=accelerator_experiment_running] unless score #stronghold_cost_ok tmp matches 1 run title @s actionbar {text:"유적지 복구 재료가 부족합니다.",color:"red",italic:true}
execute unless score #stronghold_cost_ok tmp matches 1 run return 0
function resource/cost/take
$scoreboard players set #stronghold_$(id) upgrade 1
$execute in dried run setblock $(x) 65 $(z) minecraft:$(block)
function dried/stronghold/complete
playsound entity.player.levelup weather @s ~ ~ ~ 0.8 1.2
$function dried/stronghold/ui {id:"$(id)",name:"$(name)",color:"$(color)",trigger:$(trigger),effect:"$(effect)",block:"$(block)",x:$(x),z:$(z)}
return 1
