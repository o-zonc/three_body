execute unless entity @s[advancements={0_overworld/22_heavy_ion_experiment=true}] run function resource/effect/failure
execute unless entity @s[advancements={0_overworld/22_heavy_ion_experiment=true}] run return 0
execute unless score #yellow_regen_lvl upgrade = #yellow_regen_lvl upgrade run scoreboard players set #yellow_regen_lvl upgrade 0
execute store result storage data tmp.resource.upgrade.lvl int 1 run scoreboard players get #yellow_regen_lvl upgrade
data modify storage data tmp.resource.upgrade.id set value "yellow"
data modify storage data tmp.resource.upgrade.x set value -34.5
data modify storage data tmp.resource.upgrade.y set value -61.5
data modify storage data tmp.resource.upgrade.z set value -1.5
return run function resource/upgrade/run with storage data tmp.resource.upgrade
