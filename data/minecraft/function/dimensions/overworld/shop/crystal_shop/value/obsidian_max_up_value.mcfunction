# 현재 obsidian_max_up 상점 업그레이드 value 값을 반환

function dimensions/nether/obsidian_storage/effective_milestone
execute if score #obsidian_storage_effective_milestone tmp matches 400.. run return 10000

return run function dimensions/overworld/shop/crystal_shop/value/obsidian_max_up_base_value
