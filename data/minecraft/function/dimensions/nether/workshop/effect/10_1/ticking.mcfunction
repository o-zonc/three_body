execute if score #disable_compressed_overworld_crystal_production var matches 1 run return 0
execute unless score #compressed_overworld_crystal material = #compressed_overworld_crystal material run scoreboard players set #compressed_overworld_crystal material 0
execute unless score #10_1_overworld_crystal_remainder var = #10_1_overworld_crystal_remainder var run scoreboard players set #10_1_overworld_crystal_remainder var 0

scoreboard players set #compressed_overworld_crystal_max tmp 1000000000
execute if score #compressed_overworld_crystal material matches ..-1 run scoreboard players set #compressed_overworld_crystal material 0
execute if score #compressed_overworld_crystal material >= #compressed_overworld_crystal_max tmp run return 0

execute store result score #10_1_overworld_compress_reward tmp run function compressor/overworld/value/reward_value
scoreboard players operation #overworld_compress_reward tmp = #10_1_overworld_compress_reward tmp
function dimensions/overworld/shop/crystal_shop/apply/overworld_compress_reward
scoreboard players operation #10_1_overworld_compress_reward tmp = #overworld_compress_reward tmp

scoreboard players operation #compressed_overworld_crystal_add_limit tmp = #compressed_overworld_crystal_max tmp
scoreboard players operation #compressed_overworld_crystal_add_limit tmp -= #compressed_overworld_crystal material
execute if score #compressed_overworld_crystal_add_limit tmp matches ..-1 run scoreboard players set #compressed_overworld_crystal_add_limit tmp 0
execute if score #10_1_overworld_compress_reward tmp > #compressed_overworld_crystal_add_limit tmp run scoreboard players operation #10_1_overworld_compress_reward tmp = #compressed_overworld_crystal_add_limit tmp
execute unless score #10_1_overworld_compress_reward tmp matches 1.. run return 0

scoreboard players operation #10_1_overworld_crystal_remainder var += #10_1_overworld_compress_reward tmp
scoreboard players set #ten_thousand tmp 10000
scoreboard players operation #10_1_overworld_crystal_gain tmp = #10_1_overworld_crystal_remainder var
scoreboard players operation #10_1_overworld_crystal_gain tmp /= #ten_thousand tmp
execute unless score #10_1_overworld_crystal_gain tmp matches 1.. run return 0

execute if score #10_1_overworld_crystal_gain tmp > #compressed_overworld_crystal_add_limit tmp run scoreboard players operation #10_1_overworld_crystal_gain tmp = #compressed_overworld_crystal_add_limit tmp
scoreboard players operation #compressed_overworld_crystal material += #10_1_overworld_crystal_gain tmp
scoreboard players operation #10_1_overworld_crystal_spent tmp = #10_1_overworld_crystal_gain tmp
scoreboard players operation #10_1_overworld_crystal_spent tmp *= #ten_thousand tmp
scoreboard players operation #10_1_overworld_crystal_remainder var -= #10_1_overworld_crystal_spent tmp
execute if score #compressed_overworld_crystal material > #compressed_overworld_crystal_max tmp run scoreboard players operation #compressed_overworld_crystal material = #compressed_overworld_crystal_max tmp
return 1
