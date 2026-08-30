scoreboard players set #structure_apply_context var 1
execute if score #polar_vault_structure_pending var matches 0 run function polarnight/structure/vault/off
execute if score #polar_vault_structure_pending var matches 1 run function polarnight/structure/vault/on
scoreboard players set #structure_apply_context var 0
schedule function structure/polar_vault_release 1t replace
