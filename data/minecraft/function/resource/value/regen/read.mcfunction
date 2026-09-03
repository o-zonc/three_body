# 매크로 인수: type, lvl. Returns the final product regeneration value.
$data modify storage data tmp.resource.value set from storage data const.resource.$(type).regen[{lvl:$(lvl)}]
execute store result score #stronghold_regen_value tmp run data get storage data tmp.resource.value.value
scoreboard players operation #regen_base_cooldown tmp = #stronghold_regen_value tmp
function dried/stronghold/apply_overworld
return run scoreboard players get #stronghold_regen_value tmp
