execute unless score #emerald unlock matches 1 run function resource/effect/failure
execute unless score #emerald unlock matches 1 run return 0
execute unless score #emerald_regen_lvl upgrade = #emerald_regen_lvl upgrade run scoreboard players set #emerald_regen_lvl upgrade 0
execute store result storage data tmp.resource.upgrade.lvl int 1 run scoreboard players get #emerald_regen_lvl upgrade
data modify storage data tmp.resource.upgrade.id set value "emerald"
data modify storage data tmp.resource.upgrade.x set value -0.5
data modify storage data tmp.resource.upgrade.y set value -61.5
data modify storage data tmp.resource.upgrade.z set value -34.5
return run function resource/upgrade/run with storage data tmp.resource.upgrade
