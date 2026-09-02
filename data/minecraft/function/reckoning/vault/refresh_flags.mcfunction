# 리액터 반응과 초과분 예치가 끝난 최종 보관량으로 보호 임계치를 다시 계산한다.
scoreboard players set #vault_shop_first tmp 0
scoreboard players set #vault_observatory tmp 0
scoreboard players set #vault_shop_second tmp 0
scoreboard players set #vault_dried_relic tmp 0
scoreboard players set #vault_alchemy tmp 0
scoreboard players set #vault_factory tmp 0
scoreboard players set #vault_accelerator tmp 0
scoreboard players set #vault_time_machine tmp 0
scoreboard players set #vault_stone_unlocks tmp 0
scoreboard players set #vault_metal_unlocks tmp 0
scoreboard players set #vault_substrate_unlocks tmp 0
scoreboard players set #vault_gem_unlocks tmp 0
scoreboard players set #vault_stick_progress tmp 0
scoreboard players set #vault_stone_resources tmp 0
scoreboard players set #vault_metal_resources tmp 0
scoreboard players set #vault_gem_resources tmp 0
scoreboard players set #vault_frozen_bridge tmp 0
scoreboard players set #vault_stronghold tmp 0
scoreboard players set #vault_elevator tmp 0
scoreboard players set #vault_tool tmp 0

execute if score #information_bank meta matches 20.. run scoreboard players set #vault_shop_first tmp 1
execute if score #information_bank meta matches 50.. run scoreboard players set #vault_observatory tmp 1
execute if score #information_bank meta matches 100.. run scoreboard players set #vault_shop_second tmp 1
execute if score #information_bank meta matches 150.. run scoreboard players set #vault_dried_relic tmp 1
execute if score #information_bank meta matches 250.. run scoreboard players set #vault_alchemy tmp 1
execute if score #information_bank meta matches 500.. run scoreboard players set #vault_factory tmp 1
execute if score #information_bank meta matches 1000.. run scoreboard players set #vault_accelerator tmp 1
execute if score #information_bank meta matches 2000.. run scoreboard players set #vault_time_machine tmp 1
execute if score #information_bank meta matches 120.. run scoreboard players set #vault_stone_unlocks tmp 1
execute if score #information_bank meta matches 200.. run scoreboard players set #vault_metal_unlocks tmp 1
execute if score #information_bank meta matches 400.. run scoreboard players set #vault_substrate_unlocks tmp 1
execute if score #information_bank meta matches 600.. run scoreboard players set #vault_gem_unlocks tmp 1
execute if score #time_bank meta matches 20.. run scoreboard players set #vault_stick_progress tmp 1
execute if score #time_bank meta matches 60.. run scoreboard players set #vault_stone_resources tmp 1
execute if score #time_bank meta matches 100.. run scoreboard players set #vault_metal_resources tmp 1
execute if score #time_bank meta matches 150.. run scoreboard players set #vault_gem_resources tmp 1
execute if score #time_bank meta matches 20.. run scoreboard players set #vault_frozen_bridge tmp 1
execute if score #time_bank meta matches 70.. run scoreboard players set #vault_stronghold tmp 1
execute if score #time_bank meta matches 100.. run scoreboard players set #vault_elevator tmp 1
execute if score #time_bank meta matches 500.. run scoreboard players set #vault_tool tmp 1
