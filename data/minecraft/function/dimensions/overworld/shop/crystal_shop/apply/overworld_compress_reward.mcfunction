# Apply crystal shop overworld crystal reward multiplier to #overworld_compress_reward tmp.
# Split before multiplying so large obsidian rewards do not overflow scoreboard int range.

execute store result storage data tmp.crystal_shop.compressed_overworld_crystal_multiple.lvl int 1 run scoreboard players get #poss_effective_lvl tmp
function dimensions/overworld/shop/crystal_shop/value/compressed_overworld_crystal_multiple_data_by_lvl with storage data tmp.crystal_shop.compressed_overworld_crystal_multiple
data remove storage data tmp.crystal_shop.compressed_overworld_crystal_multiple.now
data modify storage data tmp.crystal_shop.compressed_overworld_crystal_multiple.now set from storage data tmp.crystal_shop.compressed_overworld_crystal_multiple.tmp
data remove storage data tmp.crystal_shop.compressed_overworld_crystal_multiple.lvl
data remove storage data tmp.crystal_shop.compressed_overworld_crystal_multiple.tmp
execute store result score #compressed_overworld_crystal_multiple_percent tmp run data get storage data tmp.crystal_shop.compressed_overworld_crystal_multiple.now.value 100
scoreboard players set #compressed_overworld_crystal_multiple_divisor tmp 100

scoreboard players operation #overworld_compress_reward_base tmp = #overworld_compress_reward tmp
scoreboard players operation #overworld_compress_reward_quotient tmp = #overworld_compress_reward_base tmp
scoreboard players operation #overworld_compress_reward_quotient tmp /= #compressed_overworld_crystal_multiple_divisor tmp
scoreboard players operation #overworld_compress_reward_remainder tmp = #overworld_compress_reward_base tmp
scoreboard players operation #overworld_compress_reward_remainder tmp %= #compressed_overworld_crystal_multiple_divisor tmp

scoreboard players operation #overworld_compress_reward_quotient tmp *= #compressed_overworld_crystal_multiple_percent tmp
scoreboard players operation #overworld_compress_reward_remainder tmp *= #compressed_overworld_crystal_multiple_percent tmp
scoreboard players operation #overworld_compress_reward_remainder tmp /= #compressed_overworld_crystal_multiple_divisor tmp

scoreboard players operation #overworld_compress_reward tmp = #overworld_compress_reward_quotient tmp
scoreboard players operation #overworld_compress_reward tmp += #overworld_compress_reward_remainder tmp