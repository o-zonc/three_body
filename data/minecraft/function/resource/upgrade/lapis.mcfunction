execute unless score #lapis unlock matches 1 run function resource/effect/failure
execute unless score #lapis unlock matches 1 run return 0
execute unless score #lapis_regen_lvl upgrade = #lapis_regen_lvl upgrade run scoreboard players set #lapis_regen_lvl upgrade 0
execute store result storage data tmp.resource.upgrade.lvl int 1 run scoreboard players get #lapis_regen_lvl upgrade
data modify storage data tmp.resource.upgrade.id set value "lapis"
data modify storage data tmp.resource.upgrade.x set value -2.5
data modify storage data tmp.resource.upgrade.y set value -61.5
data modify storage data tmp.resource.upgrade.z set value -34.5
return run function resource/upgrade/run with storage data tmp.resource.upgrade
