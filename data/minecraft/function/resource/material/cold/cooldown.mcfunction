execute store result score #lab_cooldown tmp run data get storage data const.resource.cold.regen[0].value
scoreboard players operation #regen_base_cooldown tmp = #lab_cooldown tmp
execute store result score #stronghold_regen_value tmp run function shop/alchemy/lab/cooldown/apply {rate:"elemental"}
function dried/stronghold/apply_overworld
return run scoreboard players get #stronghold_regen_value tmp
