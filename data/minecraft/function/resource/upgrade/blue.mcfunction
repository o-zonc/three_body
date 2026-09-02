execute unless score #color_resources_unlocked var matches 1 run function resource/effect/failure
execute unless score #color_resources_unlocked var matches 1 run return 0
execute unless score #blue_regen_lvl upgrade = #blue_regen_lvl upgrade run scoreboard players set #blue_regen_lvl upgrade 0
execute store result storage data tmp.resource.upgrade.lvl int 1 run scoreboard players get #blue_regen_lvl upgrade
data modify storage data tmp.resource.upgrade.id set value "blue"
data modify storage data tmp.resource.upgrade.x set value -34.5
data modify storage data tmp.resource.upgrade.y set value -61.5
data modify storage data tmp.resource.upgrade.z set value 2.5
return run function resource/upgrade/run with storage data tmp.resource.upgrade
