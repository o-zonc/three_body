execute unless score #diamond unlock matches 1 run function resource/effect/failure
execute unless score #diamond unlock matches 1 run return 0
execute unless score #diamond_regen_lvl upgrade = #diamond_regen_lvl upgrade run scoreboard players set #diamond_regen_lvl upgrade 0
execute store result storage data tmp.resource.upgrade.lvl int 1 run scoreboard players get #diamond_regen_lvl upgrade
data modify storage data tmp.resource.upgrade.id set value "diamond"
data modify storage data tmp.resource.upgrade.x set value 0.5
data modify storage data tmp.resource.upgrade.y set value -57.5
data modify storage data tmp.resource.upgrade.z set value 0.5
return run function resource/upgrade/run with storage data tmp.resource.upgrade
