scoreboard players set #obsidian_storage_capacity_base tmp 2000
scoreboard players operation #obsidian_storage_capacity tmp = #obsidian_storage_capacity_base tmp
scoreboard players set #obsidian_storage_capacity_bonus tmp 0
scoreboard players set #nether_workshop_effects_disabled tmp 0
execute unless score #compressed_nether_crystal material = #compressed_nether_crystal material run scoreboard players set #compressed_nether_crystal material 0
execute if score #12_1 nether_workshop matches 1 unless score #nether_workshop_effects_disabled tmp matches 1 run scoreboard players operation #obsidian_storage_capacity_bonus tmp = #compressed_nether_crystal material
execute if score #obsidian_storage_capacity_bonus tmp matches ..-1 run scoreboard players set #obsidian_storage_capacity_bonus tmp 0
scoreboard players set #obsidian_storage_capacity_divisor tmp 1000
scoreboard players operation #obsidian_storage_capacity_bonus tmp /= #obsidian_storage_capacity_divisor tmp
execute if score #12_1 nether_workshop matches 1 unless score #nether_workshop_effects_disabled tmp matches 1 run scoreboard players operation #obsidian_storage_capacity tmp += #obsidian_storage_capacity_bonus tmp
scoreboard players set #obsidian_storage_capacity_limit tmp 10000
execute if score #obsidian_storage_capacity tmp > #obsidian_storage_capacity_limit tmp run scoreboard players operation #obsidian_storage_capacity tmp = #obsidian_storage_capacity_limit tmp